
package Paws::Connect::GetTrafficDistributionResponse;
  use Moose;
  has AgentConfig => (is => 'ro', isa => 'Paws::Connect::AgentConfig');
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has SignInConfig => (is => 'ro', isa => 'Paws::Connect::SignInConfig');
  has TelephonyConfig => (is => 'ro', isa => 'Paws::Connect::TelephonyConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetTrafficDistributionResponse

=head1 ATTRIBUTES


=head2 AgentConfig => L<Paws::Connect::AgentConfig>

The distribution of agents between the instance and its replica(s).


=head2 Arn => Str

The Amazon Resource Name (ARN) of the traffic distribution group.


=head2 Id => Str

The identifier of the traffic distribution group. This can be the ID or
the ARN if the API is being called in the Region where the traffic
distribution group was created. The ARN must be provided if the call is
from the replicated Region.


=head2 SignInConfig => L<Paws::Connect::SignInConfig>

The distribution that determines which Amazon Web Services Regions
should be used to sign in agents in to both the instance and its
replica(s).


=head2 TelephonyConfig => L<Paws::Connect::TelephonyConfig>

The distribution of traffic between the instance and its replicas.


=head2 _request_id => Str


=cut

