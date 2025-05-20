
package Paws::IoTSiteWise::DeleteAssetModelCompositeModel;
  use Moose;
  has AssetModelCompositeModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetModelCompositeModelId', required => 1);
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetModelId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has IfMatch => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'If-Match');
  has IfNoneMatch => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'If-None-Match');
  has MatchForVersionType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Match-For-Version-Type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAssetModelCompositeModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DeleteAssetModelCompositeModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DeleteAssetModelCompositeModel - Arguments for method DeleteAssetModelCompositeModel on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAssetModelCompositeModel on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DeleteAssetModelCompositeModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAssetModelCompositeModel.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DeleteAssetModelCompositeModelResponse =
      $iotsitewise->DeleteAssetModelCompositeModel(
      AssetModelCompositeModelId => 'MyCustomID',
      AssetModelId               => 'MyCustomID',
      ClientToken                => 'MyClientToken',    # OPTIONAL
      IfMatch                    => 'MyETag',           # OPTIONAL
      IfNoneMatch                => 'MySelectAll',      # OPTIONAL
      MatchForVersionType        => 'LATEST',           # OPTIONAL
      );

    # Results:
    my $AssetModelStatus =
      $DeleteAssetModelCompositeModelResponse->AssetModelStatus;

# Returns a L<Paws::IoTSiteWise::DeleteAssetModelCompositeModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DeleteAssetModelCompositeModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetModelCompositeModelId => Str

The ID of a composite model on this asset model.



=head2 B<REQUIRED> AssetModelId => Str

The ID of the asset model, in UUID format.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 IfMatch => Str

The expected current entity tag (ETag) for the asset modelE<rsquo>s
latest or active version (specified using C<matchForVersionType>). The
delete request is rejected if the tag does not match the latest or
active version's current entity tag. See Optimistic locking for asset
model writes
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html)
in the I<IoT SiteWise User Guide>.



=head2 IfNoneMatch => Str

Accepts B<*> to reject the delete request if an active version
(specified using C<matchForVersionType> as C<ACTIVE>) already exists
for the asset model.



=head2 MatchForVersionType => Str

Specifies the asset model version type (C<LATEST> or C<ACTIVE>) used in
conjunction with C<If-Match> or C<If-None-Match> headers to determine
the target ETag for the delete operation.

Valid values are: C<"LATEST">, C<"ACTIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAssetModelCompositeModel in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

