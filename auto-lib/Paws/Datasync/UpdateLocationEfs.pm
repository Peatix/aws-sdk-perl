
package Paws::Datasync::UpdateLocationEfs;
  use Moose;
  has AccessPointArn => (is => 'ro', isa => 'Str');
  has FileSystemAccessRoleArn => (is => 'ro', isa => 'Str');
  has InTransitEncryption => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);
  has Subdirectory => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLocationEfs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateLocationEfsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateLocationEfs - Arguments for method UpdateLocationEfs on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLocationEfs on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateLocationEfs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLocationEfs.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateLocationEfsResponse = $datasync->UpdateLocationEfs(
      LocationArn             => 'MyLocationArn',
      AccessPointArn          => 'MyUpdatedEfsAccessPointArn',    # OPTIONAL
      FileSystemAccessRoleArn => 'MyUpdatedEfsIamRoleArn',        # OPTIONAL
      InTransitEncryption     => 'NONE',                          # OPTIONAL
      Subdirectory            => 'MyEfsSubdirectory',             # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateLocationEfs>

=head1 ATTRIBUTES


=head2 AccessPointArn => Str

Specifies the Amazon Resource Name (ARN) of the access point that
DataSync uses to mount your Amazon EFS file system.

For more information, see Accessing restricted Amazon EFS file systems
(https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-iam).



=head2 FileSystemAccessRoleArn => Str

Specifies an Identity and Access Management (IAM) role that allows
DataSync to access your Amazon EFS file system.

For information on creating this role, see Creating a DataSync IAM role
for Amazon EFS file system access
(https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-iam-role).



=head2 InTransitEncryption => Str

Specifies whether you want DataSync to use Transport Layer Security
(TLS) 1.2 encryption when it transfers data to or from your Amazon EFS
file system.

If you specify an access point using C<AccessPointArn> or an IAM role
using C<FileSystemAccessRoleArn>, you must set this parameter to
C<TLS1_2>.

Valid values are: C<"NONE">, C<"TLS1_2">

=head2 B<REQUIRED> LocationArn => Str

Specifies the Amazon Resource Name (ARN) of the Amazon EFS transfer
location that you're updating.



=head2 Subdirectory => Str

Specifies a mount path for your Amazon EFS file system. This is where
DataSync reads or writes data on your file system (depending on if this
is a source or destination location).

By default, DataSync uses the root directory (or access point
(https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html) if
you provide one by using C<AccessPointArn>). You can also include
subdirectories using forward slashes (for example, C</path/to/folder>).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLocationEfs in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

