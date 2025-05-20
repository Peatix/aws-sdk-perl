
package Paws::CloudFormation::CreateChangeSet;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ChangeSetName => (is => 'ro', isa => 'Str', required => 1);
  has ChangeSetType => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ImportExistingResources => (is => 'ro', isa => 'Bool');
  has IncludeNestedStacks => (is => 'ro', isa => 'Bool');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OnStackFailure => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has ResourcesToImport => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ResourceToImport]');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RoleARN => (is => 'ro', isa => 'Str');
  has RollbackConfiguration => (is => 'ro', isa => 'Paws::CloudFormation::RollbackConfiguration');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');
  has UsePreviousTemplate => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChangeSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::CreateChangeSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateChangeSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateChangeSet - Arguments for method CreateChangeSet on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChangeSet on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method CreateChangeSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChangeSet.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $CreateChangeSetOutput = $cloudformation->CreateChangeSet(
      ChangeSetName => 'MyChangeSetName',
      StackName     => 'MyStackNameOrId',
      Capabilities  => [
        'CAPABILITY_IAM',
        ... # values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
      ],    # OPTIONAL
      ChangeSetType           => 'CREATE',                        # OPTIONAL
      ClientToken             => 'MyClientToken',                 # OPTIONAL
      Description             => 'MyDescription',                 # OPTIONAL
      ImportExistingResources => 1,                               # OPTIONAL
      IncludeNestedStacks     => 1,                               # OPTIONAL
      NotificationARNs        => [ 'MyNotificationARN', ... ],    # OPTIONAL
      OnStackFailure          => 'DO_NOTHING',                    # OPTIONAL
      Parameters              => [
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
      ResourcesToImport => [
        {
          LogicalResourceId  => 'MyLogicalResourceId',
          ResourceIdentifier => {
            'MyResourceIdentifierPropertyKey' =>
              'MyResourceIdentifierPropertyValue'
            ,    # key: min: 1, max: 2048, value: min: 1, max: 2048
          },    # min: 1, max: 256
          ResourceType => 'MyResourceType',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
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
      Tags => [
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
    my $Id      = $CreateChangeSetOutput->Id;
    my $StackId = $CreateChangeSetOutput->StackId;

    # Returns a L<Paws::CloudFormation::CreateChangeSetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/CreateChangeSet>

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

In some cases, you must explicitly acknowledge that your stack template
contains certain capabilities in order for CloudFormation to create the
stack.

=over

=item *

C<CAPABILITY_IAM> and C<CAPABILITY_NAMED_IAM>

Some stack templates might include resources that can affect
permissions in your Amazon Web Services account; for example, by
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
from the macros before actually creating the stack. If your stack
template contains one or more macros, and you choose to create a stack
directly from the processed template, without first reviewing the
resulting changes in a change set, you must acknowledge this
capability. This includes the AWS::Include
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html)
and AWS::Serverless
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html)
transforms, which are macros hosted by CloudFormation.

This capacity doesn't apply to creating change sets, and specifying it
when creating change sets has no effect.

If you want to create a stack from a stack template that contains
macros I<and> nested stacks, you must create or update the stack
directly from the template using the CreateStack or UpdateStack action,
and specifying this capability.

For more information about macros, see Perform custom processing on
CloudFormation templates with template macros
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html).

=back

Only one of the C<Capabilities> and C<ResourceType> parameters can be
specified.



=head2 B<REQUIRED> ChangeSetName => Str

The name of the change set. The name must be unique among all change
sets that are associated with the specified stack.

A change set name can contain only alphanumeric, case sensitive
characters, and hyphens. It must start with an alphabetical character
and can't exceed 128 characters.



=head2 ChangeSetType => Str

The type of change set operation. To create a change set for a new
stack, specify C<CREATE>. To create a change set for an existing stack,
specify C<UPDATE>. To create a change set for an import operation,
specify C<IMPORT>.

If you create a change set for a new stack, CloudFormation creates a
stack with a unique stack ID, but no template or resources. The stack
will be in the C<REVIEW_IN_PROGRESS> state until you execute the change
set.

By default, CloudFormation specifies C<UPDATE>. You can't use the
C<UPDATE> type to create a change set for a new stack or the C<CREATE>
type to create a change set for an existing stack.

Valid values are: C<"CREATE">, C<"UPDATE">, C<"IMPORT">

=head2 ClientToken => Str

A unique identifier for this C<CreateChangeSet> request. Specify this
token if you plan to retry requests so that CloudFormation knows that
you're not attempting to create another change set with the same name.
You might retry C<CreateChangeSet> requests to ensure that
CloudFormation successfully received them.



=head2 Description => Str

A description to help you identify this change set.



=head2 ImportExistingResources => Bool

Indicates if the change set imports resources that already exist.

This parameter can only import resources that have custom names in
templates. For more information, see name type
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html)
in the I<CloudFormation User Guide>. To import resources that do not
accept custom names, such as EC2 instances, use the resource import
feature instead. For more information, see Import Amazon Web Services
resources into a CloudFormation stack with a resource import
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import.html)
in the I<CloudFormation User Guide>.



