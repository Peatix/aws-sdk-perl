
package Paws::WorkSpaces::DescribeWorkspacesPoolSessions;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PoolId => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkspacesPoolSessions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DescribeWorkspacesPoolSessionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspacesPoolSessions - Arguments for method DescribeWorkspacesPoolSessions on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorkspacesPoolSessions on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DescribeWorkspacesPoolSessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorkspacesPoolSessions.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DescribeWorkspacesPoolSessionsResult =
      $workspaces->DescribeWorkspacesPoolSessions(
      PoolId    => 'MyWorkspacesPoolId',
      Limit     => 1,                           # OPTIONAL
      NextToken => 'MyPaginationToken',         # OPTIONAL
      UserId    => 'MyWorkspacesPoolUserId',    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeWorkspacesPoolSessionsResult->NextToken;
    my $Sessions  = $DescribeWorkspacesPoolSessionsResult->Sessions;

   # Returns a L<Paws::WorkSpaces::DescribeWorkspacesPoolSessionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DescribeWorkspacesPoolSessions>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum size of each page of results. The default value is 20 and
the maximum value is 50.



=head2 NextToken => Str

If you received a C<NextToken> from a previous call that was paginated,
provide this token to receive the next set of results.



=head2 B<REQUIRED> PoolId => Str

The identifier of the pool.



=head2 UserId => Str

The identifier of the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorkspacesPoolSessions in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

