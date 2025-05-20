
package Paws::SageMaker::UpdateMlflowTrackingServerResponse;
  use Moose;
  has TrackingServerArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateMlflowTrackingServerResponse

=head1 ATTRIBUTES


=head2 TrackingServerArn => Str

The ARN of the updated MLflow Tracking Server.


=head2 _request_id => Str


=cut

1;