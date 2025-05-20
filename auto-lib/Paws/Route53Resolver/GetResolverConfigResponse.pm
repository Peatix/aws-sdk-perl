
package Paws::Route53Resolver::GetResolverConfigResponse;
  use Moose;
  has ResolverConfig => (is => 'ro', isa => 'Paws::Route53Resolver::ResolverConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::GetResolverConfigResponse

=head1 ATTRIBUTES


=head2 ResolverConfig => L<Paws::Route53Resolver::ResolverConfig>

Information about the behavior configuration of Route 53 Resolver
behavior for the VPC you specified in the C<GetResolverConfig> request.


=head2 _request_id => Str


=cut

1;