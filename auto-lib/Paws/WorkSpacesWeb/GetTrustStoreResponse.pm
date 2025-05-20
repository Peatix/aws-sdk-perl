
package Paws::WorkSpacesWeb::GetTrustStoreResponse;
  use Moose;
  has TrustStore => (is => 'ro', isa => 'Paws::WorkSpacesWeb::TrustStore', traits => ['NameInRequest'], request_name => 'trustStore');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::GetTrustStoreResponse

=head1 ATTRIBUTES


=head2 TrustStore => L<Paws::WorkSpacesWeb::TrustStore>

The trust store.


=head2 _request_id => Str


=cut

