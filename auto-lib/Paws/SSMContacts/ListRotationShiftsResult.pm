
package Paws::SSMContacts::ListRotationShiftsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RotationShifts => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::RotationShift]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListRotationShiftsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 RotationShifts => ArrayRef[L<Paws::SSMContacts::RotationShift>]

Information about shifts that meet the filter criteria.


=head2 _request_id => Str


=cut

1;