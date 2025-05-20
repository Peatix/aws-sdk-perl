
package Paws::CloudFormation::UpdateStackSet;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AdministrationRoleARN => (is => 'ro', isa => 'Str');
  has AutoDeployment => (is => 'ro', isa => 'Paws::CloudFormation::AutoDeployment');
  has CallAs => (is => 'ro', isa => 'Str');
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DeploymentTargets => (is => 'ro', isa => 'Paws::CloudFormation::DeploymentTargets');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionRoleName => (is => 'ro', isa => 'Str');
  has ManagedExecution => (is => 'ro', isa => 'Paws::CloudFormation::ManagedExecution');
  has OperationId => (is => 'ro', isa => 'Str');
  has OperationPreferences => (is => 'ro', isa => 'Paws::CloudFormation::StackSetOperationPreferences');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has PermissionModel => (is => 'ro', isa => 'Str');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');
  has UsePreviousTemplate => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStackSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::UpdateStackSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStackSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::UpdateStackSet - Arguments for method UpdateStackSet on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStackSet on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method UpdateStackSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStackSet.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $UpdateStackSetOutput = $cloudformation->UpdateStackSet(
      StackSetName          => 'MyStackSetName',
      Accounts              => [ 'MyAccount', ... ],    # OPTIONAL
      AdministrationRoleARN => 'MyRoleARN',             # OPTIONAL
      AutoDeployment        => {
        Enabled                      => 1,              # OPTIONAL
        RetainStacksOnAccountRemoval => 1,              # OPTIONAL
      },    # OPTIONAL
      CallAs       => 'SELF',    # OPTIONAL
      Capabilities => [
        'CAPABILITY_IAM',
        ... # values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
      ],    # OPTIONAL
      DeploymentTargets => {
        AccountFilterType =>
          'NONE',    # values: NONE, INTERSECTION, DIFFERENCE, UNION; OPTIONAL
        Accounts    => [ 'MyAccount', ... ],
        AccountsUrl => 'MyAccountsUrl',        # min: 1, max: 5120; OPTIONAL
        OrganizationalUnitIds => [ 'MyOrganizationalUnitId', ... ],   # OPTIONAL
      },    # OPTIONAL
      Description       => 'MyDescription',          # OPTIONAL
      ExecutionRoleName => 'MyExecutionRoleName',    # OPTIONAL
      ManagedExecution  => {
        Active => 1,                                 # OPTIONAL
      },    # OPTIONAL
      OperationId          => 'MyClientRequestToken',    # OPTIONAL
      OperationPreferences => {
        ConcurrencyMode => 'STRICT_FAILURE_TOLERANCE'
        ,   # values: STRICT_FAILURE_TOLERANCE, SOFT_FAILURE_TOLERANCE; OPTIONAL
        FailureToleranceCount      => 1,    # OPTIONAL
        FailureTolerancePercentage => 1,    # max: 100; OPTIONAL
        MaxConcurrentCount         => 1,    # min: 1; OPTIONAL
        MaxConcurrentPercentage    => 1,    # min: 1, max: 100; OPTIONAL
        RegionConcurrencyType      =>
          'SEQUENTIAL',    # values: SEQUENTIAL, PARALLEL; OPTIONAL
        RegionOrder => [ 'MyRegion', ... ],    # OPTIONAL
      },    # OPTIONAL
      Parameters => [
        {
          ParameterKey     => 'MyParameterKey',      # OPTIONAL
          ParameterValue   => 'MyParameterValue',    # OPTIONAL
          ResolvedValue    => 'MyParameterValue',    # OPTIONAL
          UsePreviousValue => 1,                     # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      PermissionModel => 'SERVICE_MANAGED',      # OPTIONAL
      Regions         => [ 'MyRegion', ... ],    # OPTIONAL
      Tags            => [
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
    my $OperationId = $UpdateStackSetOutput->OperationId;

    # Returns a L<Paws::CloudFormation::UpdateStackSetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/UpdateStackSet>

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[Str|Undef]

[Self-managed permissions] The accounts in which to update associated
stack instances. If you specify accounts, you must also specify the
Amazon Web Services Regions in which to update stack set instances.

To update I<all> the stack instances associated with this stack set,
don't specify the C<Accounts> or C<Regions> properties.

If the stack set update includes changes to the template (that is, if
the C<TemplateBody> or C<TemplateURL> properties are specified), or the
C<Parameters> property, CloudFormation marks all stack instances with a
status of C<OUTDATED> prior to updating the stack instances in the
specified accounts and Amazon Web Services Regions. If the stack set
update does not include changes to the template or parameters,
CloudFormation updates the stack instances in the specified accounts
and Amazon Web Services Regions, while leaving all other stack
instances with their existing stack instance status.



=head2 AdministrationRoleARN => Str

[Self-managed permissions] The Amazon Resource Name (ARN) of the IAM
role to use to update this stack set.

Specify an IAM role only if you are using customized administrator
roles to control which users or groups can manage specific stack sets
within the same administrator account. For more information, see Grant
self-managed permissions
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html)
in the I<CloudFormation User Guide>.

If you specified a customized administrator role when you created the
stack set, you must specify a customized administrator role, even if it
is the same customized administrator role used with this stack set
previously.



=head2 AutoDeployment => L<Paws::CloudFormation::AutoDeployment>

[Service-managed permissions] Describes whether StackSets automatically
deploys to Organizations accounts that are added to a target
organization or organizational unit (OU). For more information, see
Manage automatic deployments for CloudFormation StackSets that use
service-managed permissions
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-manage-auto-deployment.html)
in the I<CloudFormation User Guide>.

If you specify C<AutoDeployment>, don't specify C<DeploymentTargets> or
C<Regions>.



=head2 CallAs => Str

[Service-managed permissions] Specifies whether you are acting as an
account administrator in the organization's management account or as a
delegated administrator in a member account.

By default, C<SELF> is specified. Use C<SELF> for stack sets with
self-managed permissions.

=over

=item *

If you are signed in to the management account, specify C<SELF>.

=item *

If you are signed in to a delegated administrator account, specify
C<DELEGATED_ADMIN>.

Your Amazon Web Services account must be registered as a delegated
administrator in the management account. For more information, see
Register a delegated administrator
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html)
in the I<CloudFormation User Guide>.

=back


Valid values are: C<"SELF">, C<"DELEGATED_ADMIN">

=head2 Capabilities => ArrayRef[Str|Undef]

In some cases, you must explicitly acknowledge that your stack template
contains certain capabilities in order for CloudFormation to update the
stack set and its associated stack instances.

=over

=item *

C<CAPABILITY_IAM> and C<CAPABILITY_NAMED_IAM>

Some stack templates might include resources that can affect
permissions in your Amazon Web Services account, for example, by
creating new IAM users. For those stacks sets, you must explicitly
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

If your stack template contains these resources, we recommend that you
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

Some templates reference macros. If your stack set template references
one or more macros, you must update the stack set directly from the
processed template, without first reviewing the resulting changes in a
change set. To update the stack set directly, you must acknowledge this
capability. For more information, see Perform custom processing on
CloudFormation templates with template macros
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html).

