
package Paws::CloudWatch::PutMetricAlarm;
  use Moose;
  has ActionsEnabled => (is => 'ro', isa => 'Bool');
  has AlarmActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AlarmDescription => (is => 'ro', isa => 'Str');
  has AlarmName => (is => 'ro', isa => 'Str', required => 1);
  has ComparisonOperator => (is => 'ro', isa => 'Str', required => 1);
  has DatapointsToAlarm => (is => 'ro', isa => 'Int');
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Dimension]');
  has EvaluateLowSampleCountPercentile => (is => 'ro', isa => 'Str');
  has EvaluationPeriods => (is => 'ro', isa => 'Int', required => 1);
  has ExtendedStatistic => (is => 'ro', isa => 'Str');
  has InsufficientDataActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricDataQuery]');
  has Namespace => (is => 'ro', isa => 'Str');
  has OKActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Period => (is => 'ro', isa => 'Int');
  has Statistic => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Tag]');
  has Threshold => (is => 'ro', isa => 'Num');
  has ThresholdMetricId => (is => 'ro', isa => 'Str');
  has TreatMissingData => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetricAlarm');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::PutMetricAlarm - Arguments for method PutMetricAlarm on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMetricAlarm on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method PutMetricAlarm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMetricAlarm.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    $monitoring->PutMetricAlarm(
      AlarmName          => 'MyAlarmName',
      ComparisonOperator => 'GreaterThanOrEqualToThreshold',
      EvaluationPeriods  => 1,
      ActionsEnabled     => 1,                                 # OPTIONAL
      AlarmActions       => [
        'MyResourceName', ...    # min: 1, max: 1024
      ],    # OPTIONAL
      AlarmDescription  => 'MyAlarmDescription',    # OPTIONAL
      DatapointsToAlarm => 1,                       # OPTIONAL
      Dimensions        => [
        {
          Name  => 'MyDimensionName',     # min: 1, max: 255
          Value => 'MyDimensionValue',    # min: 1, max: 1024

        },
        ...
      ],    # OPTIONAL
      EvaluateLowSampleCountPercentile =>
        'MyEvaluateLowSampleCountPercentile',    # OPTIONAL
      ExtendedStatistic       => 'MyExtendedStatistic',    # OPTIONAL
      InsufficientDataActions => [
        'MyResourceName', ...                              # min: 1, max: 1024
      ],    # OPTIONAL
      MetricName => 'MyMetricName',    # OPTIONAL
      Metrics    => [
        {
          Id         => 'MyMetricId',            # min: 1, max: 255
          AccountId  => 'MyAccountId',           # min: 1, max: 255; OPTIONAL
          Expression => 'MyMetricExpression',    # min: 1, max: 2048; OPTIONAL
          Label      => 'MyMetricLabel',         # OPTIONAL
          MetricStat => {
            Metric => {
              Dimensions => [
                {
                  Name  => 'MyDimensionName',     # min: 1, max: 255
                  Value => 'MyDimensionValue',    # min: 1, max: 1024

                },
                ...
              ],    # max: 30
              MetricName => 'MyMetricName',    # min: 1, max: 255
              Namespace  => 'MyNamespace',     # min: 1, max: 255; OPTIONAL
            },
            Period => 1,                       # min: 1
            Stat   => 'MyStat',
            Unit   => 'Seconds'
            , # values: Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None; OPTIONAL
          },    # OPTIONAL
          Period     => 1,    # min: 1
          ReturnData => 1,    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Namespace => 'MyNamespace',    # OPTIONAL
      OKActions => [
        'MyResourceName', ...        # min: 1, max: 1024
      ],    # OPTIONAL
      Period    => 1,                # OPTIONAL
      Statistic => 'SampleCount',    # OPTIONAL
      Tags      => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      Threshold         => 1,                       # OPTIONAL
      ThresholdMetricId => 'MyMetricId',            # OPTIONAL
      TreatMissingData  => 'MyTreatMissingData',    # OPTIONAL
      Unit              => 'Seconds',               # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/PutMetricAlarm>

=head1 ATTRIBUTES


=head2 ActionsEnabled => Bool

Indicates whether actions should be executed during any changes to the
alarm state. The default is C<TRUE>.



=head2 AlarmActions => ArrayRef[Str|Undef]

The actions to execute when this alarm transitions to the C<ALARM>
state from any other state. Each action is specified as an Amazon
Resource Name (ARN). Valid values:

B<EC2 actions:>

=over

=item *

C<arn:aws:automate:I<region>:ec2:stop>

=item *

C<arn:aws:automate:I<region>:ec2:terminate>

=item *

C<arn:aws:automate:I<region>:ec2:reboot>

=item *

C<arn:aws:automate:I<region>:ec2:recover>

=item *

C<arn:aws:swf:I<region>:I<account-id>:action/actions/AWS_EC2.InstanceId.Stop/1.0>

=item *

C<arn:aws:swf:I<region>:I<account-id>:action/actions/AWS_EC2.InstanceId.Terminate/1.0>

=item *

C<arn:aws:swf:I<region>:I<account-id>:action/actions/AWS_EC2.InstanceId.Reboot/1.0>

=item *

C<arn:aws:swf:I<region>:I<account-id>:action/actions/AWS_EC2.InstanceId.Recover/1.0>

=back

B<Autoscaling action:>

=over

=item *

C<arn:aws:autoscaling:I<region>:I<account-id>:scalingPolicy:I<policy-id>:autoScalingGroupName/I<group-friendly-name>:policyName/I<policy-friendly-name>>

=back

B<Lambda actions:>

=over

=item *

Invoke the latest version of a Lambda function:
C<arn:aws:lambda:I<region>:I<account-id>:function:I<function-name>>

=item *

Invoke a specific version of a Lambda function:
C<arn:aws:lambda:I<region>:I<account-id>:function:I<function-name>:I<version-number>>

=item *

Invoke a function by using an alias Lambda function:
C<arn:aws:lambda:I<region>:I<account-id>:function:I<function-name>:I<alias-name>>

=back

B<SNS notification action:>

=over

=item *

C<arn:aws:sns:I<region>:I<account-id>:I<sns-topic-name>>

=back

B<SSM integration actions:>

=over

=item *

C<arn:aws:ssm:I<region>:I<account-id>:opsitem:I<severity>#CATEGORY=I<category-name>>

=item *

C<arn:aws:ssm-incidents::I<account-id>:responseplan/I<response-plan-name>>

=back

B<Start a Amazon Q Developer operational investigation>

C<arn:aws:aiops:I<region>:I<account-id>:investigation-group:I<ingestigation-group-id>>



=head2 AlarmDescription => Str

The description for the alarm.



=head2 B<REQUIRED> AlarmName => Str

The name for the alarm. This name must be unique within the Region.

The name must contain only UTF-8 characters, and can't contain ASCII
control characters



=head2 B<REQUIRED> ComparisonOperator => Str

The arithmetic operation to use when comparing the specified statistic
and threshold. The specified statistic value is used as the first
operand.

The values C<LessThanLowerOrGreaterThanUpperThreshold>,
C<LessThanLowerThreshold>, and C<GreaterThanUpperThreshold> are used
only for alarms based on anomaly detection models.

Valid values are: C<"GreaterThanOrEqualToThreshold">, C<"GreaterThanThreshold">, C<"LessThanThreshold">, C<"LessThanOrEqualToThreshold">, C<"LessThanLowerOrGreaterThanUpperThreshold">, C<"LessThanLowerThreshold">, C<"GreaterThanUpperThreshold">

=head2 DatapointsToAlarm => Int

The number of data points that must be breaching to trigger the alarm.
This is used only if you are setting an "M out of N" alarm. In that
case, this value is the M. For more information, see Evaluating an
Alarm
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation)
in the I<Amazon CloudWatch User Guide>.



=head2 Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>]

