
package Paws::Kafka::PutClusterPolicyResponse;
  use Moose;
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentVersion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::PutClusterPolicyResponse

=head1 ATTRIBUTES


=head2 CurrentVersion => Str

The policy version.


=head2 _request_id => Str


=cut

