package Net::SecurityCenter::API::Zone;

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
            required => 'Scan Zone ID is required',
            allow    => 'Invalid Scan Zone ID',
        },
    },

    filter => {
        allow => [ 'usable', 'manageable' ],
    },

    fields => {
        filter => \&filter_array_to_string
    }

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
    my $zones  = $self->rest->get( '/zone', $params );

    return extract_param( 'filter', $params, $zones );

}

#-------------------------------------------------------------------------------

sub get {

    my ( $self, %args ) = @_;

    my $tmpl = {
        fields => $common_template->{'fields'},
        id     => $common_template->{'id'},
    };

    my $params  = check( $tmpl, \%args );
    my $zone_id = delete( $params->{'id'} );

    return $self->rest->get( "/zone/$zone_id", $params );

}

1;

__END__
=pod

=encoding UTF-8


=head1 NAME

Net::SecurityCenter::API::Zone - Perl interface to Tenable.sc (SecurityCenter) Zone REST API


=head1 SYNOPSIS

    use Net::SecurityCenter::REST;
    use Net::SecurityCenter::API::Zone;

    my $sc = Net::SecurityCenter::REST->new('sc.example.org');

    $sc->login('secman', 'password');

    my $api = Net::SecurityCenter::API::Zone->new($sc);

    $sc->logout();


=head1 DESCRIPTION

This module provides Perl scripts easy way to interface the Zone REST API of Tenable.sc
(SecurityCenter).

For more information about the Tenable.sc (SecurityCenter) REST API follow the online documentation:

L<https://docs.tenable.com/sccv/api/index.html>


=head1 CONSTRUCTOR

=head2 Net::SecurityCenter::API::Zone->new ( $rest )

Create a new instance of B<Net::SecurityCenter::API::Zone> using L<Net::SecurityCenter::REST> class.


=head1 METHODS

=head2 list ( [ %params ] )

Get the scan zone list.

=head2 get ( $zone_id [, $fields ] )

Get the scan zone associated with C<zone_id>.


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