The dimensions for the metric specified in C<MetricName>.



=head2 EvaluateLowSampleCountPercentile => Str

Used only for alarms based on percentiles. If you specify C<ignore>,
the alarm state does not change during periods with too few data points
to be statistically significant. If you specify C<evaluate> or omit
this parameter, the alarm is always evaluated and possibly changes
state no matter how many data points are available. For more
information, see Percentile-Based CloudWatch Alarms and Low Data
Samples
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#percentiles-with-low-samples).

Valid Values: C<evaluate | ignore>



=head2 B<REQUIRED> EvaluationPeriods => Int

The number of periods over which data is compared to the specified
threshold. If you are setting an alarm that requires that a number of
consecutive data points be breaching to trigger the alarm, this value
specifies that number. If you are setting an "M out of N" alarm, this
value is the N.

An alarm's total current evaluation period can be no longer than one
day, so this number multiplied by C<Period> cannot be more than 86,400
seconds.



=head2 ExtendedStatistic => Str

The extended statistic for the metric specified in C<MetricName>. When
you call C<PutMetricAlarm> and specify a C<MetricName>, you must
specify either C<Statistic> or C<ExtendedStatistic> but not both.

If you specify C<ExtendedStatistic>, the following are valid values:

=over

=item *

C<p90>

=item *

