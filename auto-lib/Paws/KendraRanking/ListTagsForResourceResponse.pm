
package Paws::KendraRanking::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::KendraRanking::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KendraRanking::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::KendraRanking::Tag>]

A list of tags associated with the rescore execution plan.


=head2 _request_id => Str


=cut

1;