
package Paws::RedshiftServerless::UpdateScheduledAction;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enabled' );
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' );
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' );
  has Schedule => (is => 'ro', isa => 'Paws::RedshiftServerless::Schedule', traits => ['NameInRequest'], request_name => 'schedule' );
  has ScheduledActionDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scheduledActionDescription' );
  has ScheduledActionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scheduledActionName' , required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' );
  has TargetAction => (is => 'ro', isa => 'Paws::RedshiftServerless::TargetAction', traits => ['NameInRequest'], request_name => 'targetAction' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateScheduledAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::UpdateScheduledActionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::UpdateScheduledAction - Arguments for method UpdateScheduledAction on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateScheduledAction on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method UpdateScheduledAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateScheduledAction.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $UpdateScheduledActionResponse =
      $redshift -serverless->UpdateScheduledAction(
      ScheduledActionName => 'MyScheduledActionName',
      Enabled             => 1,                         # OPTIONAL
      EndTime             => '1970-01-01T01:00:00',     # OPTIONAL
      RoleArn             => 'MyIamRoleArn',            # OPTIONAL
      Schedule            => {
        At   => '1970-01-01T01:00:00',
        Cron => 'MyString',                             # OPTIONAL
      },    # OPTIONAL
      ScheduledActionDescription => 'MyString',               # OPTIONAL
      StartTime                  => '1970-01-01T01:00:00',    # OPTIONAL
      TargetAction               => {
        CreateSnapshot => {
          NamespaceName      => 'MyNamespaceName',         # min: 3, max: 64
          SnapshotNamePrefix => 'MySnapshotNamePrefix',    # min: 1, max: 235
          RetentionPeriod    => 1,                         # OPTIONAL
          Tags               => [
            {
              Key   => 'MyTagKey',      # min: 1, max: 128
              Value => 'MyTagValue',    # max: 256

            },
            ...
          ],    # max: 200; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $ScheduledAction = $UpdateScheduledActionResponse->ScheduledAction;

  # Returns a L<Paws::RedshiftServerless::UpdateScheduledActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/UpdateScheduledAction>

=head1 ATTRIBUTES


=head2 Enabled => Bool

Specifies whether to enable the scheduled action.



=head2 EndTime => Str

The end time in UTC of the scheduled action to update.



=head2 RoleArn => Str

The ARN of the IAM role to assume to run the scheduled action. This IAM
role must have permission to run the Amazon Redshift Serverless API
operation in the scheduled action. This IAM role must allow the Amazon
Redshift scheduler to schedule creating snapshots (Principal
scheduler.redshift.amazonaws.com) to assume permissions on your behalf.
For more information about the IAM role to use with the Amazon Redshift
scheduler, see Using Identity-Based Policies for Amazon Redshift
(https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html)
in the Amazon Redshift Management Guide



=head2 Schedule => L<Paws::RedshiftServerless::Schedule>

The schedule for a one-time (at timestamp format) or recurring (cron
format) scheduled action. Schedule invocations must be separated by at
least one hour. Times are in UTC.

=over

=item *

Format of at timestamp is C<yyyy-mm-ddThh:mm:ss>. For example,
C<2016-03-04T17:27:00>.

=item *

Format of cron expression is C<(Minutes Hours Day-of-month Month
Day-of-week Year)>. For example, C<"(0 10 ? * MON *)">. For more
information, see Cron Expressions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions)
in the I<Amazon CloudWatch Events User Guide>.

=back




=head2 ScheduledActionDescription => Str

The descripion of the scheduled action to update to.



=head2 B<REQUIRED> ScheduledActionName => Str

The name of the scheduled action to update to.



=head2 StartTime => Str

The start time in UTC of the scheduled action to update to.



=head2 TargetAction => L<Paws::RedshiftServerless::TargetAction>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateScheduledAction in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

