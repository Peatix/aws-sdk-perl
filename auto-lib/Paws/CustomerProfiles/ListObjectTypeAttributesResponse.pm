
package Paws::CustomerProfiles::ListObjectTypeAttributesResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::ListObjectTypeAttributeItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListObjectTypeAttributesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CustomerProfiles::ListObjectTypeAttributeItem>]

The items returned as part of the response.


=head2 NextToken => Str

The pagination token from the previous call.


=head2 _request_id => Str


=cut

