
package Paws::SageMaker::CreateMlflowTrackingServerResponse;
  use Moose;
  has TrackingServerArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateMlflowTrackingServerResponse

=head1 ATTRIBUTES


=head2 TrackingServerArn => Str

The ARN of the tracking server.


=head2 _request_id => Str


=cut

1;