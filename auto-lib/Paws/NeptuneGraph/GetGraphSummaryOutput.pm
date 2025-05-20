
package Paws::NeptuneGraph::GetGraphSummaryOutput;
  use Moose;
  has GraphSummary => (is => 'ro', isa => 'Paws::NeptuneGraph::GraphDataSummary', traits => ['NameInRequest'], request_name => 'graphSummary');
  has LastStatisticsComputationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastStatisticsComputationTime');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::GetGraphSummaryOutput

=head1 ATTRIBUTES


=head2 GraphSummary => L<Paws::NeptuneGraph::GraphDataSummary>

The graph summary.


=head2 LastStatisticsComputationTime => Str

The timestamp, in ISO 8601 format, of the time at which Neptune
Analytics last computed statistics.


=head2 Version => Str

Display the version of this tool.


=head2 _request_id => Str


=cut

