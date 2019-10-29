# Net::SecurityCenter::API::Report
# NAME

Net::SecurityCenter::API::Report - Perl interface to Tenable.sc (SecurityCenter) Report REST API

# SYNOPSIS

    use Net::SecurityCenter::REST;
    use Net::SecurityCenter::API::Report;

    my $sc = Net::SecurityCenter::REST->new('sc.example.org');

    $sc->login('secman', 'password');

    my $api = Net::SecurityCenter::API::Report->new($sc);

    $sc->logout();

# DESCRIPTION

This module provides Perl scripts easy way to interface the Report REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

[https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)

# CONSTRUCTOR

## Net::SecurityCenter::API::Report->new ( $client )

Create a new instance of **Net::SecurityCenter::API::Report** using [Net::SecurityCenter::REST](Net-SecurityCenter-REST.md) class.

# METHODS

## list ( \[ $fields \] )

Gets the list of reports.

## get ( $report\_id \[, $fields \])

Gets the report associated with `report_id`.

## download ( $report\_id \[, $filename \] )

Download the report associated with `report_id`.

    $report->download(1337, '/tmp/report.pdf');

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

This software is copyright (c) 2018-2019 by Giuseppe Di Terlizzi.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
