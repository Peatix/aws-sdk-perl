
package Paws::OpenSearchServerless::UpdateSecurityConfigResponse;
  use Moose;
  has SecurityConfigDetail => (is => 'ro', isa => 'Paws::OpenSearchServerless::SecurityConfigDetail', traits => ['NameInRequest'], request_name => 'securityConfigDetail' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::UpdateSecurityConfigResponse

=head1 ATTRIBUTES


=head2 SecurityConfigDetail => L<Paws::OpenSearchServerless::SecurityConfigDetail>

Details about the updated security configuration.


=head2 _request_id => Str


=cut

1;