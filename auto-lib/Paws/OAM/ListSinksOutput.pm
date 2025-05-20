
package Paws::OAM::ListSinksOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::OAM::ListSinksItem]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM::ListSinksOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[L<Paws::OAM::ListSinksItem>]

An array of structures that contain the information about the returned
sinks.


=head2 NextToken => Str

The token to use when requesting the next set of sinks.


=head2 _request_id => Str


=cut

