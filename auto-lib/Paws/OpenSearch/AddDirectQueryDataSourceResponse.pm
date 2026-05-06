
package Paws::OpenSearch::AddDirectQueryDataSourceResponse;
  use Moose;
  has DataSourceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::AddDirectQueryDataSourceResponse

=head1 ATTRIBUTES


=head2 DataSourceArn => Str

The unique, system-generated identifier that represents the data
source.


=head2 _request_id => Str


=cut

