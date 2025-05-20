
package Paws::SageMaker::CreatePresignedMlflowTrackingServerUrlResponse;
  use Moose;
  has AuthorizedUrl => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreatePresignedMlflowTrackingServerUrlResponse

=head1 ATTRIBUTES


=head2 AuthorizedUrl => Str

A presigned URL with an authorization token.


=head2 _request_id => Str


=cut

1;