
package Paws::ES::AuthorizeVpcEndpointAccessResponse;
  use Moose;
  has AuthorizedPrincipal => (is => 'ro', isa => 'Paws::ES::AuthorizedPrincipal', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::AuthorizeVpcEndpointAccessResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorizedPrincipal => L<Paws::ES::AuthorizedPrincipal>

Information about the account or service that was provided access to
the domain.


=head2 _request_id => Str


=cut

