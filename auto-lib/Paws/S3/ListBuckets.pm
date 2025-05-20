
package Paws::S3::ListBuckets;
  use Moose;
  has BucketRegion => (is => 'ro', isa => 'Str', query_name => 'bucket-region', traits => ['ParamInQuery']);
  has ContinuationToken => (is => 'ro', isa => 'Str', query_name => 'continuation-token', traits => ['ParamInQuery']);
  has MaxBuckets => (is => 'ro', isa => 'Int', query_name => 'max-buckets', traits => ['ParamInQuery']);
  has Prefix => (is => 'ro', isa => 'Str', query_name => 'prefix', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBuckets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListBucketsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListBuckets - Arguments for method ListBuckets on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBuckets on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method ListBuckets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBuckets.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $ListBucketsOutput = $s3->ListBuckets(
      BucketRegion      => 'MyBucketRegion',    # OPTIONAL
      ContinuationToken => 'MyToken',           # OPTIONAL
      MaxBuckets        => 1,                   # OPTIONAL
      Prefix            => 'MyPrefix',          # OPTIONAL
    );

    # Results:
    my $Buckets           = $ListBucketsOutput->Buckets;
    my $ContinuationToken = $ListBucketsOutput->ContinuationToken;
    my $Owner             = $ListBucketsOutput->Owner;
    my $Prefix            = $ListBucketsOutput->Prefix;

    # Returns a L<Paws::S3::ListBucketsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/ListBuckets>

=head1 ATTRIBUTES


=head2 BucketRegion => Str

Limits the response to buckets that are located in the specified Amazon
Web Services Region. The Amazon Web Services Region must be expressed
according to the Amazon Web Services Region code, such as C<us-west-2>
for the US West (Oregon) Region. For a list of the valid values for all
of the Amazon Web Services Regions, see Regions and Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region).

Requests made to a Regional endpoint that is different from the
C<bucket-region> parameter are not supported. For example, if you want
to limit the response to your buckets in Region C<us-west-2>, the
request must be made to an endpoint in Region C<us-west-2>.



=head2 ContinuationToken => Str

C<ContinuationToken> indicates to Amazon S3 that the list is being
continued on this bucket with a token. C<ContinuationToken> is
obfuscated and is not a real key. You can use this C<ContinuationToken>
for pagination of the list results.

Length Constraints: Minimum length of 0. Maximum length of 1024.

Required: No.

If you specify the C<bucket-region>, C<prefix>, or
C<continuation-token> query parameters without using C<max-buckets> to
set the maximum number of buckets returned in the response, Amazon S3
applies a default page size of 10,000 and provides a continuation token
if there are more buckets.



=head2 MaxBuckets => Int

Maximum number of buckets to be returned in response. When the number
is more than the count of buckets that are owned by an Amazon Web
Services account, return all the buckets in response.



=head2 Prefix => Str

Limits the response to bucket names that begin with the specified
bucket name prefix.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBuckets in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

