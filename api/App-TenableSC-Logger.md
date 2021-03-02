# App::TenableSC::Logger
# NAME

App::TenableSC::Logger - Simple Logger package for App::TenableSC

# SYNOPSIS

    use App::TenableSC::Logger;

    my $logger = App::TenableSC::Logger->new;
    $logger->debug('Hello, Tenable.sc');

# DESCRIPTION

This module provides Perl scripts easy way to interface the REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

[https://docs.tenable.com/sccv/api/index.html](https://docs.tenable.com/sccv/api/index.html)

# CONSTRUCTOR

## App::TenableSC::Logger->new

Create a new instance of [App::TenableSC::Logger](https://metacpan.org/pod/App%3A%3ATenableSC%3A%3ALogger).

# METHODS

## $logger->error|warning|debug|info ( $message )

Write message in STDERR.

# SEE ALSO

[Log::Log4perl](https://metacpan.org/pod/Log%3A%3ALog4perl), [Log::Any](https://metacpan.org/pod/Log%3A%3AAny), [Mojo::Log](https://metacpan.org/pod/Mojo%3A%3ALog)

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