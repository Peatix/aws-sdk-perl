
package Paws::ElastiCache::CreateServerlessCacheSnapshot;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has ServerlessCacheName => (is => 'ro', isa => 'Str', required => 1);
  has ServerlessCacheSnapshotName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServerlessCacheSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CreateServerlessCacheSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateServerlessCacheSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateServerlessCacheSnapshot - Arguments for method CreateServerlessCacheSnapshot on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServerlessCacheSnapshot on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method CreateServerlessCacheSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServerlessCacheSnapshot.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $CreateServerlessCacheSnapshotResponse =
      $elasticache->CreateServerlessCacheSnapshot(
      ServerlessCacheName         => 'MyString',
      ServerlessCacheSnapshotName => 'MyString',
      KmsKeyId                    => 'MyString',    # OPTIONAL
      Tags                        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                            # OPTIONAL
      );

    # Results:
    my $ServerlessCacheSnapshot =
      $CreateServerlessCacheSnapshotResponse->ServerlessCacheSnapshot;

 # Returns a L<Paws::ElastiCache::CreateServerlessCacheSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/CreateServerlessCacheSnapshot>

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

The ID of the KMS key used to encrypt the snapshot. Available for
Valkey, Redis OSS and Serverless Memcached only. Default: NULL



=head2 B<REQUIRED> ServerlessCacheName => Str

The name of an existing serverless cache. The snapshot is created from
this cache. Available for Valkey, Redis OSS and Serverless Memcached
only.



=head2 B<REQUIRED> ServerlessCacheSnapshotName => Str

The name for the snapshot being created. Must be unique for the
customer account. Available for Valkey, Redis OSS and Serverless
Memcached only. Must be between 1 and 255 characters.



=head2 Tags => ArrayRef[L<Paws::ElastiCache::Tag>]

A list of tags to be added to the snapshot resource. A tag is a
key-value pair. Available for Valkey, Redis OSS and Serverless
Memcached only.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServerlessCacheSnapshot in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

