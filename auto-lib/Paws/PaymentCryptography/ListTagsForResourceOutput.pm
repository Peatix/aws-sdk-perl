
package Paws::PaymentCryptography::ListTagsForResourceOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PaymentCryptography::Tag]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or an empty or null value if
there are no more results.


=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::PaymentCryptography::Tag>]

The list of tags associated with a C<ResourceArn>. Each tag will list
the key-value pair contained within that tag.


=head2 _request_id => Str


=cut

1;