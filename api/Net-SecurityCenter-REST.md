# Net::SecurityCenter::REST
# NAME

Net::SecurityCenter::REST - Perl interface to Tenable.sc (SecurityCenter) REST API

# SYNOPSIS

    use Net::SecurityCenter::REST;

    my $sc = Net::SecurityCenter::REST('sc.example.org');

    if (! $sc->login('secman', 'password')) {
        die $sc->error;
    }

    my $running_scans = $sc->get('/scanResult', { filter => 'running' });

    $sc->logout();

# DESCRIPTION

This module provides Perl scripts easy way to interface the REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

[https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)

# CONSTRUCTOR

## Net::SecurityCenter::REST->new ( host \[, $params \] )

Create a new instance of [Net::SecurityCenter::REST](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AREST).

Params:

- `timeout` : Request timeout in seconds (default is 180) If a socket open,
read or write takes longer than the timeout, an exception is thrown.
- `ssl_options` : A hashref of `SSL_*` options to pass through to [IO::Socket::SSL](https://metacpan.org/pod/IO%3A%3ASocket%3A%3ASSL).
- `logger` : A logger instance (eg. [Log::Log4perl](https://metacpan.org/pod/Log%3A%3ALog4perl), [Log::Any](https://metacpan.org/pod/Log%3A%3AAny) or [Mojo::Log](https://metacpan.org/pod/Mojo%3A%3ALog))
for log the REST request and response messages.
- `scheme` : URI scheme (default: HTTPS).

### Two-Way SSL/TLS Mutual Authentication

You can use configure SSL client certificate authentication for Tenable.sc user
account authentication using [IO::Socket::SSL](https://metacpan.org/pod/IO%3A%3ASocket%3A%3ASSL) `SSL_*` options in
**ssl\_options** param.

**Example 1: User certificate + Private Key**

    my $sc = Net::SecurityCenter::REST( $sc_server, {
        ssl_options => {
            SSL_cert_file => '/path/ssl.cer',   # Client Certificate
            SSL_key_file  => '/path/priv.key',  # Private Key
        }
    } );

**Example 2: User certificate + Private Key + Password**

    my $sc = Net::SecurityCenter::REST( $sc_server, {
        ssl_options => {
            SSL_cert_file => '/path/ssl.cer',   # Client Certificate
            SSL_key_file  => '/path/priv.key',  # Private Key
            SSL_passwd_cb => sub { 'secret' }   # Key secret
        }
    } );

**Example 3: PKCS#12**

    my $sc = Net::SecurityCenter::REST( $sc_server, {
        ssl_options => {
            SSL_cert_file => '/path/ssl.p12',   # PKCS#12 file
        }
    } );

From [IO::Socket::SSL](https://metacpan.org/pod/IO%3A%3ASocket%3A%3ASSL) man:

**SSL\_cert\_file** | **SSL\_cert** | **SSL\_key\_file** | **SSL\_key**

The certificate can be given as a file with `SSL_cert_file` or as an internal
representation of an X509\* object (like you get from [Net::SSLeay](https://metacpan.org/pod/Net%3A%3ASSLeay) or
[IO::Socket::SSL::Utils::PEM\_xxx2cert](https://metacpan.org/pod/IO%3A%3ASocket%3A%3ASSL%3A%3AUtils%3A%3APEM_xxx2cert)) with `SSL_cert`. If given as a file it
will automatically detect the format. Supported file formats are PEM, DER and
PKCS#12, where PEM and PKCS#12 can contain the certificate and the chain to use,
while DER can only contain a single certificate.

For each certificate a key is need, which can either be given as a file with
`SSL_key_file` or as an internal representation of an EVP\_PKEY\* object with
`SSL_key` (like you get from [Net::SSLeay](https://metacpan.org/pod/Net%3A%3ASSLeay) or [IO::Socket::SSL::Utils::PEM\_xxx2key](https://metacpan.org/pod/IO%3A%3ASocket%3A%3ASSL%3A%3AUtils%3A%3APEM_xxx2key)).
If a key was already given within the PKCS#12 file specified by `SSL_cert_file`
it will ignore any `SSL_key` or `SSL_key_file`. If no `SSL_key` or
`SSL_key_file` was given it will try to use the PEM file given with
`SSL_cert_file` again, maybe it contains the key too.

**SSL\_passwd\_cb**

If your private key is encrypted, you might not want the default password prompt
from [Net::SSLeay](https://metacpan.org/pod/Net%3A%3ASSLeay). This option takes a reference to a subroutine that should
return the password required to decrypt your private key.

# METHODS

## $sc->post|get|put|delete|patch ( $path \[, \\%params \] )

Execute a request to Tenable.sc REST API. These methods are shorthand for
calling `request()` for the given method.

    my $nessus_scan = $sc->post('/scanResult/1337/download',  { 'downloadType' => 'v2' });

## $sc->request ( $method, $path \[, \\%params \] )

Execute a HTTP request of the given method type ('GET', 'POST', 'PUT', 'DELETE',
''PATCH') to Tenable.sc REST API.

## $sc->login ( ... )

Login into Tenable.sc using username/password or API Key.

### Username and password authentication

    $sc->login( $username, $password ):
    $sc->login( username => ..., password => ... );

### API Key authentication

Since Tenable.SC 5.13 it's possibile to use API Key authentication using `access_key`
and `secret_key`:

    $sc->login( access_key => ..., secret_key => ... );

More information about API Key authentication:

- Enable API Key Authentication - [https://docs.tenable.com/tenablesc/Content/EnableAPIKeys.htm](https://docs.tenable.com/tenablesc/Content/EnableAPIKeys.htm)
- Generate API Keys - [https://docs.tenable.com/tenablesc/Content/GenerateAPIKey.htm](https://docs.tenable.com/tenablesc/Content/GenerateAPIKey.htm)

## $sc->logout

Logout from Tenable.sc.

## $sc->upload ( $file )

Upload a file into Tenable.sc.

## $sc->error

Catch the Tenable.sc errors and return [Net::SecurityCenter::Error](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AError) class.

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
