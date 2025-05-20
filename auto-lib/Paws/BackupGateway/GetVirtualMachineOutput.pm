
package Paws::BackupGateway::GetVirtualMachineOutput;
  use Moose;
  has VirtualMachine => (is => 'ro', isa => 'Paws::BackupGateway::VirtualMachineDetails');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::GetVirtualMachineOutput

=head1 ATTRIBUTES


=head2 VirtualMachine => L<Paws::BackupGateway::VirtualMachineDetails>

This object contains the basic attributes of C<VirtualMachine>
contained by the output of C<GetVirtualMachine>


=head2 _request_id => Str


=cut

1;