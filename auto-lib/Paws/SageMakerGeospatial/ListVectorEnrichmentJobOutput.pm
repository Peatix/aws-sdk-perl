
package Paws::SageMakerGeospatial::ListVectorEnrichmentJobOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has VectorEnrichmentJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerGeospatial::ListVectorEnrichmentJobOutputConfig]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::ListVectorEnrichmentJobOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the previous response was truncated, you receive this token. Use it
in your next request to receive the next set of results.


=head2 B<REQUIRED> VectorEnrichmentJobSummaries => ArrayRef[L<Paws::SageMakerGeospatial::ListVectorEnrichmentJobOutputConfig>]

Contains summary information about the Vector Enrichment jobs.


=head2 _request_id => Str


=cut

