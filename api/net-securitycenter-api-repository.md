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

## Net::SecurityCenter::API::Repository->new ( $rest )

Create a new instance of **Net::SecurityCenter::API::Repository** using [Net::SecurityCenter::REST](net-securitycenter-rest.md) class.

# METHODS

## list ( \[ $fields \] )

Get the list of repositories.

## get ( $repository\_id \[, $fields \] )

Get the repository associated with `repository_id`.

## get\_device\_info ( $repository\_id, $ip\_address \[, $params \] )

## get\_ip\_info ( $ip\_address \[, $params \])

**NOTE**: This method has been DEPRECATED as of SecurityCenter 5.7.0.

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
