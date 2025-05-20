
package Paws::ElastiCache::DeleteServerlessCacheSnapshot;
  use Moose;
  has ServerlessCacheSnapshotName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteServerlessCacheSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::DeleteServerlessCacheSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteServerlessCacheSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DeleteServerlessCacheSnapshot - Arguments for method DeleteServerlessCacheSnapshot on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteServerlessCacheSnapshot on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DeleteServerlessCacheSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteServerlessCacheSnapshot.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $DeleteServerlessCacheSnapshotResponse =
      $elasticache->DeleteServerlessCacheSnapshot(
      ServerlessCacheSnapshotName => 'MyString',

      );

    # Results:
    my $ServerlessCacheSnapshot =
      $DeleteServerlessCacheSnapshotResponse->ServerlessCacheSnapshot;

 # Returns a L<Paws::ElastiCache::DeleteServerlessCacheSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DeleteServerlessCacheSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerlessCacheSnapshotName => Str

Idenfitier of the snapshot to be deleted. Available for Valkey, Redis
OSS and Serverless Memcached only.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteServerlessCacheSnapshot in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

