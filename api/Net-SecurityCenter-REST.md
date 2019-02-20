# Net::SecurityCenter::REST
# NAME

Net::SecurityCenter::REST - Perl interface to Tenable.sc (SecurityCenter) REST API

# SYNOPSIS

    use Net::SecurityCenter::REST;

    my $sc = Net::SecurityCenter::REST('sc.example.org');

    $sc->login('secman', 'password');

    my $running_scans = $sc->get('/scanResult', { filter => 'running' });

    $sc->logout();

# DESCRIPTION

This module provides Perl scripts easy way to interface the REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

[https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)

# CONSTRUCTOR

## Net::SecurityCenter::REST->new ( host \[, $params \] )

Create a new instance of [Net::SecurityCenter::REST](Net-SecurityCenter-REST.md).

Params:

- `timeout` : Request timeout in seconds (default is 180) If a socket open,
read or write takes longer than the timeout, an exception is thrown.
- `ssl_options` : A hashref of `SSL_*` options to pass through to [IO::Socket::SSL](https://metacpan.org/pod/IO::Socket::SSL).
- `logger` : A logger instance (eg. [Log::Log4perl](https://metacpan.org/pod/Log::Log4perl) or [Log::Any](https://metacpan.org/pod/Log::Any) for log
the REST request and response messages.
- `no_check` : Disable the check of SecurityCenter installation.

# METHODS

## $sc->post|get|put|delete|patch ( $path \[, \\%params \] )

Execute a request to SecurityCenter REST API. These methods are shorthand for
calling `request()` for the given method.

    my $nessus_scan = $sc->post('/scanResult/1337/download',  { 'downloadType' => 'v2' });

## $sc->request ( $method, $path \[, \\%params \] )

Execute a HTTP request of the given method type ('GET', 'POST', 'PUT', 'DELETE',
''PATCH') to SecurityCenter REST API.

## $sc->login ( $username, $password )

Login into SecurityCenter.

## $sc->logout

Logout from SecurityCenter.

## $sc->upload ( $file )

Upload a file into SecurityCenter.

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
