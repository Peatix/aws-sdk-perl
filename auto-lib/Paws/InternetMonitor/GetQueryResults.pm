
package Paws::InternetMonitor::GetQueryResults;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MonitorName', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has QueryId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'QueryId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueryResults');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20210603/Monitors/{MonitorName}/Queries/{QueryId}/Results');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::InternetMonitor::GetQueryResultsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::GetQueryResults - Arguments for method GetQueryResults on L<Paws::InternetMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQueryResults on the
L<Amazon CloudWatch Internet Monitor|Paws::InternetMonitor> service. Use the attributes of this class
as arguments to method GetQueryResults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQueryResults.

=head1 SYNOPSIS

    my $internetmonitor = Paws->service('InternetMonitor');
    my $GetQueryResultsOutput = $internetmonitor->GetQueryResults(
      MonitorName => 'MyResourceName',
      QueryId     => 'MyString',
      MaxResults  => 1,                  # OPTIONAL
      NextToken   => 'MyString',         # OPTIONAL
    );

    # Results:
    my $Data      = $GetQueryResultsOutput->Data;
    my $Fields    = $GetQueryResultsOutput->Fields;
    my $NextToken = $GetQueryResultsOutput->NextToken;

    # Returns a L<Paws::InternetMonitor::GetQueryResultsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/internetmonitor/GetQueryResults>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of query results that you want to return with this call.



=head2 B<REQUIRED> MonitorName => Str

The name of the monitor to return data for.



=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.



=head2 B<REQUIRED> QueryId => Str

The ID of the query that you want to return data results for. A
C<QueryId> is an internally-generated identifier for a specific query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQueryResults in L<Paws::InternetMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

