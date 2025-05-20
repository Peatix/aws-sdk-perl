
package Paws::KinesisAnalyticsV2::RollbackApplicationResponse;
  use Moose;
  has ApplicationDetail => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ApplicationDetail', required => 1);
  has OperationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::RollbackApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationDetail => L<Paws::KinesisAnalyticsV2::ApplicationDetail>




=head2 OperationId => Str

Operation ID for tracking RollbackApplication request


=head2 _request_id => Str


=cut

1;