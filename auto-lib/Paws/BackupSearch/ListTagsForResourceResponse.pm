
package Paws::BackupSearch::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::BackupSearch::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::BackupSearch::TagMap>

List of tags returned by the operation.


=head2 _request_id => Str


=cut

