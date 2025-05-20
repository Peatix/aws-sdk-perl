
package Paws::KinesisAnalyticsV2::DeleteApplicationVpcConfigurationResponse;
  use Moose;
  has ApplicationARN => (is => 'ro', isa => 'Str');
  has ApplicationVersionId => (is => 'ro', isa => 'Int');
  has OperationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DeleteApplicationVpcConfigurationResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The ARN of the Managed Service for Apache Flink application.


=head2 ApplicationVersionId => Int

The updated version ID of the application.


=head2 OperationId => Str

Operation ID for tracking DeleteApplicationVpcConfiguration request


=head2 _request_id => Str


=cut

1;