
package Paws::CognitoIdp::ListIdentityProvidersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Providers => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::ProviderDescription]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListIdentityProvidersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The identifier that Amazon Cognito returned with the previous request
to this operation. When you include a pagination token in your request,
Amazon Cognito returns the next set of items in the list. By use of
this token, you can paginate through the full list of items.


=head2 B<REQUIRED> Providers => ArrayRef[L<Paws::CognitoIdp::ProviderDescription>]

An array of the IdPs in your user pool. For each, the response includes
identifiers, the IdP name and type, and trust-relationship details like
the issuer URL.


=head2 _request_id => Str


=cut

1;