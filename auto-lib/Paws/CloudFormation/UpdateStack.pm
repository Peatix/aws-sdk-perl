
package Paws::CloudFormation::UpdateStack;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DisableRollback => (is => 'ro', isa => 'Bool');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RetainExceptOnCreate => (is => 'ro', isa => 'Bool');
  has RoleARN => (is => 'ro', isa => 'Str');
  has RollbackConfiguration => (is => 'ro', isa => 'Paws::CloudFormation::RollbackConfiguration');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackPolicyBody => (is => 'ro', isa => 'Str');
  has StackPolicyDuringUpdateBody => (is => 'ro', isa => 'Str');
  has StackPolicyDuringUpdateURL => (is => 'ro', isa => 'Str');
  has StackPolicyURL => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');
  has UsePreviousTemplate => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::UpdateStackOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStackResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::UpdateStack - Arguments for method UpdateStack on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStack on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method UpdateStack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStack.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $UpdateStackOutput = $cloudformation->UpdateStack(
      StackName    => 'MyStackName',
      Capabilities => [
        'CAPABILITY_IAM',
        ... # values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
      ],    # OPTIONAL
      ClientRequestToken => 'MyClientRequestToken',          # OPTIONAL
      DisableRollback    => 1,                               # OPTIONAL
      NotificationARNs   => [ 'MyNotificationARN', ... ],    # OPTIONAL
      Parameters         => [
        {
          ParameterKey     => 'MyParameterKey',      # OPTIONAL
          ParameterValue   => 'MyParameterValue',    # OPTIONAL
          ResolvedValue    => 'MyParameterValue',    # OPTIONAL
          UsePreviousValue => 1,                     # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ResourceTypes => [
        'MyResourceType', ...    # min: 1, max: 256
      ],    # OPTIONAL
      RetainExceptOnCreate  => 1,              # OPTIONAL
      RoleARN               => 'MyRoleARN',    # OPTIONAL
      RollbackConfiguration => {
        MonitoringTimeInMinutes => 1,          # max: 180; OPTIONAL
        RollbackTriggers        => [
          {
            Arn  => 'MyArn',
            Type => 'MyType',

          },
          ...
        ],                                     # max: 5; OPTIONAL
      },    # OPTIONAL
      StackPolicyBody             => 'MyStackPolicyBody',             # OPTIONAL
      StackPolicyDuringUpdateBody => 'MyStackPolicyDuringUpdateBody', # OPTIONAL
      StackPolicyDuringUpdateURL  => 'MyStackPolicyDuringUpdateURL',  # OPTIONAL
      StackPolicyURL              => 'MyStackPolicyURL',              # OPTIONAL
      Tags                        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
      TemplateBody        => 'MyTemplateBody',    # OPTIONAL
      TemplateURL         => 'MyTemplateURL',     # OPTIONAL
      UsePreviousTemplate => 1,                   # OPTIONAL
    );

    # Results:
    my $StackId = $UpdateStackOutput->StackId;

    # Returns a L<Paws::CloudFormation::UpdateStackOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/UpdateStack>

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

In some cases, you must explicitly acknowledge that your stack template
contains certain capabilities in order for CloudFormation to update the
stack.

=over

=item *

C<CAPABILITY_IAM> and C<CAPABILITY_NAMED_IAM>

Some stack templates might include resources that can affect
permissions in your Amazon Web Services account, for example, by
creating new IAM users. For those stacks, you must explicitly
acknowledge this by specifying one of these capabilities.

The following IAM resources require you to specify either the
C<CAPABILITY_IAM> or C<CAPABILITY_NAMED_IAM> capability.

=over

=item *

If you have IAM resources, you can specify either capability.

=item *

If you have IAM resources with custom names, you I<must> specify
C<CAPABILITY_NAMED_IAM>.

=item *

If you don't specify either of these capabilities, CloudFormation
returns an C<InsufficientCapabilities> error.

=back

If your stack template contains these resources, we suggest that you
review all permissions associated with them and edit their permissions
if necessary.

=over

=item *

AWS::IAM::AccessKey
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-accesskey.html)

