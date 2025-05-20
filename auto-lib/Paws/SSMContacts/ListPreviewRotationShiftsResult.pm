
package Paws::SSMContacts::ListPreviewRotationShiftsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RotationShifts => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::RotationShift]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListPreviewRotationShiftsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. This token is used to
get the next set of results.


=head2 RotationShifts => ArrayRef[L<Paws::SSMContacts::RotationShift>]

Details about a rotation shift, including times, types, and contacts.


=head2 _request_id => Str


=cut

1;