C<tm90>

=item *

C<tc90>

=item *

C<ts90>

=item *

C<wm90>

=item *

C<IQM>

=item *

C<PR(I<n>:I<m>)> where n and m are values of the metric

=item *

C<TC(I<X>%:I<X>%)> where X is between 10 and 90 inclusive.

=item *

C<TM(I<X>%:I<X>%)> where X is between 10 and 90 inclusive.

=item *

C<TS(I<X>%:I<X>%)> where X is between 10 and 90 inclusive.

=item *

C<WM(I<X>%:I<X>%)> where X is between 10 and 90 inclusive.

=back

For more information about these extended statistics, see CloudWatch
statistics definitions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html).



=head2 InsufficientDataActions => ArrayRef[Str|Undef]

The actions to execute when this alarm transitions to the
C<INSUFFICIENT_DATA> state from any other state. Each action is
specified as an Amazon Resource Name (ARN). Valid values:

B<EC2 actions:>

=over

=item *

C<arn:aws:automate:I<region>:ec2:stop>

=item *

C<arn:aws:automate:I<region>:ec2:terminate>

=item *

C<arn:aws:automate:I<region>:ec2:reboot>

=item *

C<arn:aws:automate:I<region>:ec2:recover>

=item *

C<arn:aws:swf:I<region>:I<account-id>:action/actions/AWS_EC2.InstanceId.Stop/1.0>

=item *

C<arn:aws:swf:I<region>:I<account-id>:action/actions/AWS_EC2.InstanceId.Terminate/1.0>

=item *

C<arn:aws:swf:I<region>:I<account-id>:action/actions/AWS_EC2.InstanceId.Reboot/1.0>

=item *

C<arn:aws:swf:I<region>:I<account-id>:action/actions/AWS_EC2.InstanceId.Recover/1.0>

=back

B<Autoscaling action:>

=over

=item *

C<arn:aws:autoscaling:I<region>:I<account-id>:scalingPolicy:I<policy-id>:autoScalingGroupName/I<group-friendly-name>:policyName/I<policy-friendly-name>>

=back

B<Lambda actions:>

=over

=item *

Invoke the latest version of a Lambda function:
C<arn:aws:lambda:I<region>:I<account-id>:function:I<function-name>>

=item *

Invoke a specific version of a Lambda function:
C<arn:aws:lambda:I<region>:I<account-id>:function:I<function-name>:I<version-number>>

=item *

Invoke a function by using an alias Lambda function:
C<arn:aws:lambda:I<region>:I<account-id>:function:I<function-name>:I<alias-name>>

=back

B<SNS notification action:>

=over

=item *

C<arn:aws:sns:I<region>:I<account-id>:I<sns-topic-name>>

=back

B<SSM integration actions:>

=over

=item *

C<arn:aws:ssm:I<region>:I<account-id>:opsitem:I<severity>#CATEGORY=I<category-name>>

=item *

C<arn:aws:ssm-incidents::I<account-id>:responseplan/I<response-plan-name>>

=back




=head2 MetricName => Str

The name for the metric associated with the alarm. For each
C<PutMetricAlarm> operation, you must specify either C<MetricName> or a
C<Metrics> array.

If you are creating an alarm based on a math expression, you cannot
specify this parameter, or any of the C<Namespace>, C<Dimensions>,
C<Period>, C<Unit>, C<Statistic>, or C<ExtendedStatistic> parameters.
Instead, you specify all this information in the C<Metrics> array.



