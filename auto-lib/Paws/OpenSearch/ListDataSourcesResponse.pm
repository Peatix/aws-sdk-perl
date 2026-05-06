
package Paws::OpenSearch::ListDataSourcesResponse;
  use Moose;
  has DataSources => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::DataSourceDetails]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListDataSourcesResponse

=head1 ATTRIBUTES


=head2 DataSources => ArrayRef[L<Paws::OpenSearch::DataSourceDetails>]

A list of data sources associated with specified domain.


=head2 _request_id => Str


=cut

