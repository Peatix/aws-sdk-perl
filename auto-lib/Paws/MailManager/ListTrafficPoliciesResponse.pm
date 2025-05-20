
package Paws::MailManager::ListTrafficPoliciesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TrafficPolicies => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::TrafficPolicy]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::ListTrafficPoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If NextToken is returned, there are more results available. The value
of NextToken is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page.


=head2 TrafficPolicies => ArrayRef[L<Paws::MailManager::TrafficPolicy>]

The list of traffic policies.


=head2 _request_id => Str


=cut

1;