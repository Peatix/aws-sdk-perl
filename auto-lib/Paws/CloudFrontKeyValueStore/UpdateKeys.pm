
package Paws::CloudFrontKeyValueStore::UpdateKeys;
  use Moose;
  has Deletes => (is => 'ro', isa => 'ArrayRef[Paws::CloudFrontKeyValueStore::DeleteKeyRequestListItem]');
  has IfMatch => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'If-Match', required => 1);
  has KvsARN => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'KvsARN', required => 1);
  has Puts => (is => 'ro', isa => 'ArrayRef[Paws::CloudFrontKeyValueStore::PutKeyRequestListItem]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateKeys');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/key-value-stores/{KvsARN}/keys');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFrontKeyValueStore::UpdateKeysResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFrontKeyValueStore::UpdateKeys - Arguments for method UpdateKeys on L<Paws::CloudFrontKeyValueStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateKeys on the
L<Amazon CloudFront KeyValueStore|Paws::CloudFrontKeyValueStore> service. Use the attributes of this class
as arguments to method UpdateKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateKeys.

=head1 SYNOPSIS

    my $cloudfront-keyvaluestore = Paws->service('CloudFrontKeyValueStore');
    my $UpdateKeysResponse = $cloudfront -keyvaluestore->UpdateKeys(
      IfMatch => 'MyEtag',
      KvsARN  => 'MyKvsARN',
      Deletes => [
        {
          Key => 'MyKey',    # min: 1, max: 1024

        },
        ...
      ],    # OPTIONAL
      Puts => [
        {
          Key   => 'MyKey',     # min: 1, max: 1024
          Value => 'MyValue',

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ETag             = $UpdateKeysResponse->ETag;
    my $ItemCount        = $UpdateKeysResponse->ItemCount;
    my $TotalSizeInBytes = $UpdateKeysResponse->TotalSizeInBytes;

    # Returns a L<Paws::CloudFrontKeyValueStore::UpdateKeysResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore/UpdateKeys>

=head1 ATTRIBUTES


=head2 Deletes => ArrayRef[L<Paws::CloudFrontKeyValueStore::DeleteKeyRequestListItem>]

List of keys to delete.



=head2 B<REQUIRED> IfMatch => Str

The current version (ETag) of the Key Value Store that you are updating
keys of, which you can get using DescribeKeyValueStore.



=head2 B<REQUIRED> KvsARN => Str

The Amazon Resource Name (ARN) of the Key Value Store.



=head2 Puts => ArrayRef[L<Paws::CloudFrontKeyValueStore::PutKeyRequestListItem>]

List of key value pairs to put.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateKeys in L<Paws::CloudFrontKeyValueStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

