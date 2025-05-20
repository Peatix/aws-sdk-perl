
package Paws::CloudFrontKeyValueStore::DescribeKeyValueStore;
  use Moose;
  has KvsARN => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'KvsARN', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeKeyValueStore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/key-value-stores/{KvsARN}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFrontKeyValueStore::DescribeKeyValueStoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFrontKeyValueStore::DescribeKeyValueStore - Arguments for method DescribeKeyValueStore on L<Paws::CloudFrontKeyValueStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeKeyValueStore on the
L<Amazon CloudFront KeyValueStore|Paws::CloudFrontKeyValueStore> service. Use the attributes of this class
as arguments to method DescribeKeyValueStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeKeyValueStore.

=head1 SYNOPSIS

    my $cloudfront-keyvaluestore = Paws->service('CloudFrontKeyValueStore');
    my $DescribeKeyValueStoreResponse =
      $cloudfront -keyvaluestore->DescribeKeyValueStore(
      KvsARN => 'MyKvsARN',

      );

    # Results:
    my $Created          = $DescribeKeyValueStoreResponse->Created;
    my $ETag             = $DescribeKeyValueStoreResponse->ETag;
    my $FailureReason    = $DescribeKeyValueStoreResponse->FailureReason;
    my $ItemCount        = $DescribeKeyValueStoreResponse->ItemCount;
    my $KvsARN           = $DescribeKeyValueStoreResponse->KvsARN;
    my $LastModified     = $DescribeKeyValueStoreResponse->LastModified;
    my $Status           = $DescribeKeyValueStoreResponse->Status;
    my $TotalSizeInBytes = $DescribeKeyValueStoreResponse->TotalSizeInBytes;

# Returns a L<Paws::CloudFrontKeyValueStore::DescribeKeyValueStoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore/DescribeKeyValueStore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KvsARN => Str

The Amazon Resource Name (ARN) of the Key Value Store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeKeyValueStore in L<Paws::CloudFrontKeyValueStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

