
package Paws::Neptunedata::GetPropertygraphStatisticsOutput;
  use Moose;
  has Payload => (is => 'ro', isa => 'Paws::Neptunedata::Statistics', traits => ['NameInRequest'], request_name => 'payload', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetPropertygraphStatisticsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Payload => L<Paws::Neptunedata::Statistics>

Statistics for property-graph data.


=head2 B<REQUIRED> Status => Str

The HTTP return code of the request. If the request succeeded, the code
is 200. See Common error codes for DFE statistics request
(https://docs.aws.amazon.com/neptune/latest/userguide/neptune-dfe-statistics.html#neptune-dfe-statistics-errors)
for a list of common errors.


=head2 _request_id => Str


=cut

