
package Paws::MarketplaceDeployment::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::MarketplaceDeployment::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceDeployment::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::MarketplaceDeployment::Tags>

A map of key-value pairs, where each pair represents a tag present on
the resource.


=head2 _request_id => Str


=cut

