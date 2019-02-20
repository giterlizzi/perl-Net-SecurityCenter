# Net::SecurityCenter
# NAME

Net::SecurityCenter - Perl interface to Tenable.sc (SecurityCenter) REST API

# SYNOPSIS

    use Net::SecurityCenter;

    my $sc = Net::SecurityCenter('sc.example.org');

    $sc->login('secman', 'password');

    my $running_scans = $sc->scan_result->list_running;

    $sc->logout();

# DESCRIPTION

This module provides Perl scripts easy way to interface the REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

[https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)

# CONSTRUCTOR

## Net::SecurityCenter->new ( host \[, $params \] )

Create a new instance of **Net::Security::Center** using [Net::SecurityCenter::REST](net-securitycenter-rest.md) class.

Params:

- `timeout` : Request timeout in seconds (default is `180` seconds).
If a socket open, read or write takes longer than the timeout, an exception is thrown.
- `ssl_options` : A hashref of `SSL_*` options to pass through to [IO::Socket::SSL](https://metacpan.org/pod/IO::Socket::SSL).
- `logger` : A logger instance (eg. [Log::Log4perl](https://metacpan.org/pod/Log::Log4perl) or [Log::Any](https://metacpan.org/pod/Log::Any) for log
the REST request and response messages.
- `no_check` : Disable the check of SecurityCenter instance.

# COMMON METHODS

## $sc->rest ()

Return the instance of [Net::SecurityCenter::REST](net-securitycenter-rest.md) class

## $sc->login ( $username, $password )

Login into SecurityCenter.

## $sc->logout

Logout from SecurityCenter.

# HELPER METHODS

## analysis

Return [Net::SecurityCenter::API::Analisys](net-securitycenter-api-analisys.md) instance.

## credential

Return [Net::SecurityCenter::API::Credential](net-securitycenter-api-credential.md) instance.

## feed

Return [Net::SecurityCenter::API::Feed](net-securitycenter-api-feed.md) instance.

## file

Return [Net::SecurityCenter::API::File](net-securitycenter-api-file.md) instance.

## plugin

Return [Net::SecurityCenter::API::Plugin](net-securitycenter-api-plugin.md) instance.

## plugin\_family

Return [Net::SecurityCenter::API::PluginFamily](net-securitycenter-api-pluginfamily.md) instance.

## policy

Return [Net::SecurityCenter::API::Policy](net-securitycenter-api-policy.md) instance.

## report

Return [Net::SecurityCenter::API::Report](net-securitycenter-api-report.md) instance.

## repository

Return [Net::SecurityCenter::API::Repository](net-securitycenter-api-repository.md) instance.

## scan

Return [Net::SecurityCenter::API::Scan](net-securitycenter-api-scan.md) instance.

## scan\_result

Return [Net::SecurityCenter::API::ScanResult](net-securitycenter-api-scanresult.md) instance.

## scanner

Return [Net::SecurityCenter::API::Scanner](net-securitycenter-api-scanner.md) instance.

## system

Return [Net::SecurityCenter::API::System](net-securitycenter-api-system.md) instance.

## user

Return [Net::SecurityCenter::API::User](net-securitycenter-api-user.md) instance.

## zone

Return [Net::SecurityCenter::API::Zone](net-securitycenter-api-zone.md) instance.

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
