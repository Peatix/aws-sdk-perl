
package Paws::WorkSpacesWeb::UpdateTrustStoreResponse;
  use Moose;
  has TrustStoreArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trustStoreArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::UpdateTrustStoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrustStoreArn => Str

The ARN of the trust store.


=head2 _request_id => Str


=cut

