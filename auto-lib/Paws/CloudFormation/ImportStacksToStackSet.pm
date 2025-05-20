
package Paws::CloudFormation::ImportStacksToStackSet;
  use Moose;
  has CallAs => (is => 'ro', isa => 'Str');
  has OperationId => (is => 'ro', isa => 'Str');
  has OperationPreferences => (is => 'ro', isa => 'Paws::CloudFormation::StackSetOperationPreferences');
  has OrganizationalUnitIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StackIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StackIdsUrl => (is => 'ro', isa => 'Str');
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportStacksToStackSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ImportStacksToStackSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ImportStacksToStackSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ImportStacksToStackSet - Arguments for method ImportStacksToStackSet on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportStacksToStackSet on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ImportStacksToStackSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportStacksToStackSet.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ImportStacksToStackSetOutput = $cloudformation->ImportStacksToStackSet(
      StackSetName         => 'MyStackSetNameOrId',
      CallAs               => 'SELF',                    # OPTIONAL
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
      OrganizationalUnitIds => [ 'MyOrganizationalUnitId', ... ],    # OPTIONAL
      StackIds              => [ 'MyStackId',              ... ],    # OPTIONAL
      StackIdsUrl           => 'MyStackIdsUrl',                      # OPTIONAL
    );

    # Results:
    my $OperationId = $ImportStacksToStackSetOutput->OperationId;

    # Returns a L<Paws::CloudFormation::ImportStacksToStackSetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ImportStacksToStackSet>

=head1 ATTRIBUTES


=head2 CallAs => Str

By default, C<SELF> is specified. Use C<SELF> for stack sets with
self-managed permissions.

=over

=item *

If you are signed in to the management account, specify C<SELF>.

=item *

For service managed stack sets, specify C<DELEGATED_ADMIN>.

=back


Valid values are: C<"SELF">, C<"DELEGATED_ADMIN">

=head2 OperationId => Str

A unique, user defined, identifier for the stack set operation.



=head2 OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>

The user-specified preferences for how CloudFormation performs a stack
set operation.

For more information about maximum concurrent accounts and failure
tolerance, see Stack set operation options
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/what-is-cfnstacksets.html#stackset-ops-options).



=head2 OrganizationalUnitIds => ArrayRef[Str|Undef]

The list of OU ID's to which the stacks being imported has to be mapped
as deployment target.



=head2 StackIds => ArrayRef[Str|Undef]

The IDs of the stacks you are importing into a stack set. You import up
to 10 stacks per stack set at a time.

Specify either C<StackIds> or C<StackIdsUrl>.



=head2 StackIdsUrl => Str

The Amazon S3 URL which contains list of stack ids to be inputted.

Specify either C<StackIds> or C<StackIdsUrl>.



=head2 B<REQUIRED> StackSetName => Str

The name of the stack set. The name must be unique in the Region where
you create your stack set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportStacksToStackSet in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

