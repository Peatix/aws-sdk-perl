
package Paws::Connect::ListAuthenticationProfilesResponse;
  use Moose;
  has AuthenticationProfileSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::AuthenticationProfileSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListAuthenticationProfilesResponse

=head1 ATTRIBUTES


=head2 AuthenticationProfileSummaryList => ArrayRef[L<Paws::Connect::AuthenticationProfileSummary>]

A summary of a given authentication profile.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

