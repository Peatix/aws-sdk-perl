
package Paws::AppFabric::GetIngestionDestinationResponse;
  use Moose;
  has IngestionDestination => (is => 'ro', isa => 'Paws::AppFabric::IngestionDestination', traits => ['NameInRequest'], request_name => 'ingestionDestination', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::GetIngestionDestinationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IngestionDestination => L<Paws::AppFabric::IngestionDestination>

Contains information about an ingestion destination.


=head2 _request_id => Str


=cut

