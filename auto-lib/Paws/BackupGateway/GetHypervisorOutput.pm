
package Paws::BackupGateway::GetHypervisorOutput;
  use Moose;
  has Hypervisor => (is => 'ro', isa => 'Paws::BackupGateway::HypervisorDetails');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::GetHypervisorOutput

=head1 ATTRIBUTES


=head2 Hypervisor => L<Paws::BackupGateway::HypervisorDetails>

Details about the requested hypervisor.


=head2 _request_id => Str


=cut

1;