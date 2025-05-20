
package Paws::IAM::ListSAMLProvidersResponse;
  use Moose;
  has SAMLProviderList => (is => 'ro', isa => 'ArrayRef[Paws::IAM::SAMLProviderListEntry]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListSAMLProvidersResponse

=head1 ATTRIBUTES


=head2 SAMLProviderList => ArrayRef[L<Paws::IAM::SAMLProviderListEntry>]

The list of SAML provider resource objects defined in IAM for this
Amazon Web Services account.


=head2 _request_id => Str


=cut

