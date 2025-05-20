
package Paws::WorkSpacesWeb::ListIdentityProvidersResponse;
  use Moose;
  has IdentityProviders => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpacesWeb::IdentityProviderSummary]', traits => ['NameInRequest'], request_name => 'identityProviders');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::ListIdentityProvidersResponse

=head1 ATTRIBUTES


=head2 IdentityProviders => ArrayRef[L<Paws::WorkSpacesWeb::IdentityProviderSummary>]

The identity providers.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 _request_id => Str


=cut

