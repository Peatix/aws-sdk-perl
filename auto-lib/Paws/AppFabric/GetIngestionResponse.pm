
package Paws::AppFabric::GetIngestionResponse;
  use Moose;
  has Ingestion => (is => 'ro', isa => 'Paws::AppFabric::Ingestion', traits => ['NameInRequest'], request_name => 'ingestion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::GetIngestionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ingestion => L<Paws::AppFabric::Ingestion>

Contains information about an ingestion.


=head2 _request_id => Str


=cut

