
package Paws::NeptuneGraph::GetQueryOutput;
  use Moose;
  has Elapsed => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'elapsed');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has QueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryString');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');
  has Waited => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'waited');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::GetQueryOutput

=head1 ATTRIBUTES


=head2 Elapsed => Int

The number of milliseconds the query has been running.


=head2 Id => Str

The ID of the query in question.


=head2 QueryString => Str

The query in question.


=head2 State => Str

State of the query.

Valid values are: C<"RUNNING">, C<"WAITING">, C<"CANCELLING">
=head2 Waited => Int

Indicates how long the query waited, in milliseconds.


=head2 _request_id => Str


=cut

