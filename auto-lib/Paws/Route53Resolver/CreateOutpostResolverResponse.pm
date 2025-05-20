
package Paws::Route53Resolver::CreateOutpostResolverResponse;
  use Moose;
  has OutpostResolver => (is => 'ro', isa => 'Paws::Route53Resolver::OutpostResolver');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::CreateOutpostResolverResponse

=head1 ATTRIBUTES


=head2 OutpostResolver => L<Paws::Route53Resolver::OutpostResolver>

Information about the C<CreateOutpostResolver> request, including the
status of the request.


=head2 _request_id => Str


=cut

1;