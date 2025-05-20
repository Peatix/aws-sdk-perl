
package Paws::OpenSearchServerless::ListSecurityPoliciesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SecurityPolicySummaries => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::SecurityPolicySummary]', traits => ['NameInRequest'], request_name => 'securityPolicySummaries' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::ListSecurityPoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.


=head2 SecurityPolicySummaries => ArrayRef[L<Paws::OpenSearchServerless::SecurityPolicySummary>]

Details about the security policies in your account.


=head2 _request_id => Str


=cut

1;