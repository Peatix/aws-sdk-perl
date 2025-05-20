
package Paws::Neptunedata::GetGremlinQueryStatusOutput;
  use Moose;
  has QueryEvalStats => (is => 'ro', isa => 'Paws::Neptunedata::QueryEvalStats', traits => ['NameInRequest'], request_name => 'queryEvalStats');
  has QueryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryId');
  has QueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryString');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetGremlinQueryStatusOutput

=head1 ATTRIBUTES


=head2 QueryEvalStats => L<Paws::Neptunedata::QueryEvalStats>

The evaluation status of the Gremlin query.


=head2 QueryId => Str

The ID of the query for which status is being returned.


=head2 QueryString => Str

The Gremlin query string.


=head2 _request_id => Str


=cut

