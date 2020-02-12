#!perl -T

use strict;
use warnings;
use Test::More;

require_ok('Net::SecurityCenter::Utils');

foreach my $id ( sort { $a <=> $b } keys %{$Net::SecurityCenter::Utils::NESSUS_SCANNER_STATUS} ) {
    my $name = $Net::SecurityCenter::Utils::NESSUS_SCANNER_STATUS->{$id};
    cmp_ok( Net::SecurityCenter::Utils::sc_decode_scanner_status($id), 'eq', $name, "$id - $name" );
}

cmp_ok( Net::SecurityCenter::Utils::trim(' trimmed '), 'eq', 'trimmed', 'Trimmed text' );

cmp_ok( Net::SecurityCenter::Utils::decamelize('SecurityCenter'), 'eq', 'security_center', 'Decamelize text' );

done_testing();
