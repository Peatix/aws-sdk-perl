
package Paws::MailManager::CreateIngressPointResponse;
  use Moose;
  has IngressPointId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::CreateIngressPointResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IngressPointId => Str

The unique identifier for a previously created ingress endpoint.


=head2 _request_id => Str


=cut

1;