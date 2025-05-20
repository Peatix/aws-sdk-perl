
package Paws::OpenSearchServerless::ListAccessPoliciesResponse;
  use Moose;
  has AccessPolicySummaries => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::AccessPolicySummary]', traits => ['NameInRequest'], request_name => 'accessPolicySummaries' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::ListAccessPoliciesResponse

=head1 ATTRIBUTES


=head2 AccessPolicySummaries => ArrayRef[L<Paws::OpenSearchServerless::AccessPolicySummary>]

Details about the requested access policies.


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.


=head2 _request_id => Str


=cut

1;