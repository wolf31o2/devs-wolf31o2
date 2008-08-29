#!/usr/bin/perl

my $filter = '-Ov -Oe -Oq';

my $high_oid = '.1.3.6.1.4.1.789.1.17.8.0'; # iscsiHighReadBytes.0
my $low_oid = '.1.3.6.1.4.1.789.1.17.7.0'; # iscsiLowReadBytes.0
my $high_reads = `snmpget -v1 -c nagios $filter $ARGV[0] $high_oid`;
my $low_reads = `snmpget -v1 -c nagios $filter $ARGV[0] $low_oid`;

$high_reads = $high_reads << 32;
$total_reads= $high_reads | $low_reads;

print $total_reads."\n";
