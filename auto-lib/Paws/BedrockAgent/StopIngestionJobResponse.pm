
package Paws::BedrockAgent::StopIngestionJobResponse;
  use Moose;
  has IngestionJob => (is => 'ro', isa => 'Paws::BedrockAgent::IngestionJob', traits => ['NameInRequest'], request_name => 'ingestionJob', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::StopIngestionJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IngestionJob => L<Paws::BedrockAgent::IngestionJob>

Contains information about the stopped data ingestion job.


=head2 _request_id => Str


=cut

