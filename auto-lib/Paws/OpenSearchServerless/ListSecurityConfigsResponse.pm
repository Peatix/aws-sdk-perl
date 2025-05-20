
package Paws::OpenSearchServerless::ListSecurityConfigsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SecurityConfigSummaries => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::SecurityConfigSummary]', traits => ['NameInRequest'], request_name => 'securityConfigSummaries' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::ListSecurityConfigsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.


=head2 SecurityConfigSummaries => ArrayRef[L<Paws::OpenSearchServerless::SecurityConfigSummary>]

Details about the security configurations in your account.


=head2 _request_id => Str


=cut

1;