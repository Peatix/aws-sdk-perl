
package Paws::Datasync::DescribeLocationFsxOntapResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has FsxFilesystemArn => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Paws::Datasync::FsxProtocol');
  has SecurityGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StorageVirtualMachineArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationFsxOntapResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time that the location was created.


=head2 FsxFilesystemArn => Str

The ARN of the FSx for ONTAP file system.


=head2 LocationArn => Str

The ARN of the FSx for ONTAP file system location.


=head2 LocationUri => Str

The uniform resource identifier (URI) of the FSx for ONTAP file system
location.


=head2 Protocol => L<Paws::Datasync::FsxProtocol>




=head2 SecurityGroupArns => ArrayRef[Str|Undef]

The security groups that DataSync uses to access your FSx for ONTAP
file system.


=head2 StorageVirtualMachineArn => Str

The ARN of the storage virtual machine (SVM) on your FSx for ONTAP file
system where you're copying data to or from.


=head2 _request_id => Str


=cut

1;