
package Paws::ElastiCache::ExportServerlessCacheSnapshot;
  use Moose;
  has S3BucketName => (is => 'ro', isa => 'Str', required => 1);
  has ServerlessCacheSnapshotName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportServerlessCacheSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::ExportServerlessCacheSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ExportServerlessCacheSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ExportServerlessCacheSnapshot - Arguments for method ExportServerlessCacheSnapshot on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportServerlessCacheSnapshot on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method ExportServerlessCacheSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportServerlessCacheSnapshot.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $ExportServerlessCacheSnapshotResponse =
      $elasticache->ExportServerlessCacheSnapshot(
      S3BucketName                => 'MyString',
      ServerlessCacheSnapshotName => 'MyString',

      );

    # Results:
    my $ServerlessCacheSnapshot =
      $ExportServerlessCacheSnapshotResponse->ServerlessCacheSnapshot;

 # Returns a L<Paws::ElastiCache::ExportServerlessCacheSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/ExportServerlessCacheSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3BucketName => Str

Name of the Amazon S3 bucket to export the snapshot to. The Amazon S3
bucket must also be in same region as the snapshot. Available for
Valkey and Redis OSS only.



=head2 B<REQUIRED> ServerlessCacheSnapshotName => Str

The identifier of the serverless cache snapshot to be exported to S3.
Available for Valkey and Redis OSS only.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportServerlessCacheSnapshot in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

