[![Release](https://img.shields.io/github/release/giterlizzi/perl-Net-SecurityCenter.svg)](https://github.com/giterlizzi/perl-Net-SecurityCenter/releases) [![Build Status](https://travis-ci.org/giterlizzi/perl-Net-SecurityCenter.svg)](https://travis-ci.org/giterlizzi/perl-Net-SecurityCenter) [![License](https://img.shields.io/github/license/giterlizzi/perl-Net-SecurityCenter.svg)](https://github.com/giterlizzi/perl-Net-SecurityCenter) [![Starts](https://img.shields.io/github/stars/giterlizzi/perl-Net-SecurityCenter.svg)](https://github.com/giterlizzi/perl-Net-SecurityCenter) [![Forks](https://img.shields.io/github/forks/giterlizzi/perl-Net-SecurityCenter.svg)](https://github.com/giterlizzi/perl-Net-SecurityCenter) [![Issues](https://img.shields.io/github/issues/giterlizzi/perl-Net-SecurityCenter.svg)](https://github.com/giterlizzi/perl-Net-SecurityCenter/issues)

# Net::SecurityCenter

Perl interface to *Tenable.sc* (SecurityCenter) REST API

## Base

 - [Net::SecurityCenter](api/Net-SecurityCenter.md)
 - [Net::SecurityCenter::Base](api/Net-SecurityCenter-Base.md)
 - [Net::SecurityCenter::Error](api/Net-SecurityCenter-Error.md)
 - [Net::SecurityCenter::Utils](api/Net-SecurityCenter-Utils.md)
 - [Net::SecurityCenter::REST](api/Net-SecurityCenter-REST.md)

## API

  - [Net::SecurityCenter::API::Analisys](api/Net-SecurityCenter-API-Analysis.md)
  - [Net::SecurityCenter::API::Credential](api/Net-SecurityCenter-API-Credential.md)
  - [Net::SecurityCenter::API::DeviceInfo](api/Net-SecurityCenter-API-DeviceInfo.md)
  - [Net::SecurityCenter::API::Feed](api/Net-SecurityCenter-API-Feed.md)
  - [Net::SecurityCenter::API::File](api/Net-SecurityCenter-API-File.md)
  - [Net::SecurityCenter::API::Notification](api/Net-SecurityCenter-API-Notification.md)
  - [Net::SecurityCenter::API::Plugin](api/Net-SecurityCenter-API-Plugin.md)
  - [Net::SecurityCenter::API::PluginFamily](api/Net-SecurityCenter-API-PluginFamily.md)
  - [Net::SecurityCenter::API::Policy](api/Net-SecurityCenter-API-Policy.md)
  - [Net::SecurityCenter::API::Report](api/Net-SecurityCenter-API-Report.md)
  - [Net::SecurityCenter::API::Repository](api/Net-SecurityCenter-API-Repository.md)
  - [Net::SecurityCenter::API::Scan](api/Net-SecurityCenter-API-Scan.md)
  - [Net::SecurityCenter::API::Scanner](api/Net-SecurityCenter-API-Scanner.md)
  - [Net::SecurityCenter::API::ScanResult](api/Net-SecurityCenter-API-ScanResult.md)
  - [Net::SecurityCenter::API::System](api/Net-SecurityCenter-API-System.md)
  - [Net::SecurityCenter::API::Status](api/Net-SecurityCenter-API-Status.md)
  - [Net::SecurityCenter::API::User](api/Net-SecurityCenter-API-User.md)
  - [Net::SecurityCenter::API::Zone](api/Net-SecurityCenter-API-Zone.md)

## App

  - [App::TenableSC](api/App-TenableSC.md)
  - [App::TenableSC::Logger](api/App-TenableSC-Logger.md)
  - [App::TenableSC::Utils](api/App-TenableSC-Utils.md)

### CLI applications

#### sc-api

Tenable.sc API command line interface (``sc-api``).

  - [App::TenableSC::Utils](api/App-TenableSC-API.md)



## Example

```.pl
    use strict;
    use warnings;
    use Net::SecurityCenter;

    my $sc = Net::SecurityCenter('sc.example.org') or die "Error: $@";

    $sc->login( username => 'secman', password => 's3cr3t' );

    if ($sc->error) {
      print "Failed login: " . $sc->error;
      exit 0;
    }

    my $running_scans = $sc->scan_result->list_running;

    if ($sc->scan_result->status( id => 1337 ) eq 'completed') {
        $sc->scan_result->download( id       => 1337,
                                    filename => '/tmp/1337.nessus' );

    }

    $sc->logout();
```

## Read more

 - [Install](install.md)
 - [ChangeLog](changes.md)
 - [Contributing](contributing.md)
 - [Examples](examples.md)

## Install

To install `Net::SecurityCenter` distribution, run the following commands:

    cpanm --installdeps .
    perl Makefile.PL
    make
    make test
    make install

## Copyright

 - Copyright 2018-2020 © Giuseppe Di Terlizzi
 - Nessus®, Tenable.sc® and SecurityCenter® is a Registered Trademark of Tenable®, Inc.
