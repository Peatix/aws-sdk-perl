
package Paws::Route53Resolver::UpdateResolverConfigResponse;
  use Moose;
  has ResolverConfig => (is => 'ro', isa => 'Paws::Route53Resolver::ResolverConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateResolverConfigResponse

=head1 ATTRIBUTES


=head2 ResolverConfig => L<Paws::Route53Resolver::ResolverConfig>

An array that contains settings for the specified Resolver
configuration.


=head2 _request_id => Str


=cut

1;