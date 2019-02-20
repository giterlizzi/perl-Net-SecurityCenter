[![Release](https://img.shields.io/github/release/LotarProject/perl-Net-SecurityCenter.svg)](https://github.com/LotarProject/perl-Net-SecurityCenter/releases) [![Build Status](https://travis-ci.org/LotarProject/perl-Net-SecurityCenter.svg)](https://travis-ci.org/LotarProject/perl-Net-SecurityCenter) [![License](https://img.shields.io/github/license/LotarProject/perl-Net-SecurityCenter.svg)](https://github.com/LotarProject/perl-Net-SecurityCenter) [![Starts](https://img.shields.io/github/stars/LotarProject/perl-Net-SecurityCenter.svg)](https://github.com/LotarProject/perl-Net-SecurityCenter) [![Forks](https://img.shields.io/github/forks/LotarProject/perl-Net-SecurityCenter.svg)](https://github.com/LotarProject/perl-Net-SecurityCenter) [![Issues](https://img.shields.io/github/issues/LotarProject/perl-Net-SecurityCenter.svg)](https://github.com/LotarProject/perl-Net-SecurityCenter/issues)

# Net::SecurityCenter - Perl interface to Tenable SecurityCenter REST API

## Synopsis

```.pl
    use Net::SecurityCenter;
    my $sc = Net::SecurityCenter('sc.example.org');

    $sc->login('secman', 'password');

    my $running_scans = $sc->get_running_scan;

    if ($sc->get_scan_status(1337) eq 'completed') {
        $sc->download_nessus_scan(1337, '/var/lib/nessus/scans/1337.nessus');
    }

    $sc->logout();
```

## Install

To install `Net::SecurityCenter` module, run the following commands:

    perl Makefile.PL
    make
    make test
    make install

## Copyright

 - Copyright 2018-2019 © Giuseppe Di Terlizzi
 - Nessus® and SecurityCenter® is a Registered Trademark of Tenable®, Inc.
