# Net::SecurityCenter::API::ScanResult
# NAME

Net::SecurityCenter::API::ScanResult - Perl interface to Tenable.sc (SecurityCenter) Scan Result REST API

# SYNOPSIS

    use Net::SecurityCenter::REST;
    use Net::SecurityCenter::API::ScanResult;

    my $sc = Net::SecurityCenter::REST->new('sc.example.org');

    $sc->login('secman', 'password');

    my $api = Net::SecurityCenter::API::ScanResult->new($sc);

    $sc->logout();

# DESCRIPTION

This module provides Perl scripts easy way to interface the Scan Result REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

[https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)

# CONSTRUCTOR

## Net::SecurityCenter::API::ScanResult->new ( $rest )

Create a new instance of **Net::SecurityCenter::API::ScanResult** using [Net::SecurityCenter::REST](net-securitycenter-rest.md) class.

# METHODS

## download\_nessus\_scan

Download the Nessus (XML) scan result.

    my $nessus_scan = $sc->download_nessus_scan( id => 1337 );

    $sc->download_nessus_scan( id       => 1337,
                               filename => '/var/nessus/scans/1337.nessus' );

Params:

- `id` : Scan result ID
- `filename` : File

## list

Get list of scans results (completed, running, etc.).

Params:

- `fields` : List of fields
- `filter` : Filter (`usable`, `manageable`, `running` or `completed`)

## list\_running

Get list of running scans.

Params:

- `fields` : Fields

## list\_completed

Get list of completed scans.

Params:

- `fields` : Fields

## get

Gets the scan information associated with `id`.

Params:

- `id` : Scan result ID
- `fields` : Fields

## get\_progress

Get scan progress associated with `id`.

    print 'Scan progress: ' . $sc->get_scan_progress( id => 1337 ) . '%';

Params:

- `id` : Scan result ID

## get\_status

Get scan status associated with `id`.

    print 'Scan status: ' . $sc->get_status( id => 1337 );

Params:

- `id` : Scan result ID

## pause

Pause a scan associated with `id`.

    if ($sc->get_status( id => 1337 ) eq 'running') {
        $sc->pause( id => 1337 );
    }

Params:

- `id` : Scan result ID

## resume

Resume a paused scan associated with `id`.

    if ($sc->get_status( id => 1337 ) eq 'paused') {
        $sc->resume( id => 1337 );
    }

Params:

- `id` : Scan result ID

## stop

Stop a scan associated with `id`.

    if ($sc->get_status( id => 1337 ) eq 'running') {
        $sc->stop( id => 1337 );
    }

Params:

- `id` : Scan result ID

# SUPPORT

## Bugs / Feature Requests

Please report any bugs or feature requests through the issue tracker
at [https://github.com/LotarProject/perl-Net-SecurityCenter/issues](https://github.com/LotarProject/perl-Net-SecurityCenter/issues).
You will be notified automatically of any progress on your issue.

## Source Code

This is open source software.  The code repository is available for
public review and contribution under the terms of the license.

[https://github.com/LotarProject/perl-Net-SecurityCenter](https://github.com/LotarProject/perl-Net-SecurityCenter)

    git clone https://github.com/LotarProject/perl-Net-SecurityCenter.git

# AUTHOR

- Giuseppe Di Terlizzi <gdt@cpan.org>

# LICENSE AND COPYRIGHT

This software is copyright (c) 2018-2019 by Giuseppe Di Terlizzi.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
