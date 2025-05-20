
package Paws::CloudWatchLogs::CreateLogGroup;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId' );
  has LogGroupClass => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupClass' );
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' , required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CloudWatchLogs::Tags', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLogGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::CreateLogGroup - Arguments for method CreateLogGroup on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLogGroup on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method CreateLogGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLogGroup.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    $logs->CreateLogGroup(
      LogGroupName  => 'MyLogGroupName',
      KmsKeyId      => 'MyKmsKeyId',       # OPTIONAL
      LogGroupClass => 'STANDARD',         # OPTIONAL
      Tags          => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/CreateLogGroup>

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

The Amazon Resource Name (ARN) of the KMS key to use when encrypting
log data. For more information, see Amazon Resource Names
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms).



=head2 LogGroupClass => Str

Use this parameter to specify the log group class for this log group.
There are three classes:

=over

=item *

The C<Standard> log class supports all CloudWatch Logs features.

=item *

The C<Infrequent Access> log class supports a subset of CloudWatch Logs
features and incurs lower costs.

=item *

Use the C<Delivery> log class only for delivering Lambda logs to store
in Amazon S3 or Amazon Data Firehose. Log events in log groups in the
Delivery class are kept in CloudWatch Logs for only one day. This log
class doesn't offer rich CloudWatch Logs capabilities such as
CloudWatch Logs Insights queries.

=back

If you omit this parameter, the default of C<STANDARD> is used.

The value of C<logGroupClass> can't be changed after a log group is
created.

For details about the features supported by each class, see Log classes
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch_Logs_Log_Classes.html)

Valid values are: C<"STANDARD">, C<"INFREQUENT_ACCESS">, C<"DELIVERY">

=head2 B<REQUIRED> LogGroupName => Str

A name for the log group.



=head2 Tags => L<Paws::CloudWatchLogs::Tags>

The key-value pairs to use for the tags.

You can grant users access to certain log groups while preventing them
from accessing other log groups. To do so, tag your groups and use IAM
policies that refer to those tags. To assign tags when you create a log
group, you must have either the C<logs:TagResource> or
C<logs:TagLogGroup> permission. For more information about tagging, see
Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html). For
more information about using tags to control access, see Controlling
access to Amazon Web Services resources using tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLogGroup in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