=item *

AWS::IAM::Group
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-group.html)

=item *

AWS::IAM::InstanceProfile
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html)

=item *

AWS::IAM::ManagedPolicy
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html)

=item *

AWS::IAM::Policy
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html)

=item *

AWS::IAM::Role
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html)

=item *

AWS::IAM::User
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-user.html)

=item *

AWS::IAM::UserToGroupAddition
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-usertogroupaddition.html)

=back

For more information, see Acknowledging IAM resources in CloudFormation
templates
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities).

=item *

C<CAPABILITY_AUTO_EXPAND>

Some template contain macros. Macros perform custom processing on
templates; this can include simple actions like find-and-replace
operations, all the way to extensive transformations of entire
templates. Because of this, users typically create a change set from
the processed template, so that they can review the changes resulting
from the macros before actually updating the stack. If your stack
template contains one or more macros, and you choose to update a stack
directly from the processed template, without first reviewing the
resulting changes in a change set, you must acknowledge this
capability. This includes the AWS::Include
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html)
and AWS::Serverless
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html)
transforms, which are macros hosted by CloudFormation.

If you want to update a stack from a stack template that contains
macros I<and> nested stacks, you must update the stack directly from
the template using this capability.

You should only update stacks directly from a stack template that
contains macros if you know what processing the macro performs.

Each macro relies on an underlying Lambda service function for
processing stack templates. Be aware that the Lambda function owner can
update the function operation without CloudFormation being notified.

For more information, see Perform custom processing on CloudFormation
templates with template macros
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html).

=back

Only one of the C<Capabilities> and C<ResourceType> parameters can be
specified.



=head2 ClientRequestToken => Str

A unique identifier for this C<UpdateStack> request. Specify this token
if you plan to retry requests so that CloudFormation knows that you're
not attempting to update a stack with the same name. You might retry
C<UpdateStack> requests to ensure that CloudFormation successfully
received them.

All events triggered by a given stack operation are assigned the same
client request token, which you can use to track operations. For
example, if you execute a C<CreateStack> operation with the token
C<token1>, then all the C<StackEvents> generated by that operation will
have C<ClientRequestToken> set as C<token1>.

In the console, stack operations display the client request token on
the Events tab. Stack operations that are initiated from the console
use the token format I<Console-StackOperation-ID>, which helps you
easily identify the stack operation . For example, if you create a
stack using the console, each stack event would be assigned the same
token in the following format:
C<Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002>.



=head2 DisableRollback => Bool

Preserve the state of previously provisioned resources when an
operation fails.

Default: C<False>



=head2 NotificationARNs => ArrayRef[Str|Undef]

Amazon Simple Notification Service topic Amazon Resource Names (ARNs)
that CloudFormation associates with the stack. Specify an empty list to
remove all notification topics.



=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

A list of C<Parameter> structures that specify input parameters for the
stack. For more information, see the Parameter
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html)
data type.



=head2 ResourceTypes => ArrayRef[Str|Undef]

The template resource types that you have permissions to work with for
this update stack action, such as C<AWS::EC2::Instance>,
C<AWS::EC2::*>, or C<Custom::MyCustomInstance>.

If the list of resource types doesn't include a resource that you're
updating, the stack update fails. By default, CloudFormation grants
permissions to all resource types. IAM uses this parameter for
CloudFormation-specific condition keys in IAM policies. For more
information, see Control access with Identity and Access Management
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html).

Only one of the C<Capabilities> and C<ResourceType> parameters can be
specified.



=head2 RetainExceptOnCreate => Bool

When set to C<true>, newly created resources are deleted when the
operation rolls back. This includes newly created resources marked with
a deletion policy of C<Retain>.

