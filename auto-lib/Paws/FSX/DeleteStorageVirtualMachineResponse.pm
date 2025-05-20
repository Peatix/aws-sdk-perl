
package Paws::FSX::DeleteStorageVirtualMachineResponse;
  use Moose;
  has Lifecycle => (is => 'ro', isa => 'Str');
  has StorageVirtualMachineId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteStorageVirtualMachineResponse

=head1 ATTRIBUTES


=head2 Lifecycle => Str

Describes the lifecycle state of the SVM being deleted.

Valid values are: C<"CREATED">, C<"CREATING">, C<"DELETING">, C<"FAILED">, C<"MISCONFIGURED">, C<"PENDING">
=head2 StorageVirtualMachineId => Str

The ID of the SVM Amazon FSx is deleting.


=head2 _request_id => Str


=cut

1;