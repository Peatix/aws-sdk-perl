
package Paws::OpenSearchServerless::UpdateAccessPolicyResponse;
  use Moose;
  has AccessPolicyDetail => (is => 'ro', isa => 'Paws::OpenSearchServerless::AccessPolicyDetail', traits => ['NameInRequest'], request_name => 'accessPolicyDetail' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::UpdateAccessPolicyResponse

=head1 ATTRIBUTES


=head2 AccessPolicyDetail => L<Paws::OpenSearchServerless::AccessPolicyDetail>

Details about the updated access policy.


=head2 _request_id => Str


=cut

1;