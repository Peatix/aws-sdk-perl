
package Paws::OpenSearchServerless::CreateAccessPolicyResponse;
  use Moose;
  has AccessPolicyDetail => (is => 'ro', isa => 'Paws::OpenSearchServerless::AccessPolicyDetail', traits => ['NameInRequest'], request_name => 'accessPolicyDetail' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::CreateAccessPolicyResponse

=head1 ATTRIBUTES


=head2 AccessPolicyDetail => L<Paws::OpenSearchServerless::AccessPolicyDetail>

Details about the created access policy.


=head2 _request_id => Str


=cut

1;