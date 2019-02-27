[![Release](https://img.shields.io/github/release/LotarProject/perl-Net-SecurityCenter.svg)](https://github.com/LotarProject/perl-Net-SecurityCenter/releases) [![Build Status](https://travis-ci.org/LotarProject/perl-Net-SecurityCenter.svg)](https://travis-ci.org/LotarProject/perl-Net-SecurityCenter) [![License](https://img.shields.io/github/license/LotarProject/perl-Net-SecurityCenter.svg)](https://github.com/LotarProject/perl-Net-SecurityCenter) [![Starts](https://img.shields.io/github/stars/LotarProject/perl-Net-SecurityCenter.svg)](https://github.com/LotarProject/perl-Net-SecurityCenter) [![Forks](https://img.shields.io/github/forks/LotarProject/perl-Net-SecurityCenter.svg)](https://github.com/LotarProject/perl-Net-SecurityCenter) [![Issues](https://img.shields.io/github/issues/LotarProject/perl-Net-SecurityCenter.svg)](https://github.com/LotarProject/perl-Net-SecurityCenter/issues)

# Net::SecurityCenter

Perl interface to *Tenable.sc* (SecurityCenter) REST API

# API

 - [Net::SecurityCenter](api/Net-SecurityCenter.md)

 - [Net::SecurityCenter::API](api/Net-SecurityCenter-API.md)
   - [Net::SecurityCenter::API::Analisys](api/Net-SecurityCenter-API-Analysis.md)
   - [Net::SecurityCenter::API::Credential](api/Net-SecurityCenter-API-Credential.md)
   - [Net::SecurityCenter::API::Feed](api/Net-SecurityCenter-API-Feed.md)
   - [Net::SecurityCenter::API::File](api/Net-SecurityCenter-API-File.md)
   - [Net::SecurityCenter::API::Plugin](api/Net-SecurityCenter-API-Plugin.md)
   - [Net::SecurityCenter::API::PluginFamily](api/Net-SecurityCenter-API-PluginFamily.md)
   - [Net::SecurityCenter::API::Policy](api/Net-SecurityCenter-API-Policy.md)
   - [Net::SecurityCenter::API::Report](api/Net-SecurityCenter-API-Report.md)
   - [Net::SecurityCenter::API::Repository](api/Net-SecurityCenter-API-Repository.md)
   - [Net::SecurityCenter::API::Scan](api/Net-SecurityCenter-API-Scan.md)
   - [Net::SecurityCenter::API::Scanner](api/Net-SecurityCenter-API-Scanner.md)
   - [Net::SecurityCenter::API::ScanResult](api/Net-SecurityCenter-API-ScanResult.md)
   - [Net::SecurityCenter::API::System](api/Net-SecurityCenter-API-System.md)
   - [Net::SecurityCenter::API::User](api/Net-SecurityCenter-API-User.md)
   - [Net::SecurityCenter::API::Zone](api/Net-SecurityCenter-API-Zone.md)
 - [Net::SecurityCenter::Utils](api/Net-SecurityCenter-Utils.md)
 - [Net::SecurityCenter::REST](api/Net-SecurityCenter-REST.md)


## Example

```.pl
    use Net::SecurityCenter;
    my $sc = Net::SecurityCenter('sc.example.org');

    $sc->login('secman', 'password');

    my $running_scans = $sc->scan_result->list_running;

    if ($sc->scan_result->get_status( id => 1337 ) eq 'completed') {
        $sc->scan_result->download( id       => 1337,
                                    filename => '/tmp/1337.nessus' );

    }

    $sc->logout();
```

## Read more

 - [API Reference](api.md)
 - [Install](install.md)
 - [ChangeLog](release.md)
 - [Contributing](contributing.md)
 - [Examples](examples.md)

## Install

To install `Net::SecurityCenter` distribution, run the following commands:

    perl Makefile.PL
    make
    make test
    make install

## Copyright

 - Copyright 2018-2019 © Giuseppe Di Terlizzi
 - Nessus®, Tenable.sc® and SecurityCenter® is a Registered Trademark of Tenable®, Inc.
