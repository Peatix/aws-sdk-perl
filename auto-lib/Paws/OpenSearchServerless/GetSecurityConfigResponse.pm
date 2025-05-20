
package Paws::OpenSearchServerless::GetSecurityConfigResponse;
  use Moose;
  has SecurityConfigDetail => (is => 'ro', isa => 'Paws::OpenSearchServerless::SecurityConfigDetail', traits => ['NameInRequest'], request_name => 'securityConfigDetail' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::GetSecurityConfigResponse

=head1 ATTRIBUTES


=head2 SecurityConfigDetail => L<Paws::OpenSearchServerless::SecurityConfigDetail>

Details of the requested security configuration.


=head2 _request_id => Str


=cut

1;