
package Paws::NeptuneGraph::ListQueriesOutput;
  use Moose;
  has Queries => (is => 'ro', isa => 'ArrayRef[Paws::NeptuneGraph::QuerySummary]', traits => ['NameInRequest'], request_name => 'queries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::ListQueriesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Queries => ArrayRef[L<Paws::NeptuneGraph::QuerySummary>]

A list of current openCypher queries.


=head2 _request_id => Str


=cut

