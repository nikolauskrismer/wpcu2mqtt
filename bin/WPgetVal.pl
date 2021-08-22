#!/usr/bin/perl
#
# Script to read one specific values from a Waterkotte WPCU.C
#
# (c) by Matthias Fechner <idefix@fechner.net>
#
use strict;
use Data::Dumper;
use WPMemoryMapping;
use WPgeneralFunctions;

use vars qw(%wp_memory %dataTypes);

if ( $#ARGV != 0 ) { die "Usage: $0 <attribute>\n"; }
my $attr = $ARGV[0];

print($parameterKey.":\n");
print("  - executing: ".$prog."\n");
my $value = &readParameter(\%wp_memory, \%dataTypes, $attr);
print("  - result: ".$value.$wp_memory{$parameterKey}{unit}."\n");
