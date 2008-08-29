#!/usr/bin/perl

my $filter = '-Ov -Oe -Oq';

my $high_oid = '.1.3.6.1.4.1.789.1.17.10.0'; # iscsiHighWriteBytes.0
my $low_oid = '.1.3.6.1.4.1.789.1.17.9.0'; # iscsiLowWriteBytes.0
my $high_writes = `snmpget -v1 -c nagios $filter $ARGV[0] $high_oid`;
my $low_writes = `snmpget -v1 -c nagios $filter $ARGV[0] $low_oid`;

$high_writes  = $high_writes << 32;
$total_writes = $high_writes | $low_writes;

print $total_writes."\n";
