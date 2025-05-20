
package Paws::Neptunedata::DeleteSparqlStatisticsOutput;
  use Moose;
  has Payload => (is => 'ro', isa => 'Paws::Neptunedata::DeleteStatisticsValueMap', traits => ['NameInRequest'], request_name => 'payload');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusCode => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'statusCode');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::DeleteSparqlStatisticsOutput

=head1 ATTRIBUTES


=head2 Payload => L<Paws::Neptunedata::DeleteStatisticsValueMap>

The deletion payload.


=head2 Status => Str

The cancel status.


=head2 StatusCode => Int

The HTTP response code: 200 if the delete was successful, or 204 if
there were no statistics to delete.


=head2 _request_id => Str


=cut

