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

Create a new instance of **Net::Security::Center** using [Net::SecurityCenter::REST](Net-SecurityCenter-REST.md) class.

Params:

- `timeout` : Request timeout in seconds (default is `180` seconds).
If a socket open, read or write takes longer than the timeout, an exception is thrown.
- `ssl_options` : A hashref of `SSL_*` options to pass through to [IO::Socket::SSL](https://metacpan.org/pod/IO::Socket::SSL).
- `logger` : A logger instance (eg. [Log::Log4perl](https://metacpan.org/pod/Log::Log4perl) or [Log::Any](https://metacpan.org/pod/Log::Any) for log
the REST request and response messages.
- `no_check` : Disable the check of SecurityCenter instance.

# COMMON METHODS

## $sc->client ()

Return the instance of [Net::SecurityCenter::REST](Net-SecurityCenter-REST.md) class

## $sc->login ( $username, $password )

Login into SecurityCenter.

## $sc->logout

Logout from SecurityCenter.

# HELPER METHODS

## analysis

Return [Net::SecurityCenter::API::Analisys](Net-SecurityCenter-API-Analisys.md) instance.

## credential

Return [Net::SecurityCenter::API::Credential](Net-SecurityCenter-API-Credential.md) instance.

## feed

Return [Net::SecurityCenter::API::Feed](Net-SecurityCenter-API-Feed.md) instance.

## file

Return [Net::SecurityCenter::API::File](Net-SecurityCenter-API-File.md) instance.

## plugin

Return [Net::SecurityCenter::API::Plugin](Net-SecurityCenter-API-Plugin.md) instance.

## plugin\_family

Return [Net::SecurityCenter::API::PluginFamily](Net-SecurityCenter-API-PluginFamily.md) instance.

## policy

Return [Net::SecurityCenter::API::Policy](Net-SecurityCenter-API-Policy.md) instance.

## report

Return [Net::SecurityCenter::API::Report](Net-SecurityCenter-API-Report.md) instance.

## repository

Return [Net::SecurityCenter::API::Repository](Net-SecurityCenter-API-Repository.md) instance.

## scan

Return [Net::SecurityCenter::API::Scan](Net-SecurityCenter-API-Scan.md) instance.

## scan\_result

Return [Net::SecurityCenter::API::ScanResult](Net-SecurityCenter-API-ScanResult.md) instance.

## scanner

Return [Net::SecurityCenter::API::Scanner](Net-SecurityCenter-API-Scanner.md) instance.

## system

Return [Net::SecurityCenter::API::System](Net-SecurityCenter-API-System.md) instance.

## user

Return [Net::SecurityCenter::API::User](Net-SecurityCenter-API-User.md) instance.

## zone

Return [Net::SecurityCenter::API::Zone](Net-SecurityCenter-API-Zone.md) instance.

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
