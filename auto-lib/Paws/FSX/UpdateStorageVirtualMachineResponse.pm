
package Paws::FSX::UpdateStorageVirtualMachineResponse;
  use Moose;
  has StorageVirtualMachine => (is => 'ro', isa => 'Paws::FSX::StorageVirtualMachine');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateStorageVirtualMachineResponse

=head1 ATTRIBUTES


=head2 StorageVirtualMachine => L<Paws::FSX::StorageVirtualMachine>




=head2 _request_id => Str


=cut

1;