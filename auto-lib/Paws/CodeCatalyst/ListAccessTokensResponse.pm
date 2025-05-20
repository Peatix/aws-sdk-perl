
package Paws::CodeCatalyst::ListAccessTokensResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CodeCatalyst::AccessTokenSummary]', traits => ['NameInRequest'], request_name => 'items', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::ListAccessTokensResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[L<Paws::CodeCatalyst::AccessTokenSummary>]

A list of personal access tokens (PATs) associated with the calling
user identity.


=head2 NextToken => Str

A token returned from a call to this API to indicate the next batch of
results to return, if any.


=head2 _request_id => Str


=cut