=head2 IncludeNestedStacks => Bool

Creates a change set for the all nested stacks specified in the
template. The default behavior of this action is set to C<False>. To
include nested sets in a change set, specify C<True>.



=head2 NotificationARNs => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of Amazon SNS topics that
CloudFormation associates with the stack. To remove all associated
notification topics, specify an empty list.



=head2 OnStackFailure => Str

Determines what action will be taken if stack creation fails. If this
parameter is specified, the C<DisableRollback> parameter to the
ExecuteChangeSet
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html)
API operation must not be specified. This must be one of these values:

=over

=item *

C<DELETE> - Deletes the change set if the stack creation fails. This is
only valid when the C<ChangeSetType> parameter is set to C<CREATE>. If
the deletion of the stack fails, the status of the stack is
C<DELETE_FAILED>.

=item *

C<DO_NOTHING> - if the stack creation fails, do nothing. This is
equivalent to specifying C<true> for the C<DisableRollback> parameter
to the ExecuteChangeSet
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html)
API operation.

=item *

C<ROLLBACK> - if the stack creation fails, roll back the stack. This is
equivalent to specifying C<false> for the C<DisableRollback> parameter
to the ExecuteChangeSet
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html)
API operation.

=back

For nested stacks, when the C<OnStackFailure> parameter is set to
C<DELETE> for the change set for the parent stack, any failure in a
child stack will cause the parent stack creation to fail and all stacks
to be deleted.

Valid values are: C<"DO_NOTHING">, C<"ROLLBACK">, C<"DELETE">

=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

A list of C<Parameter> structures that specify input parameters for the
change set. For more information, see the Parameter data type.



=head2 ResourcesToImport => ArrayRef[L<Paws::CloudFormation::ResourceToImport>]

The resources to import into your stack.



=head2 ResourceTypes => ArrayRef[Str|Undef]

The template resource types that you have permissions to work with if
you execute this change set, such as C<AWS::EC2::Instance>,
C<AWS::EC2::*>, or C<Custom::MyCustomInstance>.

If the list of resource types doesn't include a resource type that
you're updating, the stack update fails. By default, CloudFormation
grants permissions to all resource types. IAM uses this parameter for
condition keys in IAM policies for CloudFormation. For more
information, see Control access with Identity and Access Management
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html)
in the I<CloudFormation User Guide>.

Only one of the C<Capabilities> and C<ResourceType> parameters can be
specified.



=head2 RoleARN => Str

The Amazon Resource Name (ARN) of an IAM role that CloudFormation
assumes when executing the change set. CloudFormation uses the role's
credentials to make calls on your behalf. CloudFormation uses this role
for all future operations on the stack. Provided that users have
permission to operate on the stack, CloudFormation uses this role even
if the users don't have permission to pass it. Ensure that the role
grants least permission.

If you don't specify a value, CloudFormation uses the role that was
previously associated with the stack. If no role is available,
CloudFormation uses a temporary session that is generated from your
user credentials.



=head2 RollbackConfiguration => L<Paws::CloudFormation::RollbackConfiguration>

The rollback triggers for CloudFormation to monitor during stack
creation and updating operations, and for the specified monitoring
period afterwards.



=head2 B<REQUIRED> StackName => Str

The name or the unique ID of the stack for which you are creating a
change set. CloudFormation generates the change set by comparing this
stack's information with the information that you submit, such as a
modified template or different parameter input values.



=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

Key-value pairs to associate with this stack. CloudFormation also
propagates these tags to resources in the stack. You can specify a
maximum of 50 tags.



=head2 TemplateBody => Str

A structure that contains the body of the revised template, with a
minimum length of 1 byte and a maximum length of 51,200 bytes.
CloudFormation generates the change set by comparing this template with
the template of the stack that you specified.

Conditional: You must specify only C<TemplateBody> or C<TemplateURL>.



=head2 TemplateURL => Str

The URL of the file that contains the revised template. The URL must
point to a template (max size: 1 MB) that's located in an Amazon S3
bucket or a Systems Manager document. CloudFormation generates the
change set by comparing this template with the stack that you
specified. The location for an Amazon S3 bucket must start with
C<https://>.

Conditional: You must specify only C<TemplateBody> or C<TemplateURL>.



=head2 UsePreviousTemplate => Bool

Whether to reuse the template that's associated with the stack to
create the change set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChangeSet in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

