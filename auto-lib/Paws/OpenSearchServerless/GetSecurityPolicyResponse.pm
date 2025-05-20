
package Paws::OpenSearchServerless::GetSecurityPolicyResponse;
  use Moose;
  has SecurityPolicyDetail => (is => 'ro', isa => 'Paws::OpenSearchServerless::SecurityPolicyDetail', traits => ['NameInRequest'], request_name => 'securityPolicyDetail' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::GetSecurityPolicyResponse

=head1 ATTRIBUTES


=head2 SecurityPolicyDetail => L<Paws::OpenSearchServerless::SecurityPolicyDetail>

Details about the requested security policy.


=head2 _request_id => Str


=cut

1;