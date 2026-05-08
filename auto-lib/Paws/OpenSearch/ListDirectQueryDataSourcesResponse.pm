
package Paws::OpenSearch::ListDirectQueryDataSourcesResponse;
  use Moose;
  has DirectQueryDataSources => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::DirectQueryDataSource]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListDirectQueryDataSourcesResponse

=head1 ATTRIBUTES


=head2 DirectQueryDataSources => ArrayRef[L<Paws::OpenSearch::DirectQueryDataSource>]

A list of the direct query data sources that are returned by the
C<ListDirectQueryDataSources> API operation.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

