
package Paws::OpenSearch::ListVpcEndpointAccessResponse;
  use Moose;
  has AuthorizedPrincipalList => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::AuthorizedPrincipal]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListVpcEndpointAccessResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorizedPrincipalList => ArrayRef[L<Paws::OpenSearch::AuthorizedPrincipal>]

A list of IAM principals
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html)
that can currently access the domain.


=head2 B<REQUIRED> NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Send
the request again using the returned token to retrieve the next page.


=head2 _request_id => Str


=cut

