
package Paws::KinesisAnalyticsV2::StopApplicationResponse;
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::StopApplicationResponse

=head1 ATTRIBUTES


=head2 OperationId => Str

Operation ID for tracking StopApplication request


=head2 _request_id => Str


=cut

1;