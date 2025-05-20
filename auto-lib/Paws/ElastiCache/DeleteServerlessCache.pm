
package Paws::ElastiCache::DeleteServerlessCache;
  use Moose;
  has FinalSnapshotName => (is => 'ro', isa => 'Str');
  has ServerlessCacheName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteServerlessCache');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::DeleteServerlessCacheResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteServerlessCacheResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DeleteServerlessCache - Arguments for method DeleteServerlessCache on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteServerlessCache on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DeleteServerlessCache.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteServerlessCache.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $DeleteServerlessCacheResponse = $elasticache->DeleteServerlessCache(
      ServerlessCacheName => 'MyString',
      FinalSnapshotName   => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ServerlessCache = $DeleteServerlessCacheResponse->ServerlessCache;

    # Returns a L<Paws::ElastiCache::DeleteServerlessCacheResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DeleteServerlessCache>

=head1 ATTRIBUTES


=head2 FinalSnapshotName => Str

Name of the final snapshot to be taken before the serverless cache is
deleted. Available for Valkey, Redis OSS and Serverless Memcached only.
Default: NULL, i.e. a final snapshot is not taken.



=head2 B<REQUIRED> ServerlessCacheName => Str

The identifier of the serverless cache to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteServerlessCache in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

