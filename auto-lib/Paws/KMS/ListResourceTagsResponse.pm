
package Paws::KMS::ListResourceTagsResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::KMS::Tag]');
  has Truncated => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ListResourceTagsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

When C<Truncated> is true, this element is present and contains the
value to use for the C<Marker> parameter in a subsequent request.

Do not assume or infer any information from this value.


=head2 Tags => ArrayRef[L<Paws::KMS::Tag>]

A list of tags. Each tag consists of a tag key and a tag value.

Tagging or untagging a KMS key can allow or deny permission to the KMS
key. For details, see ABAC for KMS
(https://docs.aws.amazon.com/kms/latest/developerguide/abac.html) in
the I<Key Management Service Developer Guide>.


=head2 Truncated => Bool

A flag that indicates whether there are more items in the list. When
this value is true, the list in this response is truncated. To get more
items, pass the value of the C<NextMarker> element in this response to
the C<Marker> parameter in a subsequent request.


=head2 _request_id => Str


=cut

1;