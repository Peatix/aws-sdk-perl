
package Paws::BedrockAgent::GetIngestionJobResponse;
  use Moose;
  has IngestionJob => (is => 'ro', isa => 'Paws::BedrockAgent::IngestionJob', traits => ['NameInRequest'], request_name => 'ingestionJob', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::GetIngestionJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IngestionJob => L<Paws::BedrockAgent::IngestionJob>

Contains details about the data ingestion job.


=head2 _request_id => Str


=cut

