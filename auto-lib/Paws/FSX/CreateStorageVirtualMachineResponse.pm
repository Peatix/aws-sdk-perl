
package Paws::FSX::CreateStorageVirtualMachineResponse;
  use Moose;
  has StorageVirtualMachine => (is => 'ro', isa => 'Paws::FSX::StorageVirtualMachine');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateStorageVirtualMachineResponse

=head1 ATTRIBUTES


=head2 StorageVirtualMachine => L<Paws::FSX::StorageVirtualMachine>

Returned after a successful C<CreateStorageVirtualMachine> operation;
describes the SVM just created.


=head2 _request_id => Str


=cut

1;