Default: C<false>



=head2 RoleARN => Str

The Amazon Resource Name (ARN) of an IAM role that CloudFormation
assumes to update the stack. CloudFormation uses the role's credentials
to make calls on your behalf. CloudFormation always uses this role for
all future operations on the stack. Provided that users have permission
to operate on the stack, CloudFormation uses this role even if the
users don't have permission to pass it. Ensure that the role grants
least privilege.

If you don't specify a value, CloudFormation uses the role that was
previously associated with the stack. If no role is available,
CloudFormation uses a temporary session that is generated from your
user credentials.



=head2 RollbackConfiguration => L<Paws::CloudFormation::RollbackConfiguration>

The rollback triggers for CloudFormation to monitor during stack
creation and updating operations, and for the specified monitoring
period afterwards.



=head2 B<REQUIRED> StackName => Str

The name or unique stack ID of the stack to update.



=head2 StackPolicyBody => Str

Structure containing a new stack policy body. You can specify either
the C<StackPolicyBody> or the C<StackPolicyURL> parameter, but not
both.

You might update the stack policy, for example, in order to protect a
new resource that you created during a stack update. If you don't
specify a stack policy, the current policy that is associated with the
stack is unchanged.



=head2 StackPolicyDuringUpdateBody => Str

Structure containing the temporary overriding stack policy body. You
can specify either the C<StackPolicyDuringUpdateBody> or the
C<StackPolicyDuringUpdateURL> parameter, but not both.

If you want to update protected resources, specify a temporary
overriding stack policy during this update. If you don't specify a
stack policy, the current policy that is associated with the stack will
be used.



=head2 StackPolicyDuringUpdateURL => Str

Location of a file containing the temporary overriding stack policy.
The URL must point to a policy (max size: 16KB) located in an S3 bucket
in the same Region as the stack. The location for an Amazon S3 bucket
must start with C<https://>. You can specify either the
C<StackPolicyDuringUpdateBody> or the C<StackPolicyDuringUpdateURL>
parameter, but not both.

If you want to update protected resources, specify a temporary
overriding stack policy during this update. If you don't specify a
stack policy, the current policy that is associated with the stack will
be used.



=head2 StackPolicyURL => Str

Location of a file containing the updated stack policy. The URL must
point to a policy (max size: 16KB) located in an S3 bucket in the same
Region as the stack. The location for an Amazon S3 bucket must start
with C<https://>. You can specify either the C<StackPolicyBody> or the
C<StackPolicyURL> parameter, but not both.

You might update the stack policy, for example, in order to protect a
new resource that you created during a stack update. If you don't
specify a stack policy, the current policy that is associated with the
stack is unchanged.



=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

Key-value pairs to associate with this stack. CloudFormation also
propagates these tags to supported resources in the stack. You can
specify a maximum number of 50 tags.

If you don't specify this parameter, CloudFormation doesn't modify the
stack's tags. If you specify an empty value, CloudFormation removes all
associated tags.



=head2 TemplateBody => Str

Structure containing the template body with a minimum length of 1 byte
and a maximum length of 51,200 bytes.

Conditional: You must specify only one of the following parameters:
C<TemplateBody>, C<TemplateURL>, or set the C<UsePreviousTemplate> to
C<true>.



=head2 TemplateURL => Str

The URL of a file containing the template body. The URL must point to a
template that's located in an Amazon S3 bucket or a Systems Manager
document. The location for an Amazon S3 bucket must start with
C<https://>.

Conditional: You must specify only one of the following parameters:
C<TemplateBody>, C<TemplateURL>, or set the C<UsePreviousTemplate> to
C<true>.



=head2 UsePreviousTemplate => Bool

Reuse the existing template that is associated with the stack that you
are updating.

Conditional: You must specify only one of the following parameters:
C<TemplateBody>, C<TemplateURL>, or set the C<UsePreviousTemplate> to
C<true>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStack in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

