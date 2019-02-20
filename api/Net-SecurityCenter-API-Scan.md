# Net::SecurityCenter::API::Scan
# NAME

Net::SecurityCenter::API::Scan - Perl interface to Tenable.sc (SecurityCenter) Scan REST API

# SYNOPSIS

    use Net::SecurityCenter::REST;
    use Net::SecurityCenter::API::Scan;

    my $sc = Net::SecurityCenter::REST->new('sc.example.org');

    $sc->login('secman', 'password');

    my $api = Net::SecurityCenter::API::Scan->new($sc);

    my $scan_id = $api->add(
        name        => 'Test API scan',
        target      => [ '192.168.1.2', '192.168.1.3' ],
        description => 'Test from Net::SecurityCenter Perl module',
        policy      => 1,
        repository  => 2,
        zone        => 1
    );

    $sc->logout();

# DESCRIPTION

This module provides Perl scripts easy way to interface the Scan REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

[https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)

# CONSTRUCTOR

## Net::SecurityCenter::API::Scan->new ( $rest )

Create a new instance of **Net::SecurityCenter::API::Scan** using [Net::SecurityCenter::REST](Net-SecurityCenter-REST.md) class.

# METHODS

## list

Get list of scans.

Params:

- `fields` : List of fields
- `filter` : Filter (`usable`, `manageable`)

## add

Create a new scan on Tenable.sc (SecurityCenter) and return the `scan_id` (or `scan_result_id`
for `schedule=now` argument).

    my $scan_id = $scan->add(
        name        => 'Test API scan',
        target      => [ '192.168.1.2', '192.168.1.3' ],
        description => 'Test from Net::SecurityCenter Perl module',
        policy      => 1,
        repository  => 2,
        zone        => 1
    );

Params:

- `name` : Name of scan (_required_)
- `description` : Description of scan
- `type` : Type of scan
    - `policy`: Create a policy scan (need `policy`)
    - `plugin`: Create a plugin scan (need `plugin`)
- `targets` : Array of targets (IP, subnet or ranges)
- `assets` : Array of Asset ID
- `zone` : Scan Zone ID (default: `0`)
- `policy` : Policy ID for `type=policy` scan type
- `plugin` : Plugin ID for `type=plugin` scan type
- `repository` : Repository ID
- `credentials` : Array of credential ID (default: `[]`)
- `max_time` : Max scan time (default: `3600`)
- `email_on_launch` : Send the email on scan launch (default: `0`)
- `email_on_finish` : Send the email on scan finish (default: `0`)
- `dhcp_tracking` : Enable DHCP tracking (default: `0`)
- `rollover` : Rollover type on `timeout` action

    Allowed values:

    - `nextDay`
    - `template` (default)

- `timeout` : Timeout action
    - `discard`
    - `import` (default)
    - `rollover`
- `reports` : Reports hash ( id => type )
- `schedule` : Schedule type
    - `dependent`
    - `ical`
    - `never`
    - `rollover`
    - `template`
    - `now` (Execute the scan on Nessus scanner and return the scan result `id`)

## launch

Launches the scan associated with `id` to Nessus scanner.

Params:

- `id` : Scan ID
- `diagnostic_target` : Valid IP/hostname
- `diagnostic_password` : Diagnostic password

## execute

This is a facility for run immediatly a scan in Tenable.sc (SecurityCenter)
using Nessus Scanner without create a scan.

**NOTE**: This method is an alias for `$sc->add ( schedule => 'now', ... )`.

See `$sc->add_scan` paragraph for information about the allowed `params`.

## delete

Delete the scan associated with `id`.

Params:

- `id` : Scan ID

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
