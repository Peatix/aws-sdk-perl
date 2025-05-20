
package Paws::CloudWatchLogs::GetDeliveryDestinationPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Paws::CloudWatchLogs::Policy', traits => ['NameInRequest'], request_name => 'policy' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetDeliveryDestinationPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => L<Paws::CloudWatchLogs::Policy>

The IAM policy for this delivery destination.


=head2 _request_id => Str


=cut

1;