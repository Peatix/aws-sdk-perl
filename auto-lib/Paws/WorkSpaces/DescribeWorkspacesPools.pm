
package Paws::WorkSpaces::DescribeWorkspacesPools;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::DescribeWorkspacesPoolsFilter]');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PoolIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkspacesPools');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DescribeWorkspacesPoolsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspacesPools - Arguments for method DescribeWorkspacesPools on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorkspacesPools on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DescribeWorkspacesPools.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorkspacesPools.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DescribeWorkspacesPoolsResult = $workspaces->DescribeWorkspacesPools(
      Filters => [
        {
          Name     => 'PoolName',    # values: PoolName
          Operator =>
            'EQUALS',    # values: EQUALS, NOTEQUALS, CONTAINS, NOTCONTAINS
          Values => [
            'MyDescribeWorkspacesPoolsFilterValue', ...    # min: 1, max: 128
          ],    # min: 1, max: 25

        },
        ...
      ],    # OPTIONAL
      Limit     => 1,                                # OPTIONAL
      NextToken => 'MyPaginationToken',              # OPTIONAL
      PoolIds   => [ 'MyWorkspacesPoolId', ... ],    # OPTIONAL
    );

    # Results:
    my $NextToken       = $DescribeWorkspacesPoolsResult->NextToken;
    my $WorkspacesPools = $DescribeWorkspacesPoolsResult->WorkspacesPools;

    # Returns a L<Paws::WorkSpaces::DescribeWorkspacesPoolsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DescribeWorkspacesPools>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::WorkSpaces::DescribeWorkspacesPoolsFilter>]

The filter conditions for the WorkSpaces Pool to return.



=head2 Limit => Int

The maximum number of items to return.



=head2 NextToken => Str

If you received a C<NextToken> from a previous call that was paginated,
provide this token to receive the next set of results.



=head2 PoolIds => ArrayRef[Str|Undef]

The identifier of the WorkSpaces Pools.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorkspacesPools in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

