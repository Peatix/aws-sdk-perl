
package Paws::Kafka::GetClusterPolicyResponse;
  use Moose;
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentVersion');
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::GetClusterPolicyResponse

=head1 ATTRIBUTES


=head2 CurrentVersion => Str

The version of cluster policy.


=head2 Policy => Str

The cluster policy.


=head2 _request_id => Str


=cut

