
package Paws::Rekognition::PutProjectPolicyResponse;
  use Moose;
  has PolicyRevisionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::PutProjectPolicyResponse

=head1 ATTRIBUTES


=head2 PolicyRevisionId => Str

The ID of the project policy.


=head2 _request_id => Str


=cut

1;