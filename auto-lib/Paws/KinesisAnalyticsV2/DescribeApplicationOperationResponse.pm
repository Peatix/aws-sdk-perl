
package Paws::KinesisAnalyticsV2::DescribeApplicationOperationResponse;
  use Moose;
  has ApplicationOperationInfoDetails => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ApplicationOperationInfoDetails');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DescribeApplicationOperationResponse

=head1 ATTRIBUTES


=head2 ApplicationOperationInfoDetails => L<Paws::KinesisAnalyticsV2::ApplicationOperationInfoDetails>




=head2 _request_id => Str


=cut

1;