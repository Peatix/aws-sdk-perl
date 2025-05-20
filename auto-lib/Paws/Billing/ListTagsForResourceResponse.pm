
package Paws::Billing::ListTagsForResourceResponse;
  use Moose;
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::Billing::ResourceTag]', traits => ['NameInRequest'], request_name => 'resourceTags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Billing::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 ResourceTags => ArrayRef[L<Paws::Billing::ResourceTag>]

A list of tag key value pairs that are associated with the resource.


=head2 _request_id => Str


=cut

1;