
package Paws::Route53Resolver::UpdateOutpostResolverResponse;
  use Moose;
  has OutpostResolver => (is => 'ro', isa => 'Paws::Route53Resolver::OutpostResolver');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateOutpostResolverResponse

=head1 ATTRIBUTES


=head2 OutpostResolver => L<Paws::Route53Resolver::OutpostResolver>

The response to an C<UpdateOutpostResolver> request.


=head2 _request_id => Str


=cut

1;