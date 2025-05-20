
package Paws::ECS::PutAccountSettingDefault;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Value => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'value' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAccountSettingDefault');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::PutAccountSettingDefaultResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::PutAccountSettingDefault - Arguments for method PutAccountSettingDefault on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAccountSettingDefault on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method PutAccountSettingDefault.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAccountSettingDefault.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
# To modify the default account settings for all IAM users or roles on an account
# This example modifies the default account setting for the specified resource
# for all IAM users or roles on an account. These changes apply to the entire
# AWS account, unless an IAM user or role explicitly overrides these settings
# for themselves.
    my $PutAccountSettingDefaultResponse = $ecs->PutAccountSettingDefault(
      'Name'  => 'serviceLongArnFormat',
      'Value' => 'enabled'
    );

    # Results:
    my $setting = $PutAccountSettingDefaultResponse->setting;

    # Returns a L<Paws::ECS::PutAccountSettingDefaultResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/PutAccountSettingDefault>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The resource name for which to modify the account setting.

The following are the valid values for the account setting name.

=over

=item *

C<serviceLongArnFormat> - When modified, the Amazon Resource Name (ARN)
and resource ID format of the resource type for a specified user, role,
or the root user for an account is affected. The opt-in and opt-out
account setting must be set for each Amazon ECS resource separately.
The ARN and resource ID format of a resource is defined by the opt-in
status of the user or role that created the resource. You must turn on
this setting to use Amazon ECS features such as resource tagging.

=item *

C<taskLongArnFormat> - When modified, the Amazon Resource Name (ARN)
and resource ID format of the resource type for a specified user, role,
or the root user for an account is affected. The opt-in and opt-out
account setting must be set for each Amazon ECS resource separately.
The ARN and resource ID format of a resource is defined by the opt-in
status of the user or role that created the resource. You must turn on
this setting to use Amazon ECS features such as resource tagging.

=item *

C<containerInstanceLongArnFormat> - When modified, the Amazon Resource
Name (ARN) and resource ID format of the resource type for a specified
user, role, or the root user for an account is affected. The opt-in and
opt-out account setting must be set for each Amazon ECS resource
separately. The ARN and resource ID format of a resource is defined by
the opt-in status of the user or role that created the resource. You
must turn on this setting to use Amazon ECS features such as resource
tagging.

=item *

C<awsvpcTrunking> - When modified, the elastic network interface (ENI)
limit for any new container instances that support the feature is
changed. If C<awsvpcTrunking> is turned on, any new container instances
that support the feature are launched have the increased ENI limits
available to them. For more information, see Elastic Network Interface
Trunking
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-eni.html)
in the I<Amazon Elastic Container Service Developer Guide>.

=item *

C<containerInsights> - Container Insights with enhanced observability
provides all the Container Insights metrics, plus additional task and
container metrics. This version supports enhanced observability for
Amazon ECS clusters using the Amazon EC2 and Fargate launch types.
After you configure Container Insights with enhanced observability on
Amazon ECS, Container Insights auto-collects detailed infrastructure
telemetry from the cluster level down to the container level in your
environment and displays these critical performance data in curated
dashboards removing the heavy lifting in observability set-up.

To use Container Insights with enhanced observability, set the
C<containerInsights> account setting to C<enhanced>.

To use Container Insights, set the C<containerInsights> account setting
to C<enabled>.

For more information, see Monitor Amazon ECS containers using Container
Insights with enhanced observability
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-container-insights.html)
in the I<Amazon Elastic Container Service Developer Guide>.

=item *

C<dualStackIPv6> - When turned on, when using a VPC in dual stack mode,
your tasks using the C<awsvpc> network mode can have an IPv6 address
assigned. For more information on using IPv6 with tasks launched on
Amazon EC2 instances, see Using a VPC in dual-stack mode
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking-awsvpc.html#task-networking-vpc-dual-stack).
For more information on using IPv6 with tasks launched on Fargate, see
Using a VPC in dual-stack mode
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-task-networking.html#fargate-task-networking-vpc-dual-stack).

=item *

C<fargateFIPSMode> - If you specify C<fargateFIPSMode>, Fargate FIPS
140 compliance is affected.

=item *

C<fargateTaskRetirementWaitPeriod> - When Amazon Web Services
determines that a security or infrastructure update is needed for an
Amazon ECS task hosted on Fargate, the tasks need to be stopped and new
tasks launched to replace them. Use C<fargateTaskRetirementWaitPeriod>
to configure the wait time to retire a Fargate task. For information
about the Fargate tasks maintenance, see Amazon Web Services Fargate
task maintenance
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-maintenance.html)
in the I<Amazon ECS Developer Guide>.

=item *

C<tagResourceAuthorization> - Amazon ECS is introducing tagging
authorization for resource creation. Users must have permissions for
actions that create the resource, such as C<ecsCreateCluster>. If tags
are specified when you create a resource, Amazon Web Services performs
additional authorization to verify if users or roles have permissions
to create tags. Therefore, you must grant explicit permissions to use
the C<ecs:TagResource> action. For more information, see Grant
permission to tag resources on creation
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/supported-iam-actions-tagging.html)
in the I<Amazon ECS Developer Guide>.

=item *

C<defaultLogDriverMode> -Amazon ECS supports setting a default delivery
mode of log messages from a container to the C<logDriver> that you
specify in the container's C<logConfiguration>. The delivery mode
affects application stability when the flow of logs from the container
to the log driver is interrupted. The C<defaultLogDriverMode> setting
supports two values: C<blocking> and C<non-blocking>. If you don't
specify a delivery mode in your container definition's
C<logConfiguration>, the mode you specify using this account setting
will be used as the default. For more information about log delivery
modes, see LogConfiguration
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_LogConfiguration.html).

=item *

C<guardDutyActivate> - The C<guardDutyActivate> parameter is read-only
in Amazon ECS and indicates whether Amazon ECS Runtime Monitoring is
enabled or disabled by your security administrator in your Amazon ECS
account. Amazon GuardDuty controls this account setting on your behalf.
For more information, see Protecting Amazon ECS workloads with Amazon
ECS Runtime Monitoring
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-guard-duty-integration.html).

=back


Valid values are: C<"serviceLongArnFormat">, C<"taskLongArnFormat">, C<"containerInstanceLongArnFormat">, C<"awsvpcTrunking">, C<"containerInsights">, C<"fargateFIPSMode">, C<"tagResourceAuthorization">, C<"fargateTaskRetirementWaitPeriod">, C<"guardDutyActivate">, C<"defaultLogDriverMode">

=head2 B<REQUIRED> Value => Str

The account setting value for the specified principal ARN. Accepted
values are C<enabled>, C<disabled>, C<on>, C<enhanced>, and C<off>.

When you specify C<fargateTaskRetirementWaitPeriod> for the C<name>,
the following are the valid values:

=over

=item *

C<0> - Amazon Web Services sends the notification, and immediately
retires the affected tasks.

=item *

C<7> - Amazon Web Services sends the notification, and waits 7 calendar
days to retire the tasks.

=item *

C<14> - Amazon Web Services sends the notification, and waits 14
calendar days to retire the tasks.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAccountSettingDefault in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

