
package Paws::CustomerProfiles::BatchGetProfileResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::BatchGetProfileError]');
  has Profiles => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::Profile]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::BatchGetProfileResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::CustomerProfiles::BatchGetProfileError>]

For information about the errors that are common to all actions, see
Common Errors
(https://docs.aws.amazon.com/connect/latest/APIReference/CommonErrors.html).


=head2 Profiles => ArrayRef[L<Paws::CustomerProfiles::Profile>]

Array of Profile Objects.


=head2 _request_id => Str


=cut

