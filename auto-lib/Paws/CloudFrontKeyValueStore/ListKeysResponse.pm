
package Paws::CloudFrontKeyValueStore::ListKeysResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CloudFrontKeyValueStore::ListKeysResponseListItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFrontKeyValueStore::ListKeysResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CloudFrontKeyValueStore::ListKeysResponseListItem>]

Key value pairs


=head2 NextToken => Str

If nextToken is returned in the response, there are more results
available. Make the next call using the returned token to retrieve the
next page.


=head2 _request_id => Str


=cut

