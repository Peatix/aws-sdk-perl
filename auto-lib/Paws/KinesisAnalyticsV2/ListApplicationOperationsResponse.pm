
package Paws::KinesisAnalyticsV2::ListApplicationOperationsResponse;
  use Moose;
  has ApplicationOperationInfoList => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::ApplicationOperationInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ListApplicationOperationsResponse

=head1 ATTRIBUTES


=head2 ApplicationOperationInfoList => ArrayRef[L<Paws::KinesisAnalyticsV2::ApplicationOperationInfo>]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;