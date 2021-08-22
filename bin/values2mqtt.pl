#!/usr/bin/perl

use strict;
use Data::Dumper;
use Config::General;
use Net::MQTT::Simple;
use WPMemoryMapping;
use WPgeneralFunctions;

use vars qw(%wp_memory %dataTypes %config);

print("Querying all params and writing them to mqtt\n");
my $conf = new Config::General("config");
my %config = $conf->getall;

my $mqtt_server = $config{'server'};
my $mqtt_port = $config{'port'};
my $mqtt_username = $config{'user'};
my $mqtt_password = $config{'password'};
my $mqtt_topic = $config{'topic'};
my $mqtt_target = $mqtt_server . ":" . $mqtt_port;
print(" - using server " . $mqtt_target . "\n");

# Allow unencrypted connection with credentials
$ENV{MQTT_SIMPLE_ALLOW_INSECURE_LOGIN} = 1;

my $mqtt = Net::MQTT::Simple->new($mqtt_target);
# Depending if authentication is required, login to the broker
if ($mqtt_username and $mqtt_password) {
    print(" - using mqtt login\n");
    $mqtt->login($mqtt_username, $mqtt_password);
}

my $prog;
my %values;
foreach ( keys %wp_memory ) {
	print("Querying key: " . $_);
	$values{$_} = &readParameter( \%wp_memory, \%dataTypes, $_ );
	$mqtt->publish($mqtt_topic . "/" . $_, $values{$_});
	# or:
	# $mqtt->retain($mqtt_topic . "/" . $_, $values{$_});
}

$mqtt->disconnect();
