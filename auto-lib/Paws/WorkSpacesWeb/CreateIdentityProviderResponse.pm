
package Paws::WorkSpacesWeb::CreateIdentityProviderResponse;
  use Moose;
  has IdentityProviderArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityProviderArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::CreateIdentityProviderResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityProviderArn => Str

The ARN of the identity provider.


=head2 _request_id => Str


=cut

