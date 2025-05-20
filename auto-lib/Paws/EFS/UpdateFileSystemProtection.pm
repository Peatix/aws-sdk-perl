
package Paws::EFS::UpdateFileSystemProtection;
  use Moose;
  has FileSystemId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FileSystemId', required => 1);
  has ReplicationOverwriteProtection => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFileSystemProtection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/file-systems/{FileSystemId}/protection');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::FileSystemProtectionDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::UpdateFileSystemProtection - Arguments for method UpdateFileSystemProtection on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFileSystemProtection on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method UpdateFileSystemProtection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFileSystemProtection.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    my $FileSystemProtectionDescription =
      $elasticfilesystem->UpdateFileSystemProtection(
      FileSystemId                   => 'MyFileSystemId',
      ReplicationOverwriteProtection => 'ENABLED',          # OPTIONAL
      );

    # Results:
    my $ReplicationOverwriteProtection =
      $FileSystemProtectionDescription->ReplicationOverwriteProtection;

    # Returns a L<Paws::EFS::FileSystemProtectionDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/UpdateFileSystemProtection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileSystemId => Str

The ID of the file system to update.



=head2 ReplicationOverwriteProtection => Str

The status of the file system's replication overwrite protection.

=over

=item *

C<ENABLED> E<ndash> The file system cannot be used as the destination
file system in a replication configuration. The file system is
writeable. Replication overwrite protection is C<ENABLED> by default.

=item *

C<DISABLED> E<ndash> The file system can be used as the destination
file system in a replication configuration. The file system is
read-only and can only be modified by EFS replication.

=item *

C<REPLICATING> E<ndash> The file system is being used as the
destination file system in a replication configuration. The file system
is read-only and is only modified only by EFS replication.

=back

If the replication configuration is deleted, the file system's
replication overwrite protection is re-enabled and the file system
becomes writeable.

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"REPLICATING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFileSystemProtection in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

