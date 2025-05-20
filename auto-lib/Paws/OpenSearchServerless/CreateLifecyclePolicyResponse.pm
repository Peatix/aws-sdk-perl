
package Paws::OpenSearchServerless::CreateLifecyclePolicyResponse;
  use Moose;
  has LifecyclePolicyDetail => (is => 'ro', isa => 'Paws::OpenSearchServerless::LifecyclePolicyDetail', traits => ['NameInRequest'], request_name => 'lifecyclePolicyDetail' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::CreateLifecyclePolicyResponse

=head1 ATTRIBUTES


=head2 LifecyclePolicyDetail => L<Paws::OpenSearchServerless::LifecyclePolicyDetail>

Details about the created lifecycle policy.


=head2 _request_id => Str


=cut

1;