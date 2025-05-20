
package Paws::Connect::SearchResourceTagsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Connect::TagSet]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchResourceTagsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 Tags => ArrayRef[L<Paws::Connect::TagSet>]

A list of tags used in the Amazon Connect instance.


=head2 _request_id => Str


=cut

