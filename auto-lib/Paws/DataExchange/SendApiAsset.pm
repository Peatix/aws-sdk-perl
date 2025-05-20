
package Paws::DataExchange::SendApiAsset;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-dataexchange-asset-id', required => 1);
  has Body => (is => 'ro', isa => 'Str');
  has DataSetId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-dataexchange-data-set-id', required => 1);
  has Method => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-dataexchange-http-method');
  has Path => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-dataexchange-path');
  has QueryStringParameters => (is => 'ro', isa => 'Paws::DataExchange::MapOf__string', traits => ['ParamInQuery'], query_name => '');
  has RequestHeaders => (is => 'ro', isa => 'Paws::DataExchange::MapOf__string', traits => ['NameInRequest'], request_name => 'x-amzn-dataexchange-header-');
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-dataexchange-revision-id', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendApiAsset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::SendApiAssetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::SendApiAsset - Arguments for method SendApiAsset on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendApiAsset on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method SendApiAsset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendApiAsset.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $SendApiAssetResponse = $dataexchange->SendApiAsset(
      AssetId               => 'My__string',
      DataSetId             => 'My__string',
      RevisionId            => 'My__string',
      Body                  => 'My__string',                         # OPTIONAL
      Method                => 'My__string',                         # OPTIONAL
      Path                  => 'My__string',                         # OPTIONAL
      QueryStringParameters => { 'My__string' => 'My__string', },    # OPTIONAL
      RequestHeaders        => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Body            = $SendApiAssetResponse->Body;
    my $ResponseHeaders = $SendApiAssetResponse->ResponseHeaders;

    # Returns a L<Paws::DataExchange::SendApiAssetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/SendApiAsset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

Asset ID value for the API request.



=head2 Body => Str

The request body.



=head2 B<REQUIRED> DataSetId => Str

Data set ID value for the API request.



=head2 Method => Str

HTTP method value for the API request. Alternatively, you can use the
appropriate verb in your request.



=head2 Path => Str

URI path value for the API request. Alternatively, you can set the URI
path directly by invoking /v1/{pathValue}.



=head2 QueryStringParameters => L<Paws::DataExchange::MapOf__string>

Attach query string parameters to the end of the URI (for example,
/v1/examplePath?exampleParam=exampleValue).



=head2 RequestHeaders => L<Paws::DataExchange::MapOf__string>

Any header value prefixed with x-amzn-dataexchange-header- will have
that stripped before sending the Asset API request. Use this when you
want to override a header that AWS Data Exchange uses. Alternatively,
you can use the header without a prefix to the HTTP request.



=head2 B<REQUIRED> RevisionId => Str

Revision ID value for the API request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendApiAsset in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

