# Net::SecurityCenter
# NAME

Net::SecurityCenter - Perl interface to Tenable.sc (SecurityCenter) REST API

# SYNOPSIS

    use Net::SecurityCenter;

    my $sc = Net::SecurityCenter('sc.example.org');

    if (! $sc->login(username => 'secman', password => 's3cr3t')) {
        die $sc->error;
    }

    my $running_scans = $sc->scan_result->list_running;

    $sc->logout();

# DESCRIPTION

This module provides Perl scripts easy way to interface the REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

[https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)

# CONSTRUCTOR

## Net::SecurityCenter->new ( host \[, $params \] )

Create a new instance of **Net::Security::Center** using [Net::SecurityCenter::REST](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AREST) class.

Params:

- `timeout` : Request timeout in seconds (default is 180) If a socket open,
read or write takes longer than the timeout, an exception is thrown.
- `ssl_options` : A hashref of `SSL_*` options to pass through to [IO::Socket::SSL](https://metacpan.org/pod/IO%3A%3ASocket%3A%3ASSL).
- `logger` : A logger instance (eg. [Log::Log4perl](https://metacpan.org/pod/Log%3A%3ALog4perl), [Log::Any](https://metacpan.org/pod/Log%3A%3AAny) or [Mojo::Log](https://metacpan.org/pod/Mojo%3A%3ALog))
for log the REST request and response messages.
- `scheme` : URI scheme (default: HTTPS).

# COMMON METHODS

## $sc->client ()

Return the instance of [Net::SecurityCenter::REST](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AREST) class

## $sc->login ( ... )

Login into SecurityCenter.

See "Username and password authetication" and "API Key authentication" in [Net::SecurityCenter::REST](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AREST).

## $sc->logout

Logout from SecurityCenter.

# HELPER METHODS

## analysis

Return [Net::SecurityCenter::API::Analysis](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3AAnalysis) instance.

## credential

Return [Net::SecurityCenter::API::Credential](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3ACredential) instance.

## feed

Return [Net::SecurityCenter::API::Feed](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3AFeed) instance.

## file

Return [Net::SecurityCenter::API::File](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3AFile) instance.

## notification

Return [Net::SecurityCenter::API::Notification](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3ANotification) instance.

## plugin

Return [Net::SecurityCenter::API::Plugin](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3APlugin) instance.

## plugin\_family

Return [Net::SecurityCenter::API::PluginFamily](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3APluginFamily) instance.

## policy

Return [Net::SecurityCenter::API::Policy](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3APolicy) instance.

## report

Return [Net::SecurityCenter::API::Report](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3AReport) instance.

## repository

Return [Net::SecurityCenter::API::Repository](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3ARepository) instance.

## scan

Return [Net::SecurityCenter::API::Scan](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3AScan) instance.

## scan\_result

Return [Net::SecurityCenter::API::ScanResult](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3AScanResult) instance.

## scanner

Return [Net::SecurityCenter::API::Scanner](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3AScanner) instance.

## status

Return [Net::SecurityCenter::API::Status](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3AStatus) instance.

## system

Return [Net::SecurityCenter::API::System](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3ASystem) instance.

## user

Return [Net::SecurityCenter::API::User](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3AUser) instance.

## zone

Return [Net::SecurityCenter::API::Zone](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AAPI%3A%3AZone) instance.

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

This software is copyright (c) 2018-2021 by Giuseppe Di Terlizzi.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
