
package Paws::Datasync::CreateLocationFsxOpenZfs;
  use Moose;
  has FsxFilesystemArn => (is => 'ro', isa => 'Str', required => 1);
  has Protocol => (is => 'ro', isa => 'Paws::Datasync::FsxProtocol', required => 1);
  has SecurityGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Subdirectory => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLocationFsxOpenZfs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateLocationFsxOpenZfsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationFsxOpenZfs - Arguments for method CreateLocationFsxOpenZfs on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLocationFsxOpenZfs on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateLocationFsxOpenZfs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLocationFsxOpenZfs.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateLocationFsxOpenZfsResponse = $datasync->CreateLocationFsxOpenZfs(
      FsxFilesystemArn => 'MyFsxFilesystemArn',
      Protocol         => {
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
      Subdirectory => 'MyFsxOpenZfsSubdirectory',    # OPTIONAL
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $LocationArn = $CreateLocationFsxOpenZfsResponse->LocationArn;

    # Returns a L<Paws::Datasync::CreateLocationFsxOpenZfsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateLocationFsxOpenZfs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FsxFilesystemArn => Str

The Amazon Resource Name (ARN) of the FSx for OpenZFS file system.



=head2 B<REQUIRED> Protocol => L<Paws::Datasync::FsxProtocol>

The type of protocol that DataSync uses to access your file system.



=head2 B<REQUIRED> SecurityGroupArns => ArrayRef[Str|Undef]

The ARNs of the security groups that are used to configure the FSx for
OpenZFS file system.



=head2 Subdirectory => Str

A subdirectory in the location's path that must begin with C</fsx>.
DataSync uses this subdirectory to read or write data (depending on
whether the file system is a source or destination location).



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

The key-value pair that represents a tag that you want to add to the
resource. The value can be an empty string. This value helps you
manage, filter, and search for your resources. We recommend that you
create a name tag for your location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLocationFsxOpenZfs in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

