
package Paws::CloudWatchLogs::PutDeliveryDestinationPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Paws::CloudWatchLogs::Policy', traits => ['NameInRequest'], request_name => 'policy' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutDeliveryDestinationPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => L<Paws::CloudWatchLogs::Policy>

The contents of the policy that you just created.


=head2 _request_id => Str


=cut

1;