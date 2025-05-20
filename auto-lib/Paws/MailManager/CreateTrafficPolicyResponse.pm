
package Paws::MailManager::CreateTrafficPolicyResponse;
  use Moose;
  has TrafficPolicyId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::CreateTrafficPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrafficPolicyId => Str

The identifier of the traffic policy resource.


=head2 _request_id => Str


=cut

1;