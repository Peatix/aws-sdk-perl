
package Paws::WorkMail::ListPersonalAccessTokensResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PersonalAccessTokenSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::PersonalAccessTokenSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListPersonalAccessTokensResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token from the previous response to query the next page.


=head2 PersonalAccessTokenSummaries => ArrayRef[L<Paws::WorkMail::PersonalAccessTokenSummary>]

Lists all the personal tokens in an organization or user, if user ID is
provided.


=head2 _request_id => Str


=cut

1;