
package Paws::SageMaker::DeleteMlflowTrackingServerResponse;
  use Moose;
  has TrackingServerArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeleteMlflowTrackingServerResponse

=head1 ATTRIBUTES


=head2 TrackingServerArn => Str

A C<TrackingServerArn> object, the ARN of the tracking server that is
deleted if successfully found.


=head2 _request_id => Str


=cut

1;