
package Paws::NetworkFlowMonitor::StartQueryWorkloadInsightsTopContributorsDataOutput;
  use Moose;
  has QueryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::StartQueryWorkloadInsightsTopContributorsDataOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryId => Str

The identifier for the query. A query ID is an internally-generated
identifier for a specific query returned from an API call to start a
query.


=head2 _request_id => Str


=cut

