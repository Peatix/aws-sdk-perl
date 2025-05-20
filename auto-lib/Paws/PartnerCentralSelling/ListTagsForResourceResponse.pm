
package Paws::PartnerCentralSelling::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::Tag]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::PartnerCentralSelling::Tag>]

A map of the key-value pairs for the tag or tags assigned to the
specified resource.


=head2 _request_id => Str


=cut

1;