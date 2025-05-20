
package Paws::Neptunedata::ExecuteGremlinQueryOutput;
  use Moose;
  has Meta => (is => 'ro', isa => 'Paws::Neptunedata::Document', traits => ['NameInRequest'], request_name => 'meta');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');
  has Result => (is => 'ro', isa => 'Paws::Neptunedata::Document', traits => ['NameInRequest'], request_name => 'result');
  has Status => (is => 'ro', isa => 'Paws::Neptunedata::GremlinQueryStatusAttributes', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ExecuteGremlinQueryOutput

=head1 ATTRIBUTES


=head2 Meta => L<Paws::Neptunedata::Document>

Metadata about the Gremlin query.


=head2 RequestId => Str

The unique identifier of the Gremlin query.


=head2 Result => L<Paws::Neptunedata::Document>

The Gremlin query output from the server.


=head2 Status => L<Paws::Neptunedata::GremlinQueryStatusAttributes>

The status of the Gremlin query.


=head2 _request_id => Str


=cut

