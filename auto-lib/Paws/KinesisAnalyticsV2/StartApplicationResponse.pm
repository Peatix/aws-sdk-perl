
package Paws::KinesisAnalyticsV2::StartApplicationResponse;
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::StartApplicationResponse

=head1 ATTRIBUTES


=head2 OperationId => Str

Operation ID for tracking StartApplication request


=head2 _request_id => Str


=cut

1;