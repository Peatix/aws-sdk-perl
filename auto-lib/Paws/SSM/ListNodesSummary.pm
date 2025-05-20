
package Paws::SSM::ListNodesSummary;
  use Moose;
  has Aggregators => (is => 'ro', isa => 'ArrayRef[Paws::SSM::NodeAggregator]', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::NodeFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SyncName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNodesSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::ListNodesSummaryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListNodesSummary - Arguments for method ListNodesSummary on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNodesSummary on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method ListNodesSummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNodesSummary.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $ListNodesSummaryResult = $ssm->ListNodesSummary(
      Aggregators => [
        {
          AggregatorType => 'Count',             # values: Count
          AttributeName  => 'AgentVersion'
          , # values: AgentVersion, PlatformName, PlatformType, PlatformVersion, Region, ResourceType
          TypeName    => 'Instance',             # values: Instance
          Aggregators => <NodeAggregatorList>,
        },
        ...
      ],
      Filters => [
        {
          Key => 'AgentType'
          , # values: AgentType, AgentVersion, ComputerName, InstanceId, InstanceStatus, IpAddress, ManagedStatus, PlatformName, PlatformType, PlatformVersion, ResourceType, OrganizationalUnitId, OrganizationalUnitPath, Region, AccountId
          Values => [
            'MyNodeFilterValue', ...    # max: 512
          ],    # min: 1, max: 5
          Type => 'Equal',    # values: Equal, NotEqual, BeginWith; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                           # OPTIONAL
      NextToken  => 'MyNextToken',               # OPTIONAL
      SyncName   => 'MyResourceDataSyncName',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListNodesSummaryResult->NextToken;
    my $Summary   = $ListNodesSummaryResult->Summary;

    # Returns a L<Paws::SSM::ListNodesSummaryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/ListNodesSummary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Aggregators => ArrayRef[L<Paws::SSM::NodeAggregator>]

Specify one or more aggregators to return a count of managed nodes that
match that expression. For example, a count of managed nodes by
operating system.



=head2 Filters => ArrayRef[L<Paws::SSM::NodeFilter>]

One or more filters. Use a filter to generate a summary that matches
your specified filter criteria.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.) The call also returns a token that you can
specify in a subsequent call to get the next set of results.



=head2 SyncName => Str

The name of the Amazon Web Services managed resource data sync to
retrieve information about.

For cross-account/cross-Region configurations, this parameter is
required, and the name of the supported resource data sync is
C<AWS-QuickSetup-ManagedNode>.

For single account/single-Region configurations, the parameter is not
required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNodesSummary in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

