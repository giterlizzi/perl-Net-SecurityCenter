# Net::SecurityCenter::API::System
# NAME

Net::SecurityCenter::API::System - Perl interface to Tenable.sc (SecurityCenter) System REST API

# SYNOPSIS

    use Net::SecurityCenter::REST;
    use Net::SecurityCenter::API::System;

    my $sc = Net::SecurityCenter::REST->new('sc.example.org');

    $sc->login('secman', 'password');

    my $api = Net::SecurityCenter::API::System->new($sc);

    $sc->logout();

# DESCRIPTION

This module provides Perl scripts easy way to interface the System REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

[https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)

# CONSTRUCTOR

## Net::SecurityCenter::API::System->new ( $rest )

Create a new instance of **Net::SecurityCenter::API::System** using [Net::SecurityCenter::REST](Net-SecurityCenter-REST.md) class.

# METHODS

## get\_status

Gets a collection of status information, including license.

## get\_info

Gets the system initialization information.

## get\_diagnostics\_info

Gets the system diagnostics information.

## generate\_diagnostics\_app\_status

Starts an on-demand, diagnostics analysis for the System that can be downloaded after its job completes.

## generate\_diagnostics\_file

Starts an on-demand, diagnostics analysis for the System that can be downloaded after its job completes.

## download\_diagnostics

Downloads the system diagnostics, debug file that was last generated.

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
