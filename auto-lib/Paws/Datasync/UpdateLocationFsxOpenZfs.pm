
package Paws::Datasync::UpdateLocationFsxOpenZfs;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);
  has Protocol => (is => 'ro', isa => 'Paws::Datasync::FsxProtocol');
  has Subdirectory => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLocationFsxOpenZfs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateLocationFsxOpenZfsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateLocationFsxOpenZfs - Arguments for method UpdateLocationFsxOpenZfs on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLocationFsxOpenZfs on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateLocationFsxOpenZfs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLocationFsxOpenZfs.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateLocationFsxOpenZfsResponse = $datasync->UpdateLocationFsxOpenZfs(
      LocationArn => 'MyLocationArn',
      Protocol    => {
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
      },    # OPTIONAL
      Subdirectory => 'MySmbSubdirectory',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateLocationFsxOpenZfs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationArn => Str

Specifies the Amazon Resource Name (ARN) of the FSx for OpenZFS
transfer location that you're updating.



=head2 Protocol => L<Paws::Datasync::FsxProtocol>





=head2 Subdirectory => Str

Specifies a subdirectory in the location's path that must begin with
C</fsx>. DataSync uses this subdirectory to read or write data
(depending on whether the file system is a source or destination
location).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLocationFsxOpenZfs in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

