
package Paws::NetworkFlowMonitor::GetQueryResultsMonitorTopContributors;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'monitorName', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has QueryId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queryId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueryResultsMonitorTopContributors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/monitors/{monitorName}/topContributorsQueries/{queryId}/results');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFlowMonitor::GetQueryResultsMonitorTopContributorsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::GetQueryResultsMonitorTopContributors - Arguments for method GetQueryResultsMonitorTopContributors on L<Paws::NetworkFlowMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQueryResultsMonitorTopContributors on the
L<Network Flow Monitor|Paws::NetworkFlowMonitor> service. Use the attributes of this class
as arguments to method GetQueryResultsMonitorTopContributors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQueryResultsMonitorTopContributors.

=head1 SYNOPSIS

    my $networkflowmonitor = Paws->service('NetworkFlowMonitor');
    my $GetQueryResultsMonitorTopContributorsOutput =
      $networkflowmonitor->GetQueryResultsMonitorTopContributors(
      MonitorName => 'MyResourceName',
      QueryId     => 'MyString',
      MaxResults  => 1,                  # OPTIONAL
      NextToken   => 'MyString',         # OPTIONAL
      );

    # Results:
    my $NextToken = $GetQueryResultsMonitorTopContributorsOutput->NextToken;
    my $TopContributors =
      $GetQueryResultsMonitorTopContributorsOutput->TopContributors;
    my $Unit = $GetQueryResultsMonitorTopContributorsOutput->Unit;

# Returns a L<Paws::NetworkFlowMonitor::GetQueryResultsMonitorTopContributorsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor/GetQueryResultsMonitorTopContributors>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of query results that you want to return with this call.



=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.



=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.



=head2 B<REQUIRED> QueryId => Str

The identifier for the query. A query ID is an internally-generated
identifier for a specific query returned from an API call to start a
query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQueryResultsMonitorTopContributors in L<Paws::NetworkFlowMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

