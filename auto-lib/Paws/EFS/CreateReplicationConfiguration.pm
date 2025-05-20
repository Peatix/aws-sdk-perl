
package Paws::EFS::CreateReplicationConfiguration;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::EFS::DestinationToCreate]', required => 1);
  has SourceFileSystemId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SourceFileSystemId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/file-systems/{SourceFileSystemId}/replication-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::ReplicationConfigurationDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::CreateReplicationConfiguration - Arguments for method CreateReplicationConfiguration on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplicationConfiguration on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method CreateReplicationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplicationConfiguration.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    my $ReplicationConfigurationDescription =
      $elasticfilesystem->CreateReplicationConfiguration(
      Destinations => [
        {
          AvailabilityZoneName =>
            'MyAvailabilityZoneName',    # min: 1, max: 64; OPTIONAL
          FileSystemId => 'MyFileSystemId',    # max: 128; OPTIONAL
          KmsKeyId     => 'MyKmsKeyId',        # max: 2048; OPTIONAL
          Region       => 'MyRegionName',      # min: 1, max: 64; OPTIONAL
          RoleArn      => 'MyRoleArn',         # max: 2048; OPTIONAL
        },
        ...
      ],
      SourceFileSystemId => 'MyFileSystemId',

      );

    # Results:
    my $CreationTime = $ReplicationConfigurationDescription->CreationTime;
    my $Destinations = $ReplicationConfigurationDescription->Destinations;
    my $OriginalSourceFileSystemArn =
      $ReplicationConfigurationDescription->OriginalSourceFileSystemArn;
    my $SourceFileSystemArn =
      $ReplicationConfigurationDescription->SourceFileSystemArn;
    my $SourceFileSystemId =
      $ReplicationConfigurationDescription->SourceFileSystemId;
    my $SourceFileSystemOwnerId =
      $ReplicationConfigurationDescription->SourceFileSystemOwnerId;
    my $SourceFileSystemRegion =
      $ReplicationConfigurationDescription->SourceFileSystemRegion;

    # Returns a L<Paws::EFS::ReplicationConfigurationDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/CreateReplicationConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destinations => ArrayRef[L<Paws::EFS::DestinationToCreate>]

An array of destination configuration objects. Only one destination
configuration object is supported.



=head2 B<REQUIRED> SourceFileSystemId => Str

Specifies the Amazon EFS file system that you want to replicate. This
file system cannot already be a source or destination file system in
another replication configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplicationConfiguration in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