Stack sets with service-managed permissions do not currently support
the use of macros in templates. (This includes the AWS::Include
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html)
and AWS::Serverless
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html)
transforms, which are macros hosted by CloudFormation.) Even if you
specify this capability for a stack set with service-managed
permissions, if you reference a macro in your template the stack set
operation will fail.

=back




=head2 DeploymentTargets => L<Paws::CloudFormation::DeploymentTargets>

[Service-managed permissions] The Organizations accounts in which to
update associated stack instances.

To update all the stack instances associated with this stack set, do
not specify C<DeploymentTargets> or C<Regions>.

If the stack set update includes changes to the template (that is, if
C<TemplateBody> or C<TemplateURL> is specified), or the C<Parameters>,
CloudFormation marks all stack instances with a status of C<OUTDATED>
prior to updating the stack instances in the specified accounts and
Amazon Web Services Regions. If the stack set update doesn't include
changes to the template or parameters, CloudFormation updates the stack
instances in the specified accounts and Regions, while leaving all
other stack instances with their existing stack instance status.



=head2 Description => Str

A brief description of updates that you are making.



=head2 ExecutionRoleName => Str

[Self-managed permissions] The name of the IAM execution role to use to
update the stack set. If you do not specify an execution role,
CloudFormation uses the C<AWSCloudFormationStackSetExecutionRole> role
for the stack set operation.

Specify an IAM role only if you are using customized execution roles to
control which stack resources users and groups can include in their
stack sets.

If you specify a customized execution role, CloudFormation uses that
role to update the stack. If you do not specify a customized execution
role, CloudFormation performs the update using the role previously
associated with the stack set, so long as you have permissions to
perform operations on the stack set.



