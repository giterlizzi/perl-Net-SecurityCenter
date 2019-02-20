# Net::SecurityCenter::API::PluginFamily
# NAME

Net::SecurityCenter::API::PluginFamily - Perl interface to Tenable.sc (SecurityCenter) Plugin Family REST API

# SYNOPSIS

    use Net::SecurityCenter::REST;
    use Net::SecurityCenter::API::PluginFamily;

    my $sc = Net::SecurityCenter::REST->new('sc.example.org');

    $sc->login('secman', 'password');

    my $api = Net::SecurityCenter::API::PluginFamily->new($sc);

    $sc->logout();

# DESCRIPTION

This module provides Perl scripts easy way to interface the Plugin Family REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

[https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)

# CONSTRUCTOR

## Net::SecurityCenter::API::PluginFamily->new ( $rest )

Create a new instance of **Net::SecurityCenter::API::PluginFamily** using [Net::SecurityCenter::REST](net-securitycenter-rest.md) class.

# METHODS

## list

Get list of Nessus Plugin Family.

## get

Get information about Nessus Plugin Family.

## list\_plugins

Get list of Nessus Plugins associated with Nessus Plugin Family.

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
