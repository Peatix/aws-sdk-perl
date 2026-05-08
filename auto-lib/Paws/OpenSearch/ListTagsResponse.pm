
package Paws::OpenSearch::ListTagsResponse;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListTagsResponse

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[L<Paws::OpenSearch::Tag>]

List of resource tags associated with the specified domain, data
source, or application.


=head2 _request_id => Str


=cut

