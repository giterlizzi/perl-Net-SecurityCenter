# Net::SecurityCenter::API::Repository
# NAME

Net::SecurityCenter::API::Repository - Perl interface to Tenable.sc (SecurityCenter) Repository REST API

# SYNOPSIS

    use Net::SecurityCenter::REST;
    use Net::SecurityCenter::API::Repository;

    my $sc = Net::SecurityCenter::REST->new('sc.example.org');

    $sc->login('secman', 'password');

    my $api = Net::SecurityCenter::API::Repository->new($sc);

    $sc->logout();

# DESCRIPTION

This module provides Perl scripts easy way to interface the Repository REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

[https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)

# CONSTRUCTOR

## Net::SecurityCenter::API::Repository->new ( $client )

Create a new instance of **Net::SecurityCenter::API::Repository** using [Net::SecurityCenter::REST](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AREST) class.

# METHODS

## list

Get the list of repositories.

Params:

- `type` : Repository type ('all', 'local', 'remote', 'offline')
- `fields` : List of fields

## get

Get the repository associated with `id`.

Params:

- `id` : Repository ID
- `fields` : List of fields

## get\_device\_info

Gets the device information for the Repository associated with `id`

Params:

- `id` : Repository ID
- `uuid` : Device UUID
- `ip` : IP Address
- `dns_name` : DNS Name
- `fields` : List of fields

Allowed Fields:

- `ip` \*
- `uuid` \*
- `repositoryID` \*
- `repositories`
- `repository`
- `score`
- `total`
- `severityInfo`
- `severityLow`
- `severityMedium`
- `severityHigh`
- `severityCritical`
- `macAddress`
- `policyName`
- `pluginSet`
- `netbiosName`
- `dnsName`
- `osCPE`
- `biosGUID`
- `tpmID`
- `mcafeeGUID`
- `lastAuthRun`
- `lastUnauthRun`
- `severityAll`
- `os`
- `hasPassive`
- `hasCompliance`
- `lastScan`
- `links`

(\*) always comes back

## get\_ip\_info

**NOTE**: This method has been DEPRECATED as of SecurityCenter 5.7.0
(see `get_device_info` method or [Net::SecurityCenter::API::DeviceInfo](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3ADeviceInfo)).

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

This software is copyright (c) 2018-2021 by Giuseppe Di Terlizzi.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
