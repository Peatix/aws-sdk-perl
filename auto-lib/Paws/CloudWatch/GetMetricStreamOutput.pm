
package Paws::CloudWatch::GetMetricStreamOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has ExcludeFilters => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricStreamFilter]');
  has FirehoseArn => (is => 'ro', isa => 'Str');
  has IncludeFilters => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricStreamFilter]');
  has IncludeLinkedAccountsMetrics => (is => 'ro', isa => 'Bool');
  has LastUpdateDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OutputFormat => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StatisticsConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricStreamStatisticsConfiguration]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::GetMetricStreamOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the metric stream.


=head2 CreationDate => Str

The date that the metric stream was created.


=head2 ExcludeFilters => ArrayRef[L<Paws::CloudWatch::MetricStreamFilter>]

If this array of metric namespaces is present, then these namespaces
are the only metric namespaces that are not streamed by this metric
stream. In this case, all other metric namespaces in the account are
streamed by this metric stream.


=head2 FirehoseArn => Str

The ARN of the Amazon Kinesis Data Firehose delivery stream that is
used by this metric stream.


=head2 IncludeFilters => ArrayRef[L<Paws::CloudWatch::MetricStreamFilter>]

If this array of metric namespaces is present, then these namespaces
are the only metric namespaces that are streamed by this metric stream.


=head2 IncludeLinkedAccountsMetrics => Bool

If this is C<true> and this metric stream is in a monitoring account,
then the stream includes metrics from source accounts that the
monitoring account is linked to.


=head2 LastUpdateDate => Str

The date of the most recent update to the metric stream's
configuration.


=head2 Name => Str

The name of the metric stream.


=head2 OutputFormat => Str

The output format for the stream. Valid values are C<json>,
C<opentelemetry1.0>, and C<opentelemetry0.7>. For more information
about metric stream output formats, see Metric streams output formats
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-formats.html).

Valid values are: C<"json">, C<"opentelemetry0.7">, C<"opentelemetry1.0">
=head2 RoleArn => Str

The ARN of the IAM role that is used by this metric stream.


=head2 State => Str

The state of the metric stream. The possible values are C<running> and
C<stopped>.


=head2 StatisticsConfigurations => ArrayRef[L<Paws::CloudWatch::MetricStreamStatisticsConfiguration>]

Each entry in this array displays information about one or more metrics
that include additional statistics in the metric stream. For more
information about the additional statistics, see CloudWatch statistics
definitions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html.html).


=head2 _request_id => Str


=cut

