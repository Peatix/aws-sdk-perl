
package Paws::OpenSearchServerless::CreateSecurityPolicyResponse;
  use Moose;
  has SecurityPolicyDetail => (is => 'ro', isa => 'Paws::OpenSearchServerless::SecurityPolicyDetail', traits => ['NameInRequest'], request_name => 'securityPolicyDetail' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::CreateSecurityPolicyResponse

=head1 ATTRIBUTES


=head2 SecurityPolicyDetail => L<Paws::OpenSearchServerless::SecurityPolicyDetail>

Details about the created security policy.


=head2 _request_id => Str


=cut

1;