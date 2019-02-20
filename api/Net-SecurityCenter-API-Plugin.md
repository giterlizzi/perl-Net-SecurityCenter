# Net::SecurityCenter::API::Plugin
# NAME

Net::SecurityCenter::API::Plugin - Perl interface to Tenable.sc (SecurityCenter) Plugin REST API

# SYNOPSIS

    use Net::SecurityCenter::REST;
    use Net::SecurityCenter::API::Plugin;

    my $sc = Net::SecurityCenter::REST->new('sc.example.org');

    $sc->login('secman', 'password');

    my $api = Net::SecurityCenter::API::Plugin->new($sc);

    $sc->logout();

# DESCRIPTION

This module provides Perl scripts easy way to interface the Plugin REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

- [https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)
- [https://docs.tenable.com/sccv/api/Plugin.html](https://docs.tenable.com/sccv/api/Plugin.html)

# CONSTRUCTOR

## Net::SecurityCenter::API::Plugin->new ( $rest )

Create a new instance of **Net::SecurityCenter::API::Plugin** using [Net::SecurityCenter::REST](Net-SecurityCenter-REST.md) class.

# METHODS

## list

Gets the list of all Nessus Plugins.

    # Get all Nessus Plugin associated to CVE-2017-1000251

    $sc->list(
        filter_field => 'xrefs:CVE',
        op           => 'like',
        value        => 'CVE-2017-1000251',
        fields       => 'id,name,description,exploitAvailable'
    );

    # or using 'filter' param facility ( field, operator, value )

    $sc->list(
        filter => [ 'xrefs:CVE', 'like', 'CVE-2017-1000251' ],
        fields => 'id,name,description,exploitAvailable'
    );

## get

Get information about Nessus plugin associated with plugin `id`.

    $sc->get(
        id     => 19506,
        fields => [ 'description', 'name' ]
    );

## download

Download plugin source (NASL) associated with plugin `id`.

    my $nasl_source = $plugin->download( id => 19506 );

    # or save the plugin source in file

    $plugin->download( id => 19506, filename => '/tmp/19506.nasl' );

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
