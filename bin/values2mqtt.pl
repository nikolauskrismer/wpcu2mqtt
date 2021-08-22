#!/usr/bin/perl
#
# Script all values from a Waterkotte WPCU.C
#
# (c) by Matthias Fechner <idefix@fechner.net>
#
use strict;
use Data::Dumper;
use Config::General;
use Net::MQTT::Simple;
use WPgeneralFunctions;

use vars qw(%wp_memory %dataTypes %config);

my $conf = new Config::General("config");
my %config = $conf->getall;

my $mqtt_server = $config{'server'};
my $mqtt_port = $config{'port'};
my $mqtt_username = $config{'user'};
my $mqtt_password = $config{'password'};
my $mqtt_topic = $config{'topic'};

my $mqtt = Net::MQTT::Simple->new($mqtt_server . ":" . $mqtt_port);
# Depending if authentication is required, login to the broker
if ($mqtt_username and $mqtt_password) {
    $mqtt->login($mqtt_username, $mqtt_password);
}

my $prog;
my %values;
my $value;
foreach ( keys %wp_memory ) {
	$value = &readParameter( \%wp_memory, \%dataTypes, $_ );
	$values{$_} = $value

	$mqtt->publish($mqtt_topic . "/" . $_, $value);
	# or:
	# $mqtt->retain($mqtt_topic . "/" . $_, $value);
}

$mqtt->disconnect();
