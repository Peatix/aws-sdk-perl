
package Paws::CloudFrontKeyValueStore::ListKeys;
  use Moose;
  has KvsARN => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'KvsARN', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListKeys');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/key-value-stores/{KvsARN}/keys');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFrontKeyValueStore::ListKeysResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFrontKeyValueStore::ListKeys - Arguments for method ListKeys on L<Paws::CloudFrontKeyValueStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListKeys on the
L<Amazon CloudFront KeyValueStore|Paws::CloudFrontKeyValueStore> service. Use the attributes of this class
as arguments to method ListKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListKeys.

=head1 SYNOPSIS

    my $cloudfront-keyvaluestore = Paws->service('CloudFrontKeyValueStore');
    my $ListKeysResponse = $cloudfront -keyvaluestore->ListKeys(
      KvsARN     => 'MyKvsARN',
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListKeysResponse->Items;
    my $NextToken = $ListKeysResponse->NextToken;

    # Returns a L<Paws::CloudFrontKeyValueStore::ListKeysResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore/ListKeys>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KvsARN => Str

The Amazon Resource Name (ARN) of the Key Value Store.



=head2 MaxResults => Int

Maximum number of results that are returned per call. The default is 10
and maximum allowed page is 50.



=head2 NextToken => Str

If nextToken is returned in the response, there are more results
available. Make the next call using the returned token to retrieve the
next page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListKeys in L<Paws::CloudFrontKeyValueStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