=head2 Metrics => ArrayRef[L<Paws::CloudWatch::MetricDataQuery>]

An array of C<MetricDataQuery> structures that enable you to create an
alarm based on the result of a metric math expression. For each
C<PutMetricAlarm> operation, you must specify either C<MetricName> or a
C<Metrics> array.

Each item in the C<Metrics> array either retrieves a metric or performs
a math expression.

One item in the C<Metrics> array is the expression that the alarm
watches. You designate this expression by setting C<ReturnData> to true
for this object in the array. For more information, see MetricDataQuery
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDataQuery.html).

If you use the C<Metrics> parameter, you cannot include the
C<Namespace>, C<MetricName>, C<Dimensions>, C<Period>, C<Unit>,
C<Statistic>, or C<ExtendedStatistic> parameters of C<PutMetricAlarm>
in the same operation. Instead, you retrieve the metrics you are using
in your math expression as part of the C<Metrics> array.



=head2 Namespace => Str

The namespace for the metric associated specified in C<MetricName>.



=head2 OKActions => ArrayRef[Str|Undef]

The actions to execute when this alarm transitions to an C<OK> state
from any other state. Each action is specified as an Amazon Resource
Name (ARN). Valid values:

B<EC2 actions:>

=over

=item *

C<arn:aws:automate:I<region>:ec2:stop>

=item *

C<arn:aws:automate:I<region>:ec2:terminate>

=item *

C<arn:aws:automate:I<region>:ec2:reboot>

=item *

C<arn:aws:automate:I<region>:ec2:recover>

=item *

C<arn:aws:swf:I<region>:I<account-id>:action/actions/AWS_EC2.InstanceId.Stop/1.0>

=item *

C<arn:aws:swf:I<region>:I<account-id>:action/actions/AWS_EC2.InstanceId.Terminate/1.0>

=item *

C<arn:aws:swf:I<region>:I<account-id>:action/actions/AWS_EC2.InstanceId.Reboot/1.0>

=item *

C<arn:aws:swf:I<region>:I<account-id>:action/actions/AWS_EC2.InstanceId.Recover/1.0>

=back

B<Autoscaling action:>

=over

=item *

C<arn:aws:autoscaling:I<region>:I<account-id>:scalingPolicy:I<policy-id>:autoScalingGroupName/I<group-friendly-name>:policyName/I<policy-friendly-name>>

=back

B<Lambda actions:>

=over

=item *

Invoke the latest version of a Lambda function:
C<arn:aws:lambda:I<region>:I<account-id>:function:I<function-name>>

=item *

Invoke a specific version of a Lambda function:
C<arn:aws:lambda:I<region>:I<account-id>:function:I<function-name>:I<version-number>>

=item *

Invoke a function by using an alias Lambda function:
C<arn:aws:lambda:I<region>:I<account-id>:function:I<function-name>:I<alias-name>>

=back

B<SNS notification action:>

=over

=item *

C<arn:aws:sns:I<region>:I<account-id>:I<sns-topic-name>>

=back

B<SSM integration actions:>

=over

=item *

C<arn:aws:ssm:I<region>:I<account-id>:opsitem:I<severity>#CATEGORY=I<category-name>>

=item *

C<arn:aws:ssm-incidents::I<account-id>:responseplan/I<response-plan-name>>

=back




=head2 Period => Int

The length, in seconds, used each time the metric specified in
C<MetricName> is evaluated. Valid values are 10, 30, and any multiple
of 60.

C<Period> is required for alarms based on static thresholds. If you are
creating an alarm based on a metric math expression, you specify the
period for each metric within the objects in the C<Metrics> array.

