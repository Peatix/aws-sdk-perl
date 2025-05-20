
package Paws::CloudFrontKeyValueStore::DeleteKey;
  use Moose;
  has IfMatch => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'If-Match', required => 1);
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Key', required => 1);
  has KvsARN => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'KvsARN', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/key-value-stores/{KvsARN}/keys/{Key}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFrontKeyValueStore::DeleteKeyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFrontKeyValueStore::DeleteKey - Arguments for method DeleteKey on L<Paws::CloudFrontKeyValueStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteKey on the
L<Amazon CloudFront KeyValueStore|Paws::CloudFrontKeyValueStore> service. Use the attributes of this class
as arguments to method DeleteKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteKey.

=head1 SYNOPSIS

    my $cloudfront-keyvaluestore = Paws->service('CloudFrontKeyValueStore');
    my $DeleteKeyResponse = $cloudfront -keyvaluestore->DeleteKey(
      IfMatch => 'MyEtag',
      Key     => 'MyKey',
      KvsARN  => 'MyKvsARN',

    );

    # Results:
    my $ETag             = $DeleteKeyResponse->ETag;
    my $ItemCount        = $DeleteKeyResponse->ItemCount;
    my $TotalSizeInBytes = $DeleteKeyResponse->TotalSizeInBytes;

    # Returns a L<Paws::CloudFrontKeyValueStore::DeleteKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore/DeleteKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IfMatch => Str

The current version (ETag) of the Key Value Store that you are deleting
keys from, which you can get using DescribeKeyValueStore.



=head2 B<REQUIRED> Key => Str

The key to delete.



=head2 B<REQUIRED> KvsARN => Str

The Amazon Resource Name (ARN) of the Key Value Store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteKey in L<Paws::CloudFrontKeyValueStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

