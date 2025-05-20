
package Paws::Rekognition::ListProjectPoliciesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProjectPolicies => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::ProjectPolicy]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListProjectPoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Rekognition returns this token
that you can use in the subsequent request to retrieve the next set of
project policies.


=head2 ProjectPolicies => ArrayRef[L<Paws::Rekognition::ProjectPolicy>]

A list of project policies attached to the project.


=head2 _request_id => Str


=cut

1;