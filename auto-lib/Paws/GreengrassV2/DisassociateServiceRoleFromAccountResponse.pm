
package Paws::GreengrassV2::DisassociateServiceRoleFromAccountResponse;
  use Moose;
  has DisassociatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'DisassociatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::DisassociateServiceRoleFromAccountResponse

=head1 ATTRIBUTES


=head2 DisassociatedAt => Str

The time when the service role was disassociated from IoT Greengrass
for your Amazon Web Services account in this Amazon Web Services
Region.


=head2 _request_id => Str


=cut

