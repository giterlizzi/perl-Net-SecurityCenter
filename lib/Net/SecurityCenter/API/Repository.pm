package Net::SecurityCenter::API::Repository;

use warnings;
use strict;

use Carp;

use parent 'Net::SecurityCenter::API';

use Net::SecurityCenter::Utils qw(:all);

our $VERSION = '0.100_10';

my $common_template = {

    id => {
        required => 1,
        allow    => qr/^\d+$/,
        messages => {
            required => 'Repository ID is required',
            allow    => 'Invalid Repository ID',
        },
    },

    filter => {
        allow => [ 'usable', 'manageable' ],
    },

    fields => {
        filter => \&filter_array_to_string,
    },

};

#-------------------------------------------------------------------------------
# METHODS
#-------------------------------------------------------------------------------

sub list {

    my ( $self, %args ) = @_;

    my $tmpl = {
        fields => $common_template->{'fields'},
        filter => $common_template->{'filter'},
    };

    my $params = check( $tmpl, \%args );

    return $self->rest->get( '/repository', $params );

}

#-------------------------------------------------------------------------------

sub get {

    my ( $self, %args ) = @_;

    my $tmpl = {
        fields => $common_template->{'fields'},
        id     => $common_template->{'id'},
    };

    my $params        = check( $tmpl, \%args );
    my $repository_id = delete( $params->{'id'} );

    return $self->rest->get( "/repository/$repository_id", $params );

}

#-------------------------------------------------------------------------------

sub get_device_info {

    my ( $self, %args ) = @_;

    my $tmpl = {
        fields   => $common_template->{'fields'},
        id       => $common_template->{'id'},
        ip       => {},
        uuid     => {},
        dns_name => {
            remap => 'dnsName',
        }
    };

    my $params        = check( $tmpl, \%args );
    my $repository_id = delete( $params->{'id'} );

    return $self->rest->get( "/repository/$repository_id/deviceInfo", $params );

}

#-------------------------------------------------------------------------------

sub get_ip_info {

    my ( $self, %args ) = @_;

    my $tmpl = {
        fields   => $common_template->{'fields'},
        ip       => {},
        uuid     => {},
        dns_name => {
            remap => 'dnsName',
        }
    };

    my $params = check( $tmpl, \%args );

    return $self->rest->get( "/ipInfo", $params );

}

#-------------------------------------------------------------------------------

1;

__END__
=pod

=encoding UTF-8


=head1 NAME

Net::SecurityCenter::API::Repository - Perl interface to Tenable.sc (SecurityCenter) Repository REST API


=head1 SYNOPSIS

    use Net::SecurityCenter::REST;
    use Net::SecurityCenter::API::Repository;

    my $sc = Net::SecurityCenter::REST->new('sc.example.org');

    $sc->login('secman', 'password');

    my $api = Net::SecurityCenter::API::Repository->new($sc);

    $sc->logout();


=head1 DESCRIPTION

This module provides Perl scripts easy way to interface the Repository REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

L<https://docs.tenable.com/sccv/api/index.html>


=head1 CONSTRUCTOR

=head2 Net::SecurityCenter::API::Repository->new ( $rest )

Create a new instance of B<Net::SecurityCenter::API::Repository> using L<Net::Security::Center::REST> class.


=head1 METHODS

=head2 list ( [ $fields ] )

Get the list of repositories.

=head2 get ( $repository_id [, $fields ] )

Get the repository associated with C<repository_id>.

=head2 get_device_info ( $repository_id, $ip_address [, $params ] )

=head2 get_ip_info ( $ip_address [, $params ])

B<NOTE>: This method has been DEPRECATED as of SecurityCenter 5.7.0.


=head1 SUPPORT

=head2 Bugs / Feature Requests

Please report any bugs or feature requests through the issue tracker
at L<https://github.com/LotarProject/perl-Net-SecurityCenter/issues>.
You will be notified automatically of any progress on your issue.

=head2 Source Code

This is open source software.  The code repository is available for
public review and contribution under the terms of the license.

L<https://github.com/LotarProject/perl-Net-SecurityCenter>

    git clone https://github.com/LotarProject/perl-Net-SecurityCenter.git


=head1 AUTHOR

=over 4

=item * Giuseppe Di Terlizzi <gdt@cpan.org>

=back


=head1 LICENSE AND COPYRIGHT

This software is copyright (c) 2018-2019 by Giuseppe Di Terlizzi.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
