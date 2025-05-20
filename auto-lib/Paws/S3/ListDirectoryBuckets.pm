
package Paws::S3::ListDirectoryBuckets;
  use Moose;
  has ContinuationToken => (is => 'ro', isa => 'Str', query_name => 'continuation-token', traits => ['ParamInQuery']);
  has MaxDirectoryBuckets => (is => 'ro', isa => 'Int', query_name => 'max-directory-buckets', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDirectoryBuckets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListDirectoryBucketsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListDirectoryBuckets - Arguments for method ListDirectoryBuckets on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDirectoryBuckets on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method ListDirectoryBuckets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDirectoryBuckets.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $ListDirectoryBucketsOutput = $s3->ListDirectoryBuckets(
      ContinuationToken   => 'MyDirectoryBucketToken',    # OPTIONAL
      MaxDirectoryBuckets => 1,                           # OPTIONAL
    );

    # Results:
    my $Buckets           = $ListDirectoryBucketsOutput->Buckets;
    my $ContinuationToken = $ListDirectoryBucketsOutput->ContinuationToken;

    # Returns a L<Paws::S3::ListDirectoryBucketsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/ListDirectoryBuckets>

=head1 ATTRIBUTES


=head2 ContinuationToken => Str

C<ContinuationToken> indicates to Amazon S3 that the list is being
continued on buckets in this account with a token. C<ContinuationToken>
is obfuscated and is not a real bucket name. You can use this
C<ContinuationToken> for the pagination of the list results.



=head2 MaxDirectoryBuckets => Int

Maximum number of buckets to be returned in response. When the number
is more than the count of buckets that are owned by an Amazon Web
Services account, return all the buckets in response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDirectoryBuckets in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

