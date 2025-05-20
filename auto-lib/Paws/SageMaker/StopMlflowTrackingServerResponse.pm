
package Paws::SageMaker::StopMlflowTrackingServerResponse;
  use Moose;
  has TrackingServerArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::StopMlflowTrackingServerResponse

=head1 ATTRIBUTES


=head2 TrackingServerArn => Str

The ARN of the stopped tracking server.


=head2 _request_id => Str


=cut

1;