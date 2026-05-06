
package Paws::OpenSearch::AuthorizeVpcEndpointAccessResponse;
  use Moose;
  has AuthorizedPrincipal => (is => 'ro', isa => 'Paws::OpenSearch::AuthorizedPrincipal', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::AuthorizeVpcEndpointAccessResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorizedPrincipal => L<Paws::OpenSearch::AuthorizedPrincipal>

Information about the Amazon Web Services account or service that was
provided access to the domain.


=head2 _request_id => Str


=cut