=head2 ManagedExecution => L<Paws::CloudFormation::ManagedExecution>

Describes whether StackSets performs non-conflicting operations
concurrently and queues conflicting operations.



=head2 OperationId => Str

The unique ID for this stack set operation.

The operation ID also functions as an idempotency token, to ensure that
CloudFormation performs the stack set operation only once, even if you
retry the request multiple times. You might retry stack set operation
requests to ensure that CloudFormation successfully received them.

If you don't specify an operation ID, CloudFormation generates one
automatically.

Repeating this stack set operation with a new operation ID retries all
stack instances whose status is C<OUTDATED>.



=head2 OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>

Preferences for how CloudFormation performs this stack set operation.



=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

A list of input parameters for the stack set template.



=head2 PermissionModel => Str

Describes how the IAM roles required for stack set operations are
created. You cannot modify C<PermissionModel> if there are stack
instances associated with your stack set.

=over

=item *

With C<self-managed> permissions, you must create the administrator and
execution roles required to deploy to target accounts. For more
information, see Grant self-managed permissions
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html).

=item *

With C<service-managed> permissions, StackSets automatically creates
the IAM roles required to deploy to accounts managed by Organizations.
For more information, see Activate trusted access for stack sets with
Organizations
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-activate-trusted-access.html).

=back


Valid values are: C<"SERVICE_MANAGED">, C<"SELF_MANAGED">

=head2 Regions => ArrayRef[Str|Undef]

The Amazon Web Services Regions in which to update associated stack
instances. If you specify Regions, you must also specify accounts in
which to update stack set instances.

To update I<all> the stack instances associated with this stack set, do
not specify the C<Accounts> or C<Regions> properties.

If the stack set update includes changes to the template (that is, if
the C<TemplateBody> or C<TemplateURL> properties are specified), or the
C<Parameters> property, CloudFormation marks all stack instances with a
status of C<OUTDATED> prior to updating the stack instances in the
specified accounts and Regions. If the stack set update does not
include changes to the template or parameters, CloudFormation updates
the stack instances in the specified accounts and Regions, while
leaving all other stack instances with their existing stack instance
status.



=head2 B<REQUIRED> StackSetName => Str

The name or unique ID of the stack set that you want to update.



=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

The key-value pairs to associate with this stack set and the stacks
created from it. CloudFormation also propagates these tags to supported
resources that are created in the stacks. You can specify a maximum
number of 50 tags.

If you specify tags for this parameter, those tags replace any list of
tags that are currently associated with this stack set. This means:

=over

=item *

If you don't specify this parameter, CloudFormation doesn't modify the
stack's tags.

=item *

If you specify I<any> tags using this parameter, you must specify
I<all> the tags that you want associated with this stack set, even tags
you've specified before (for example, when creating the stack set or
during a previous update of the stack set.). Any tags that you don't
include in the updated list of tags are removed from the stack set, and
therefore from the stacks and resources as well.

=item *

If you specify an empty value, CloudFormation removes all currently
associated tags.

=back

If you specify new tags as part of an C<UpdateStackSet> action,
CloudFormation checks to see if you have the required IAM permission to
tag resources. If you omit tags that are currently associated with the
stack set from the list of tags you specify, CloudFormation assumes
that you want to remove those tags from the stack set, and checks to
see if you have permission to untag resources. If you don't have the
necessary permission(s), the entire C<UpdateStackSet> action fails with
an C<access denied> error, and the stack set is not updated.



=head2 TemplateBody => Str

The structure that contains the template body, with a minimum length of
1 byte and a maximum length of 51,200 bytes.

Conditional: You must specify only one of the following parameters:
C<TemplateBody> or C<TemplateURL>E<mdash>or set C<UsePreviousTemplate>
to true.



=head2 TemplateURL => Str

The URL of a file that contains the template body. The URL must point
to a template (maximum size: 1 MB) that is located in an Amazon S3
bucket or a Systems Manager document. The location for an Amazon S3
bucket must start with C<https://>.

Conditional: You must specify only one of the following parameters:
C<TemplateBody> or C<TemplateURL>E<mdash>or set C<UsePreviousTemplate>
to true.



=head2 UsePreviousTemplate => Bool

Use the existing template that's associated with the stack set that
you're updating.

Conditional: You must specify only one of the following parameters:
C<TemplateBody> or C<TemplateURL>E<mdash>or set C<UsePreviousTemplate>
to true.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStackSet in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

