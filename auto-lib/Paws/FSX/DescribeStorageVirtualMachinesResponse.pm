
package Paws::FSX::DescribeStorageVirtualMachinesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StorageVirtualMachines => (is => 'ro', isa => 'ArrayRef[Paws::FSX::StorageVirtualMachine]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeStorageVirtualMachinesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 StorageVirtualMachines => ArrayRef[L<Paws::FSX::StorageVirtualMachine>]

Returned after a successful C<DescribeStorageVirtualMachines>
operation, describing each SVM.


=head2 _request_id => Str


=cut

1;