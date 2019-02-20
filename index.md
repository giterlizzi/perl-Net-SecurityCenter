[![Release](https://img.shields.io/github/release/LotarProject/perl-Net-SecurityCenter.svg)](https://github.com/LotarProject/perl-Net-SecurityCenter/releases) [![Build Status](https://travis-ci.org/LotarProject/perl-Net-SecurityCenter.svg)](https://travis-ci.org/LotarProject/perl-Net-SecurityCenter) [![License](https://img.shields.io/github/license/LotarProject/perl-Net-SecurityCenter.svg)](https://github.com/LotarProject/perl-Net-SecurityCenter) [![Starts](https://img.shields.io/github/stars/LotarProject/perl-Net-SecurityCenter.svg)](https://github.com/LotarProject/perl-Net-SecurityCenter) [![Forks](https://img.shields.io/github/forks/LotarProject/perl-Net-SecurityCenter.svg)](https://github.com/LotarProject/perl-Net-SecurityCenter) [![Issues](https://img.shields.io/github/issues/LotarProject/perl-Net-SecurityCenter.svg)](https://github.com/LotarProject/perl-Net-SecurityCenter/issues)

# Net::SecurityCenter

Perl interface to *Tenable.sc* (SecurityCenter) REST API

# API

 - [Net::SecurityCenter](api/net-securitycenter.md)

 - [Net::SecurityCenter::API](api/net-securitycenter-api.md)
   - [Net::SecurityCenter::API::Analisys](api/net-securitycenter-api-analysis.md)
   - [Net::SecurityCenter::API::Credential](api/net-securitycenter-api-credential.md)
   - [Net::SecurityCenter::API::Feed](api/net-securitycenter-api-feed.md)
   - [Net::SecurityCenter::API::File](api/net-securitycenter-api-file.md)
   - [Net::SecurityCenter::API::Plugin](api/net-securitycenter-api-plugin.md)
   - [Net::SecurityCenter::API::PluginFamily](api/net-securitycenter-api-pluginfamily.md)
   - [Net::SecurityCenter::API::Policy](api/net-securitycenter-api-policy.md)
   - [Net::SecurityCenter::API::Report](api/net-securitycenter-api-report.md)
   - [Net::SecurityCenter::API::Repository](api/net-securitycenter-api-repository.md)
   - [Net::SecurityCenter::API::Scan](api/net-securitycenter-api-scan.md)
   - [Net::SecurityCenter::API::Scanner](api/net-securitycenter-api-scanner.md)
   - [Net::SecurityCenter::API::ScanResult](api/net-securitycenter-api-scanresult.md)
   - [Net::SecurityCenter::API::System](api/net-securitycenter-api-system.md)
   - [Net::SecurityCenter::API::User](api/net-securitycenter-api-user.md)
   - [Net::SecurityCenter::API::Zone](api/net-securitycenter-api-zone.md)
 - [Net::SecurityCenter::Utils](api/net-securitycenter-utils.md)
 - [Net::SecurityCenter::REST](api/net-securitycenter-rest.md)


## Example

```.pl
    use Net::SecurityCenter;
    my $sc = Net::SecurityCenter('sc.example.org');

    $sc->login('secman', 'password');

    my $running_scans = $sc->scan_result->list_running;

    if ($sc->scan_result->get_status(1337) eq 'completed') {
        $sc->scan_result->download_nessus_scan(1337, '/tmp/1337.nessus');
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
