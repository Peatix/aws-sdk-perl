
package Paws::CloudFormation::CreateStackInstances;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CallAs => (is => 'ro', isa => 'Str');
  has DeploymentTargets => (is => 'ro', isa => 'Paws::CloudFormation::DeploymentTargets');
  has OperationId => (is => 'ro', isa => 'Str');
  has OperationPreferences => (is => 'ro', isa => 'Paws::CloudFormation::StackSetOperationPreferences');
  has ParameterOverrides => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStackInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::CreateStackInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackInstancesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateStackInstances - Arguments for method CreateStackInstances on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStackInstances on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method CreateStackInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStackInstances.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $CreateStackInstancesOutput = $cloudformation->CreateStackInstances(
      Regions           => [ 'MyRegion', ... ],
      StackSetName      => 'MyStackSetName',
      Accounts          => [ 'MyAccount', ... ],    # OPTIONAL
      CallAs            => 'SELF',                  # OPTIONAL
      DeploymentTargets => {
        AccountFilterType =>
          'NONE',    # values: NONE, INTERSECTION, DIFFERENCE, UNION; OPTIONAL
        Accounts    => [ 'MyAccount', ... ],
        AccountsUrl => 'MyAccountsUrl',        # min: 1, max: 5120; OPTIONAL
        OrganizationalUnitIds => [ 'MyOrganizationalUnitId', ... ],   # OPTIONAL
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
        RegionOrder => [ 'MyRegion', ... ],
      },    # OPTIONAL
      ParameterOverrides => [
        {
          ParameterKey     => 'MyParameterKey',      # OPTIONAL
          ParameterValue   => 'MyParameterValue',    # OPTIONAL
          ResolvedValue    => 'MyParameterValue',    # OPTIONAL
          UsePreviousValue => 1,                     # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $OperationId = $CreateStackInstancesOutput->OperationId;

    # Returns a L<Paws::CloudFormation::CreateStackInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/CreateStackInstances>

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[Str|Undef]

[Self-managed permissions] The account IDs of one or more Amazon Web
Services accounts that you want to create stack instances in the
specified Region(s) for.

You can specify C<Accounts> or C<DeploymentTargets>, but not both.



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

=head2 DeploymentTargets => L<Paws::CloudFormation::DeploymentTargets>

[Service-managed permissions] The Organizations accounts for which to
create stack instances in the specified Amazon Web Services Regions.

You can specify C<Accounts> or C<DeploymentTargets>, but not both.



=head2 OperationId => Str

The unique identifier for this stack set operation.

The operation ID also functions as an idempotency token, to ensure that
CloudFormation performs the stack set operation only once, even if you
retry the request multiple times. You might retry stack set operation
requests to ensure that CloudFormation successfully received them.

If you don't specify an operation ID, the SDK generates one
automatically.

Repeating this stack set operation with a new operation ID retries all
stack instances whose status is C<OUTDATED>.



=head2 OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>

Preferences for how CloudFormation performs this stack set operation.



=head2 ParameterOverrides => ArrayRef[L<Paws::CloudFormation::Parameter>]

A list of stack set parameters whose values you want to override in the
selected stack instances.

Any overridden parameter values will be applied to all stack instances
in the specified accounts and Amazon Web Services Regions. When
specifying parameters and their values, be aware of how CloudFormation
sets parameter values during stack instance operations:

=over

=item *

To override the current value for a parameter, include the parameter
and specify its value.

=item *

To leave an overridden parameter set to its present value, include the
parameter and specify C<UsePreviousValue> as C<true>. (You can't
specify both a value and set C<UsePreviousValue> to C<true>.)

=item *

To set an overridden parameter back to the value specified in the stack
set, specify a parameter list but don't include the parameter in the
list.

=item *

To leave all parameters set to their present values, don't specify this
property at all.

=back

During stack set updates, any parameter values overridden for a stack
instance aren't updated, but retain their overridden value.

You can only override the parameter I<values> that are specified in the
stack set; to add or delete a parameter itself, use UpdateStackSet
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html)
to update the stack set template.



=head2 B<REQUIRED> Regions => ArrayRef[Str|Undef]

The names of one or more Amazon Web Services Regions where you want to
create stack instances using the specified Amazon Web Services
accounts.



=head2 B<REQUIRED> StackSetName => Str

The name or unique ID of the stack set that you want to create stack
instances from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStackInstances in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

