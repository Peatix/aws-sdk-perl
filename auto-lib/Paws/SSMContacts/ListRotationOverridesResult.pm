
package Paws::SSMContacts::ListRotationOverridesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RotationOverrides => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::RotationOverride]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListRotationOverridesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 RotationOverrides => ArrayRef[L<Paws::SSMContacts::RotationOverride>]

A list of rotation overrides in the specified time range.


=head2 _request_id => Str


=cut

1;