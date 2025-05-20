
package Paws::Neptunedata::ListOpenCypherQueriesOutput;
  use Moose;
  has AcceptedQueryCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'acceptedQueryCount');
  has Queries => (is => 'ro', isa => 'ArrayRef[Paws::Neptunedata::GremlinQueryStatus]', traits => ['NameInRequest'], request_name => 'queries');
  has RunningQueryCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'runningQueryCount');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ListOpenCypherQueriesOutput

=head1 ATTRIBUTES


=head2 AcceptedQueryCount => Int

The number of queries that have been accepted but not yet completed,
including queries in the queue.


=head2 Queries => ArrayRef[L<Paws::Neptunedata::GremlinQueryStatus>]

A list of current openCypher queries.


=head2 RunningQueryCount => Int

The number of currently running openCypher queries.


=head2 _request_id => Str


=cut

