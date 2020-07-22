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

## Net::SecurityCenter::API::ScanResult->new ( $client )

Create a new instance of **Net::SecurityCenter::API::ScanResult** using [Net::SecurityCenter::REST](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AREST) class.

# METHODS

## download

Download the Nessus (XML) scan result.

    my $nessus_scan = $sc->download( id => 1337 );

    $sc->download( id       => 1337,
                   filename => '/var/nessus/scans/1337.nessus' );

Params:

- `id` : Scan result ID
- `filename` : File

## list

Get list of scans results (completed, running, etc.).

    my $scans = $sc->list(
        start_date => '2020-01-01',
        end_date => '2020-02-01',
        fields => 'id,name,description,startTime,finishTime',
    );


    # Using Time::Piece

    use Time::Piece;
    use Time::Seconds;

    my $t = Time::Piece->new;
    $t -= ONE_DAY; # Yesterday

    my $scans = $sc->list(
        start_date => $t,
    );

Params:

- `fields` : List of fields
- `start_date` : Start date of scan in ISO 8601 format (YYYY-MM-DD, YYYY-MM-DD HH:MM:SS or YYYY-MM-DDTHH:MM:SS) or [Time::Piece](https://metacpan.org/pod/Time%3A%3APiece) object
- `end_date` : End date of scan (see `start_date`)
- `start_time` : Start date in epoch
- `end_date` : End date in epoch 
- `filter` : Filter (`usable`, `manageable`, `running` or `completed`)

Allowed Fields:

- `id` \*
- `name` \*\*
- `description` \*\*
- `status` \*\*
- `initiator`
- `owner`
- `ownerGroup`
- `repository`
- `scan`
- `job`
- `details`
- `importStatus`
- `importStart`
- `importFinish`
- `importDuration`
- `downloadAvailable`
- `downloadFormat`
- `dataFormat`
- `resultType`
- `resultSource`
- `running`
- `errorDetails`
- `importErrorDetails`
- `totalIPs`
- `scannedIPs`
- `startTime`
- `finishTime`
- `scanDuration`
- `completedIPs`
- `completedChecks`
- `totalChecks`

(\*) always comes back
(\*\*) comes back if fields list not specified

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
- `fields` : Fields (see `list`)

## progress

Get scan progress associated with `id`.

    print 'Scan progress: ' . $sc->progress( id => 1337 ) . '%';

Params:

- `id` : Scan result ID

## status

Get scan status associated with `id`.

    print 'Scan status: ' . $sc->status( id => 1337 );

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

## import

Imports the Scan Result associated with the uploaded file, identified by `filename`.

    $sc->import( filename => '/tmp/report.nessus', repository => 1 );

Params:

- `filename` : Nessus report filename (_required_)
- `repository` : Repository ID (_required_)
- `scan_vhost` : Scan VirtualHost
- `classify_mitigated_age` : Classify Mitigated Age
- `dhcp_tracking`  DHCP Tracking

## reimport

Re-imports the Scan Result associated with `id`.

    $sc->reimport( id => 1337 );

Params:

- `id` : Scan result ID

## stop

Stop a scan associated with `id`.

    if ($sc->get_status( id => 1337 ) eq 'running') {
        $sc->stop( id => 1337 );
    }

Params:

- `id` : Scan result ID
- `type` : Stop type (values: `import`)

## email

Emails the Scan Result associated with `id`.

    $sc->email( id => 1337, email => 'john@example.org' );

Params:

- `id` : Scan result ID
- `email` : Email address

# SUPPORT

## Bugs / Feature Requests

Please report any bugs or feature requests through the issue tracker
at [https://github.com/giterlizzi/perl-Net-SecurityCenter/issues](https://github.com/giterlizzi/perl-Net-SecurityCenter/issues).
You will be notified automatically of any progress on your issue.

## Source Code

This is open source software.  The code repository is available for
public review and contribution under the terms of the license.

[https://github.com/giterlizzi/perl-Net-SecurityCenter](https://github.com/giterlizzi/perl-Net-SecurityCenter)

    git clone https://github.com/giterlizzi/perl-Net-SecurityCenter.git

# AUTHOR

- Giuseppe Di Terlizzi <gdt@cpan.org>

# LICENSE AND COPYRIGHT

This software is copyright (c) 2018-2020 by Giuseppe Di Terlizzi.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