Be sure to specify 10 or 30 only for metrics that are stored by a
C<PutMetricData> call with a C<StorageResolution> of 1. If you specify
a period of 10 or 30 for a metric that does not have sub-minute
resolution, the alarm still attempts to gather data at the period rate
that you specify. In this case, it does not receive data for the
attempts that do not correspond to a one-minute data resolution, and
the alarm might often lapse into INSUFFICENT_DATA status. Specifying 10
or 30 also sets this alarm as a high-resolution alarm, which has a
higher charge than other alarms. For more information about pricing,
see Amazon CloudWatch Pricing
(https://aws.amazon.com/cloudwatch/pricing/).

An alarm's total current evaluation period can be no longer than one
day, so C<Period> multiplied by C<EvaluationPeriods> cannot be more
than 86,400 seconds.



=head2 Statistic => Str

The statistic for the metric specified in C<MetricName>, other than
percentile. For percentile statistics, use C<ExtendedStatistic>. When
you call C<PutMetricAlarm> and specify a C<MetricName>, you must
specify either C<Statistic> or C<ExtendedStatistic,> but not both.

Valid values are: C<"SampleCount">, C<"Average">, C<"Sum">, C<"Minimum">, C<"Maximum">

=head2 Tags => ArrayRef[L<Paws::CloudWatch::Tag>]

A list of key-value pairs to associate with the alarm. You can
associate as many as 50 tags with an alarm. To be able to associate
tags with the alarm when you create the alarm, you must have the
C<cloudwatch:TagResource> permission.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.

If you are using this operation to update an existing alarm, any tags
you specify in this parameter are ignored. To change the tags of an
existing alarm, use TagResource
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html)
or UntagResource
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_UntagResource.html).

To use this field to set tags for an alarm when you create it, you must
be signed on with both the C<cloudwatch:PutMetricAlarm> and
C<cloudwatch:TagResource> permissions.



=head2 Threshold => Num

The value against which the specified statistic is compared.

This parameter is required for alarms based on static thresholds, but
should not be used for alarms based on anomaly detection models.



=head2 ThresholdMetricId => Str

If this is an alarm based on an anomaly detection model, make this
value match the ID of the C<ANOMALY_DETECTION_BAND> function.

For an example of how to use this parameter, see the B<Anomaly
Detection Model Alarm> example on this page.

If your alarm uses this parameter, it cannot have Auto Scaling actions.



=head2 TreatMissingData => Str

Sets how this alarm is to handle missing data points. If
C<TreatMissingData> is omitted, the default behavior of C<missing> is
used. For more information, see Configuring How CloudWatch Alarms
Treats Missing Data
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data).

Valid Values: C<breaching | notBreaching | ignore | missing>

Alarms that evaluate metrics in the C<AWS/DynamoDB> namespace always
C<ignore> missing data even if you choose a different option for
C<TreatMissingData>. When an C<AWS/DynamoDB> metric has missing data,
alarms that evaluate that metric remain in their current state.



=head2 Unit => Str

The unit of measure for the statistic. For example, the units for the
Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks the
number of bytes that an instance receives on all network interfaces.
You can also specify a unit when you create a custom metric. Units help
provide conceptual meaning to your data. Metric data points that
specify a unit of measure, such as Percent, are aggregated separately.
If you are creating an alarm based on a metric math expression, you can
specify the unit for each metric (if needed) within the objects in the
C<Metrics> array.

If you don't specify C<Unit>, CloudWatch retrieves all unit types that
have been published for the metric and attempts to evaluate the alarm.
Usually, metrics are published with only one unit, so the alarm works
as intended.

However, if the metric is published with multiple types of units and
you don't specify a unit, the alarm's behavior is not defined and it
behaves unpredictably.

We recommend omitting C<Unit> so that you don't inadvertently specify
an incorrect unit that is not published for this metric. Doing so
causes the alarm to be stuck in the C<INSUFFICIENT DATA> state.

Valid values are: C<"Seconds">, C<"Microseconds">, C<"Milliseconds">, C<"Bytes">, C<"Kilobytes">, C<"Megabytes">, C<"Gigabytes">, C<"Terabytes">, C<"Bits">, C<"Kilobits">, C<"Megabits">, C<"Gigabits">, C<"Terabits">, C<"Percent">, C<"Count">, C<"Bytes/Second">, C<"Kilobytes/Second">, C<"Megabytes/Second">, C<"Gigabytes/Second">, C<"Terabytes/Second">, C<"Bits/Second">, C<"Kilobits/Second">, C<"Megabits/Second">, C<"Gigabits/Second">, C<"Terabits/Second">, C<"Count/Second">, C<"None">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMetricAlarm in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

