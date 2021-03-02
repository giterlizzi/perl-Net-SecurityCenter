# Net::SecurityCenter::Error
# NAME

Net::SecurityCenter::Error - Error helper for Net::SecurityCenter

# SYNOPSIS

    use Net::SecurityCenter;

    my $sc = Net::SecurityCenter('sc.example.org');

    $sc->login('secman', 'password') or die $sc->error;

    if ($sc->error) {
        die $sc->error;
    }

    my $res = $sc->scan_result->list;

    if (my $error = $sc->error) {
        die $error;
    }

    $sc->logout();

# DESCRIPTION

# CONSTRUCTOR

## Net::SecurityCenter::Error->new ( $message \[, $code \] )

Create a new instance of [Net::SecurityCenter::Error](https://metacpan.org/pod/Net%3A%3ASecurityCenter%3A%3AError).

# METHODS

## $error->message

Return the error message.

## $error->code

Return the error code.

# ERROR HANDLING

Detect undef result:

    $sc->get('/scanResult') or die $sc->error;

    # or

    my $res = $sc->get('/scanResult/1337');

    if (! $res) {
        die $sc->error;
    }

Use error object:

    my $res = $sc->get('/scanResult/1337');

    if (my $error = $sc->error) {
        die $error;
    }

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
