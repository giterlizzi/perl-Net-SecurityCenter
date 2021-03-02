# Net::SecurityCenter::API::Ticket
# NAME

Net::SecurityCenter::API::Ticket - Perl interface to Tenable.sc (SecurityCenter) Ticket REST API

# SYNOPSIS

    use Net::SecurityCenter::REST;
    use Net::SecurityCenter::API::Ticket;

    my $sc = Net::SecurityCenter::REST->new('sc.example.org');

    $sc->login('secman', 'password');

    my $api = Net::SecurityCenter::API::Ticket->new($sc);

    $sc->logout();

# DESCRIPTION

This module provides Perl scripts easy way to interface the Ticket REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

[https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)

# CONSTRUCTOR

## Net::SecurityCenter::API::Ticket->new ( $client )

Create a new instance of **Net::SecurityCenter::API::Ticket** using [Net::SecurityCenter::REST](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AREST) class.

# METHODS

## list

Get the list of tickets.

Params:

- `fields` : List of fields

Allowed Fields:

- `id`
- `name`
- `description`
- `creator`
- `owner`
- `assignee`
- `ownerGroup`
- `assigneeGroup`
- `queries`
- `classification`
- `status`
- `notes`
- `assignedTime`
- `resolvedTime`
- `closedTime`
- `createdTime`
- `modifiedTime`
- `canUse`
- `canManage`
- `canRespond`

## get

Get the ticket associated with `id`.

Params:

- `id` : Ticket ID
- `fields` : List of fields (see `list` method)

## add

Adds a Ticket.

Params:

- `name` : Summary (required)
- `assignee` : Tenable.sc user ID (required)
- `status` : Ticket status (default `assigned`)
    - `assigned`
    - `resolved`
    - `feedback`
    - `na`
    - `duplicate`
    - `closed`
- `classification` : Ticket classification (default: `Information`)
    - `Information`
    - `Configuration`
    - `Patch`
    - `Disable`
    - `Firewall`
    - `Schedule`
    - `IDS`
    - `Other`
    - `Accept Risk`
    - `Recast Risk`
    - `Re-scan Request`
    - `False Positive`
    - `System Probe`
    - `External Probe`
    - `Investigation Needed`
    - `Compromised System`
    - `Virus Incident`
    - `Bad Credentials`
    - `Unauthorized Software`
    - `Unauthorized System`
    - `Unauthorized User`
- `description` : Ticket description
- `note` : Ticket note
- `queries` : Array of queries
- `query` : Query

## edit

Edits the Ticket associated with `id`, changing only the passed in fields.

Params:

- `id` : Ticket ID
- see `add` method for all optional params

# SUPPORT

## Bugs / Feature Requests

Please report any bugs or feature requests through the issue tracker
at [https://github.com/giterlizzi/perl-Net-SecurityCenter/issues](https://github.com/giterlizzi/perl-Net-SecurityCenter/issues).
You will be notified automatically of any progress on your issue.

## Source Code

This is open source software.  The code ticket is available for
public review and contribution under the terms of the license.

[https://github.com/giterlizzi/perl-Net-SecurityCenter](https://github.com/giterlizzi/perl-Net-SecurityCenter)

    git clone https://github.com/giterlizzi/perl-Net-SecurityCenter.git

# AUTHOR

- Giuseppe Di Terlizzi <gdt@cpan.org>

# LICENSE AND COPYRIGHT

This software is copyright (c) 2018-2021 by Giuseppe Di Terlizzi.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
