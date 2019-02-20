# Net::SecurityCenter::API::Analysis
# NAME

Net::SecurityCenter::API::Analysis - Perl interface to Tenable.sc (SecurityCenter) Analysis REST API

# SYNOPSIS

    use Net::SecurityCenter::REST;
    use Net::SecurityCenter::API::Analysis;

    my $sc = Net::SecurityCenter::REST->new('sc.example.org');

    $sc->login('secman', 'password');

    my $api = Net::SecurityCenter::API::Analysis->new($sc);

    $sc->logout();

# DESCRIPTION

This module provides Perl scripts easy way to interface the Analysis REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

[https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)

# CONSTRUCTOR

## Net::SecurityCenter::API::Analysis->new ( $rest )

Create a new instance of **Net::SecurityCenter::API::Analysis** using [Net::SecurityCenter::REST](Net-SecurityCenter-REST.md) class.

# METHODS

## get

Processes a query for analysis

Params:

- `type` : Type of analysis (_required_)

    Allowed types:

    - `scLog`
    - `vuln`
    - `event`
    - `mobile`
    - `user`

- `source` : Type of source

    Allowed values for `vuln` type:

    - `individual`
    - `cumulative`
    - `patched`

    Allowed values for `event` type:

    - `lce`
    - `archive`

- `tool` : Tool

    Allowed values:

    - `cceipdetail`
    - `cveipdetail`
    - `iavmipdetail`
    - `listmailclients`
    - `listservices`
    - `listos`
    - `listsoftware`
    - `listsshservers`
    - `listvuln`
    - `listwebclients`
    - `listwebservers`
    - `sumasset`
    - `sumcce`
    - `sumclassa`
    - `sumclassb`
    - `sumclassc`
    - `sumcve`
    - `sumdnsname`
    - `sumfamily`
    - `sumiavm`
    - `sumid`
    - `sumip`
    - `summsbulletin`
    - `sumport`
    - `sumprotocol`
    - `sumremediation`
    - `sumseverity`
    - `sumuserresponsibility`
    - `trend`
    - `vulndetails`
    - `vulnipdetail`
    - `vulnipsummary`

- `filters` : Filter array for _field_, _operator_ and _value_ (eg. `[ 'ip', '=', '10.10.0.0/16' ]`)
- `query_id` : ID of query
- `sort_dir` : Sort direction `ASC` or `DESC`
- `sort_field` : Sort field
- `scan_id` : Scan ID (only for `individual` source type and `vuln` type values)
- `lce_id` : LCE ID (only for `archive` source type and `event` type values)
- `view` : View type (only for `individual` source type and `vuln` type values and `archive` source type and `event` type values)
    - `view`
    - `all`
    - `new`
    - `patched`
- `page` : Number of page for pagination
- `limit` : Number of items (default is `1000`)

## get\_log

Processes a query for log analysis.

**NOTE**: This is a facility for `$sc->get( type => 'scLog', ... )` method

Params:

- `date` : Log basename (`YYYYMM` eg. `201901`) or `all`
- `severity` : Log severity (`info`, `warning` or `critical`)
- `initiator` : ID of SecurityCenter user
- `module` : Module (eg. `auth`)
- `organization` : ID of SecurityCenter organization
- `page` : Number of page for pagination (default is `all`)
- `limit` : Number of items (default is `1000`)

## get\_vulnerabilities

Processes a query for vulnerability analysis.

**NOTE**: This is a facility for `$sc->get( type => 'vuln', ... )` method

Params:

- `query_id` : ID of query
- `sort_dir` : Sort direction `ASC` or `DESC`
- `sort_field` : Sort field
- `source` : Type of source
    - `individual`
    - `cumulative`
    - `patched`
- `view` : View type (see `$sc->get( view =` ... )> for allowed values)
- `scan_id` : Scan ID
- `tool` : Tool (see `$sc->get( tool =` ... )> for allowed params)
- `page` : Number of page for pagination
- `limit` : Number of items (default is `1000`)
- `filters` : Filter array for _field_, _operator_ and _value_ (eg. `[ 'ip', '=', '10.10.0.0/16' ]`)

## get\_events

Processes a query for event analysis.

**NOTE**: This is a facility for `$sc->get( type => 'event', ... )` method

Params:

- `query_id` : ID of query
- `sort_dir` : Sort direction `ASC` or `DESC`
- `sort_field` : Sort field
- `source` : Type of source
    - `lce`
    - `archive`
- `view` : View type (see `$sc->get( view =` ... )> for allowed values)
- `lce_id` : LCE ID
- `tool` : Tool
    - `listdata`
    - `sumasset`
    - `sumclassa`
    - `sumclassb`
    - `sumclassc`
    - `sumconns`
    - `sumdate`
    - `sumdstip`
    - `sumevent`
    - `sumevent2`
    - `sumip`
    - `sumport`
    - `sumprotocol`
    - `sumsrcip`
    - `sumtime`
    - `sumtype`
    - `sumuser`
    - `syslog`
    - `timedist`
- `page` : Number of page for pagination
- `limit` : Number of items (default is `1000`)
- `filters` : Filter array for _field_, _operator_ and _value_ (eg. `[ 'ip', '=', '10.10.0.0/16' ]`)

## get\_mobile

Processes a query for mobile analysis.

**NOTE**: This is a facility for `$sc->get( type => 'mobile', ... )` method

Params:

- `query_id` : ID of query
- `sort_dir` : Sort direction `ASC` or `DESC`
- `sort_field` : Sort field
- `tool` : Tool
    - `listvuln`
    - `sumdeviceid`
    - `summdmuser`
    - `summodel`
    - `sumoscpe`
    - `sumpluginid`
    - `sumseverity`
    - `vulndetails`
- `page` : Number of page for pagination
- `limit` : Number of items (default is `1000`)
- `filters` : Filter array for _field_, _operator_ and _value_ (eg. `[ 'ip '= '10.10.0.0/16' ]`)

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
