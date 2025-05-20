
package Paws::Datasync::CreateLocationFsxOntap;
  use Moose;
  has Protocol => (is => 'ro', isa => 'Paws::Datasync::FsxProtocol', required => 1);
  has SecurityGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has StorageVirtualMachineArn => (is => 'ro', isa => 'Str', required => 1);
  has Subdirectory => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLocationFsxOntap');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateLocationFsxOntapResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationFsxOntap - Arguments for method CreateLocationFsxOntap on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLocationFsxOntap on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateLocationFsxOntap.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLocationFsxOntap.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateLocationFsxOntapResponse = $datasync->CreateLocationFsxOntap(
      Protocol => {
        NFS => {
          MountOptions => {
            Version =>
              'AUTOMATIC',   # values: AUTOMATIC, NFS3, NFS4_0, NFS4_1; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        SMB => {
          Password     => 'MySmbPassword',    # max: 104
          User         => 'MySmbUser',        # max: 104
          Domain       => 'MySmbDomain',      # max: 253; OPTIONAL
          MountOptions => {
            Version => 'AUTOMATIC'
            ,    # values: AUTOMATIC, SMB2, SMB3, SMB1, SMB2_0; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      SecurityGroupArns => [
        'MyEc2SecurityGroupArn', ...    # max: 128
      ],
      StorageVirtualMachineArn => 'MyStorageVirtualMachineArn',
      Subdirectory             => 'MyFsxOntapSubdirectory',       # OPTIONAL
      Tags                     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $LocationArn = $CreateLocationFsxOntapResponse->LocationArn;

    # Returns a L<Paws::Datasync::CreateLocationFsxOntapResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateLocationFsxOntap>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Protocol => L<Paws::Datasync::FsxProtocol>





=head2 B<REQUIRED> SecurityGroupArns => ArrayRef[Str|Undef]

Specifies the Amazon EC2 security groups that provide access to your
file system's preferred subnet.

The security groups must allow outbound traffic on the following ports
(depending on the protocol you use):

=over

=item *

B<Network File System (NFS)>: TCP ports 111, 635, and 2049

=item *

B<Server Message Block (SMB)>: TCP port 445

=back

Your file system's security groups must also allow inbound traffic on
the same ports.



=head2 B<REQUIRED> StorageVirtualMachineArn => Str

Specifies the ARN of the storage virtual machine (SVM) in your file
system where you want to copy data to or from.



=head2 Subdirectory => Str

Specifies a path to the file share in the SVM where you want to
transfer data to or from.

You can specify a junction path (also known as a mount point), qtree
path (for NFS file shares), or share name (for SMB file shares). For
example, your mount path might be C</vol1>, C</vol1/tree1>, or
C</share1>.

Don't specify a junction path in the SVM's root volume. For more
information, see Managing FSx for ONTAP storage virtual machines
(https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html)
in the I<Amazon FSx for NetApp ONTAP User Guide>.



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

Specifies labels that help you categorize, filter, and search for your
Amazon Web Services resources. We recommend creating at least a name
tag for your location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLocationFsxOntap in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

