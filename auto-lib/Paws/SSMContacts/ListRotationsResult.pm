
package Paws::SSMContacts::ListRotationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Rotations => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::Rotation]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListRotationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 B<REQUIRED> Rotations => ArrayRef[L<Paws::SSMContacts::Rotation>]

Information about rotations that meet the filter criteria.


=head2 _request_id => Str


=cut

1;