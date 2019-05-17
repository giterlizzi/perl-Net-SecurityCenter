# Net::SecurityCenter::Error
# NAME

Net::SecurityCenter::Error - Error helper for Net::SecurityCenter

# SYNOPSIS

    use Net::SecurityCenter;

    my $sc = Net::SecurityCenter('sc.example.org') or die "Error : " . $@;

    $sc->login('secman', 'password');

    if ($sc->error) {
        die $sc->error;
    }

    $sc->logout();

# DESCRIPTION

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
