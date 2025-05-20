
package Paws::WorkMail::DescribeEmailMonitoringConfigurationResponse;
  use Moose;
  has LogGroupArn => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeEmailMonitoringConfigurationResponse

=head1 ATTRIBUTES


=head2 LogGroupArn => Str

The Amazon Resource Name (ARN) of the CloudWatch Log group associated
with the email monitoring configuration.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM Role associated with the
email monitoring configuration.


=head2 _request_id => Str


=cut

1;