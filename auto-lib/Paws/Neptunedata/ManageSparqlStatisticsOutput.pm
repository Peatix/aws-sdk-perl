
package Paws::Neptunedata::ManageSparqlStatisticsOutput;
  use Moose;
  has Payload => (is => 'ro', isa => 'Paws::Neptunedata::RefreshStatisticsIdMap', traits => ['NameInRequest'], request_name => 'payload');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ManageSparqlStatisticsOutput

=head1 ATTRIBUTES


=head2 Payload => L<Paws::Neptunedata::RefreshStatisticsIdMap>

This is only returned for refresh mode.


=head2 B<REQUIRED> Status => Str

The HTTP return code of the request. If the request succeeded, the code
is 200.


=head2 _request_id => Str


=cut

