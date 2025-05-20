
package Paws::Omics::CreateRunCache;
  use Moose;
  has CacheBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheBehavior');
  has CacheBucketOwnerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheBucketOwnerId');
  has CacheS3Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheS3Location', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRunCache');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/runCache');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::CreateRunCacheResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateRunCache - Arguments for method CreateRunCache on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRunCache on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method CreateRunCache.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRunCache.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $CreateRunCacheResponse = $omics->CreateRunCache(
      CacheS3Location    => 'MyS3UriForBucketOrObject',
      RequestId          => 'MyRunCacheRequestId',
      CacheBehavior      => 'CACHE_ON_FAILURE',           # OPTIONAL
      CacheBucketOwnerId => 'MyAwsAccountId',             # OPTIONAL
      Description        => 'MyUserCustomDescription',    # OPTIONAL
      Name               => 'MyUserCustomName',           # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn    = $CreateRunCacheResponse->Arn;
    my $Id     = $CreateRunCacheResponse->Id;
    my $Status = $CreateRunCacheResponse->Status;
    my $Tags   = $CreateRunCacheResponse->Tags;

    # Returns a L<Paws::Omics::CreateRunCacheResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/CreateRunCache>

=head1 ATTRIBUTES


=head2 CacheBehavior => Str

Default cache behavior for runs that use this cache. Supported values
are:

C<CACHE_ON_FAILURE>: Caches task outputs from completed tasks for runs
that fail. This setting is useful if you're debugging a workflow that
fails after several tasks completed successfully. The subsequent run
uses the cache outputs for previously-completed tasks if the task
definition, inputs, and container in ECR are identical to the prior
run.

C<CACHE_ALWAYS>: Caches task outputs from completed tasks for all runs.
This setting is useful in development mode, but do not use it in a
production setting.

If you don't specify a value, the default behavior is CACHE_ON_FAILURE.
When you start a run that uses this cache, you can override the default
cache behavior.

For more information, see Run cache behavior
(https://docs.aws.amazon.com/omics/latest/dev/how-run-cache.html#run-cache-behavior)
in the Amazon Web Services HealthOmics User Guide.

Valid values are: C<"CACHE_ON_FAILURE">, C<"CACHE_ALWAYS">

=head2 CacheBucketOwnerId => Str

The Amazon Web Services account ID of the expected owner of the S3
bucket for the run cache. If not provided, your account ID is set as
the owner of the bucket.



=head2 B<REQUIRED> CacheS3Location => Str

Specify the S3 location for storing the cached task outputs. This data
must be immediately accessible (not in an archived state).



=head2 Description => Str

Enter a description of the run cache.



=head2 Name => Str

Enter a user-friendly name for the run cache.



=head2 B<REQUIRED> RequestId => Str

A unique request token, to ensure idempotency. If you don't specify a
token, Amazon Web Services HealthOmics automatically generates a
universally unique identifier (UUID) for the request.



=head2 Tags => L<Paws::Omics::TagMap>

Specify one or more tags to associate with this run cache.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRunCache in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

