# Net::SecurityCenter::API::Credential
# NAME

Net::SecurityCenter::API::Credential - Perl interface to Tenable.sc (SecurityCenter) Credential REST API

# SYNOPSIS

    use Net::SecurityCenter::REST;
    use Net::SecurityCenter::API::Credential;

    my $sc = Net::SecurityCenter::REST->new('sc.example.org');

    $sc->login('secman', 'password');

    my $api = Net::SecurityCenter::API::Credential->new($sc);

    $sc->logout();

# DESCRIPTION

This module provides Perl scripts easy way to interface the Credential REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

[https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)

# CONSTRUCTOR

## Net::SecurityCenter::API::Credential->new ( $client )

Create a new instance of **Net::SecurityCenter::API::Credential** using [Net::SecurityCenter::REST](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AREST) class.

# METHODS

## list

Get the list of credentials.

Params:

- `fields` : List of fields

## get

Get the credential associated with `id`.

Params:

- `id` : Credential ID
- `fields` : List of fields

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
