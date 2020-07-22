# Net::SecurityCenter::API::DeviceInfo
# NAME

Net::SecurityCenter::API::DeviceInfo - Perl interface to Tenable.sc (SecurityCenter) Device Information REST API

# SYNOPSIS

    use Net::SecurityCenter::REST;
    use Net::SecurityCenter::API::DeviceInfo;

    my $sc = Net::SecurityCenter::REST->new('sc.example.org');

    $sc->login('secman', 'password');

    my $api = Net::SecurityCenter::API::DeviceInfo->new($sc);

    $sc->logout();

# DESCRIPTION

This module provides Perl scripts easy way to interface the Device Information REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

[https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)

# CONSTRUCTOR

## Net::SecurityCenter::API::DeviceInfo->new ( $client )

Create a new instance of **Net::SecurityCenter::API::DeviceInfo** using [Net::SecurityCenter::REST](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AREST) class.

# METHODS

## get\_info

Gets the device information from the current user.

**NOTE**: This will return device information for the first repository. To specify a particular repository, see
[Net::SecurityCenter::API::Repository](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3ARepository)::get\_device\_info.

    my $scans = $sc->get_info(
        ip => '192.168.8.2',
        fields => 'os,dnsName,severityCritical,severityHigh'
    );

Params:

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
