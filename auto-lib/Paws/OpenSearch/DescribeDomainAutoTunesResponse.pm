
package Paws::OpenSearch::DescribeDomainAutoTunesResponse;
  use Moose;
  has AutoTunes => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::AutoTune]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeDomainAutoTunesResponse

=head1 ATTRIBUTES


=head2 AutoTunes => ArrayRef[L<Paws::OpenSearch::AutoTune>]

The list of setting adjustments that Auto-Tune has made to the domain.


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Send
the request again using the returned token to retrieve the next page.


=head2 _request_id => Str


=cut

