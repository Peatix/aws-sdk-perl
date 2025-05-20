
package Paws::FSX::CreateFileCache;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has CopyTagsToDataRepositoryAssociations => (is => 'ro', isa => 'Bool');
  has DataRepositoryAssociations => (is => 'ro', isa => 'ArrayRef[Paws::FSX::FileCacheDataRepositoryAssociation]');
  has FileCacheType => (is => 'ro', isa => 'Str', required => 1);
  has FileCacheTypeVersion => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LustreConfiguration => (is => 'ro', isa => 'Paws::FSX::CreateFileCacheLustreConfiguration');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StorageCapacity => (is => 'ro', isa => 'Int', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFileCache');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::CreateFileCacheResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateFileCache - Arguments for method CreateFileCache on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFileCache on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method CreateFileCache.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFileCache.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $CreateFileCacheResponse = $fsx->CreateFileCache(
      FileCacheType        => 'LUSTRE',
      FileCacheTypeVersion => 'MyFileSystemTypeVersion',
      StorageCapacity      => 1,
      SubnetIds            => [
        'MySubnetId', ...    # min: 15, max: 24
      ],
      ClientRequestToken                   => 'MyClientRequestToken', # OPTIONAL
      CopyTagsToDataRepositoryAssociations => 1,                      # OPTIONAL
      DataRepositoryAssociations           => [
        {
          DataRepositoryPath           => 'MyArchivePath',   # min: 3, max: 4357
          FileCachePath                => 'MyNamespace',     # min: 1, max: 4096
          DataRepositorySubdirectories => [
            'MyNamespace', ...                               # min: 1, max: 4096
          ],    # max: 500; OPTIONAL
          NFS => {
            Version => 'NFS3',    # values: NFS3
            DnsIps  => [
              'MyIpAddress', ...    # min: 7, max: 15
            ],    # max: 10; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      KmsKeyId            => 'MyKmsKeyId',    # OPTIONAL
      LustreConfiguration => {
        DeploymentType        => 'CACHE_1',    # values: CACHE_1
        MetadataConfiguration => {
          StorageCapacity => 1,                # max: 2147483647

        },
        PerUnitStorageThroughput   => 1,              # min: 12, max: 1000
        WeeklyMaintenanceStartTime => 'MyWeeklyTime', # min: 7, max: 7; OPTIONAL
      },    # OPTIONAL
      SecurityGroupIds => [
        'MySecurityGroupId', ...    # min: 11, max: 20
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $FileCache = $CreateFileCacheResponse->FileCache;

    # Returns a L<Paws::FSX::CreateFileCacheResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/CreateFileCache>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

An idempotency token for resource creation, in a string of up to 63
ASCII characters. This token is automatically filled on your behalf
when you use the Command Line Interface (CLI) or an Amazon Web Services
SDK.

By using the idempotent operation, you can retry a C<CreateFileCache>
operation without the risk of creating an extra cache. This approach
can be useful when an initial call fails in a way that makes it unclear
whether a cache was created. Examples are if a transport level timeout
occurred, or your connection was reset. If you use the same client
request token and the initial call created a cache, the client receives
success as long as the parameters are the same.



=head2 CopyTagsToDataRepositoryAssociations => Bool

A boolean flag indicating whether tags for the cache should be copied
to data repository associations. This value defaults to false.



=head2 DataRepositoryAssociations => ArrayRef[L<Paws::FSX::FileCacheDataRepositoryAssociation>]

A list of up to 8 configurations for data repository associations
(DRAs) to be created during the cache creation. The DRAs link the cache
to either an Amazon S3 data repository or a Network File System (NFS)
data repository that supports the NFSv3 protocol.

The DRA configurations must meet the following requirements:

=over

=item *

All configurations on the list must be of the same data repository
type, either all S3 or all NFS. A cache can't link to different data
repository types at the same time.

=item *

An NFS DRA must link to an NFS file system that supports the NFSv3
protocol.

=back

DRA automatic import and automatic export is not supported.



=head2 B<REQUIRED> FileCacheType => Str

The type of cache that you're creating, which must be C<LUSTRE>.

Valid values are: C<"LUSTRE">

=head2 B<REQUIRED> FileCacheTypeVersion => Str

Sets the Lustre version for the cache that you're creating, which must
be C<2.12>.



=head2 KmsKeyId => Str

Specifies the ID of the Key Management Service (KMS) key to use for
encrypting data on an Amazon File Cache. If a C<KmsKeyId> isn't
specified, the Amazon FSx-managed KMS key for your account is used. For
more information, see Encrypt
(https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html)
in the I<Key Management Service API Reference>.



=head2 LustreConfiguration => L<Paws::FSX::CreateFileCacheLustreConfiguration>

The configuration for the Amazon File Cache resource being created.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of IDs specifying the security groups to apply to all network
interfaces created for Amazon File Cache access. This list isn't
returned in later requests to describe the cache.



=head2 B<REQUIRED> StorageCapacity => Int

The storage capacity of the cache in gibibytes (GiB). Valid values are
1200 GiB, 2400 GiB, and increments of 2400 GiB.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]





=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFileCache in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

