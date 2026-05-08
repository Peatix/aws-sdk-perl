
package Paws::OpenSearch::DeleteDataSourceResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DeleteDataSourceResponse

=head1 ATTRIBUTES


=head2 Message => Str

A message associated with deletion of the data source.


=head2 _request_id => Str


=cut

