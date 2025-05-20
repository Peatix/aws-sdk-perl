
package Paws::Datasync::UpdateLocationFsxOntap;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);
  has Protocol => (is => 'ro', isa => 'Paws::Datasync::FsxUpdateProtocol');
  has Subdirectory => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLocationFsxOntap');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateLocationFsxOntapResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateLocationFsxOntap - Arguments for method UpdateLocationFsxOntap on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLocationFsxOntap on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateLocationFsxOntap.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLocationFsxOntap.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateLocationFsxOntapResponse = $datasync->UpdateLocationFsxOntap(
      LocationArn => 'MyLocationArn',
      Protocol    => {
        NFS => {
          MountOptions => {
            Version =>
              'AUTOMATIC',   # values: AUTOMATIC, NFS3, NFS4_0, NFS4_1; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        SMB => {
          Domain       => 'MyUpdateSmbDomain',    # max: 253; OPTIONAL
          MountOptions => {
            Version => 'AUTOMATIC'
            ,    # values: AUTOMATIC, SMB2, SMB3, SMB1, SMB2_0; OPTIONAL
          },    # OPTIONAL
          Password => 'MySmbPassword',    # max: 104; OPTIONAL
          User     => 'MySmbUser',        # max: 104; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Subdirectory => 'MyFsxOntapSubdirectory',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateLocationFsxOntap>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationArn => Str

Specifies the Amazon Resource Name (ARN) of the FSx for ONTAP transfer
location that you're updating.



=head2 Protocol => L<Paws::Datasync::FsxUpdateProtocol>

Specifies the data transfer protocol that DataSync uses to access your
Amazon FSx file system.



=head2 Subdirectory => Str

Specifies a path to the file share in the storage virtual machine (SVM)
where you want to transfer data to or from.

You can specify a junction path (also known as a mount point), qtree
path (for NFS file shares), or share name (for SMB file shares). For
example, your mount path might be C</vol1>, C</vol1/tree1>, or
C</share1>.

Don't specify a junction path in the SVM's root volume. For more
information, see Managing FSx for ONTAP storage virtual machines
(https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html)
in the I<Amazon FSx for NetApp ONTAP User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLocationFsxOntap in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

