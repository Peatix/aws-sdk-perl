
package Paws::ElastiCache::CopyServerlessCacheSnapshot;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has SourceServerlessCacheSnapshotName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Tag]');
  has TargetServerlessCacheSnapshotName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyServerlessCacheSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CopyServerlessCacheSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyServerlessCacheSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CopyServerlessCacheSnapshot - Arguments for method CopyServerlessCacheSnapshot on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyServerlessCacheSnapshot on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method CopyServerlessCacheSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyServerlessCacheSnapshot.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $CopyServerlessCacheSnapshotResponse =
      $elasticache->CopyServerlessCacheSnapshot(
      SourceServerlessCacheSnapshotName => 'MyString',
      TargetServerlessCacheSnapshotName => 'MyString',
      KmsKeyId                          => 'MyString',    # OPTIONAL
      Tags                              => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                  # OPTIONAL
      );

    # Results:
    my $ServerlessCacheSnapshot =
      $CopyServerlessCacheSnapshotResponse->ServerlessCacheSnapshot;

   # Returns a L<Paws::ElastiCache::CopyServerlessCacheSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/CopyServerlessCacheSnapshot>

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

The identifier of the KMS key used to encrypt the target snapshot.
Available for Valkey, Redis OSS and Serverless Memcached only.



=head2 B<REQUIRED> SourceServerlessCacheSnapshotName => Str

The identifier of the existing serverless cacheE<rsquo>s snapshot to be
copied. Available for Valkey, Redis OSS and Serverless Memcached only.



=head2 Tags => ArrayRef[L<Paws::ElastiCache::Tag>]

A list of tags to be added to the target snapshot resource. A tag is a
key-value pair. Available for Valkey, Redis OSS and Serverless
Memcached only. Default: NULL



=head2 B<REQUIRED> TargetServerlessCacheSnapshotName => Str

The identifier for the snapshot to be created. Available for Valkey,
Redis OSS and Serverless Memcached only.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyServerlessCacheSnapshot in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

