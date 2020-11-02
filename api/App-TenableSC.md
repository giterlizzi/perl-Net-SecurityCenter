# App::TenableSC
# NAME

App::TenableSC - Base class for Tenable.sc (SecurityCenter) applications

# SYNOPSIS

    use App::TenableSC;

    # Add additional command line options
    @App::TenableSC::command_options = ( 'opt1=s', 'opt2=s', 'flag' );

    App::TenableSC->run;

# DESCRIPTION

This module provides Perl scripts easy way to write Tenable.sc (SecurityCenter)
application usinc [Net::SecurityCenter](https://metacpan.org/pod/Net%3A%3ASecurityCenter).

# METHODS

## run

Run the application.

    use App::TenableSC::MyApp;

    # Add additional command line options
    @App::TenableSC::command_options = ( 'opt1=s', 'opt2=s', 'flag' );

    App::TenableSC::MyApp->run;

# HELPER METHODS

## config

Return config object

## connect

Connect to Tenable.sc instance with provided credentials and return [Net::SecurityCenter](https://metacpan.org/pod/Net%3A%3ASecurityCenter) object.

## logger

Return [App::TenableSC::Logger](https://metacpan.org/pod/App%3A%3ATenableSC%3A%3ALogger) object.

## options

Return command line argument options.

## sc

Return [Net::SecurityCenter](https://metacpan.org/pod/Net%3A%3ASecurityCenter) object.

## startup

This is your main hook into the application, it will be called at application startup.
Meant to be overloaded in a subclass.

    sub startup {
        my ($self) = @_;

        my $sc = $self->connect;

        $sc->plugin->download(id => $self->option->{'id'}, file => $self->option->{'file'});

        exit 0;
    }

# DEFAULT COMMAND LINE ARGUMENTS

- `hostname` : Tenable.sc host/IP address
- `username` : Username
- `password` : Password
- `access_key` : Access Key
- `secret_key` : Secret Key
- `config` : Configuration file
- `help` : Brief help message
- `man` : Full documentation
- `version` : Command version
- `verbose` : Full documentation

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
