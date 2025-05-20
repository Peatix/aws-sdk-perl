
package Paws::OAM::ListAttachedLinksOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::OAM::ListAttachedLinksItem]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM::ListAttachedLinksOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[L<Paws::OAM::ListAttachedLinksItem>]

An array of structures that contain the information about the attached
links.


=head2 NextToken => Str

The token to use when requesting the next set of links.


=head2 _request_id => Str


=cut

