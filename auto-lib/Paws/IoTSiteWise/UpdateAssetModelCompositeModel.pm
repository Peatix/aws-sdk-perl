
package Paws::IoTSiteWise::UpdateAssetModelCompositeModel;
  use Moose;
  has AssetModelCompositeModelDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelDescription');
  has AssetModelCompositeModelExternalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelExternalId');
  has AssetModelCompositeModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetModelCompositeModelId', required => 1);
  has AssetModelCompositeModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelName', required => 1);
  has AssetModelCompositeModelProperties => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelProperty]', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelProperties');
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetModelId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has IfMatch => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'If-Match');
  has IfNoneMatch => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'If-None-Match');
  has MatchForVersionType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Match-For-Version-Type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssetModelCompositeModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::UpdateAssetModelCompositeModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::UpdateAssetModelCompositeModel - Arguments for method UpdateAssetModelCompositeModel on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAssetModelCompositeModel on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method UpdateAssetModelCompositeModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAssetModelCompositeModel.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $UpdateAssetModelCompositeModelResponse =
      $iotsitewise->UpdateAssetModelCompositeModel(
      AssetModelCompositeModelId          => 'MyCustomID',
      AssetModelCompositeModelName        => 'MyName',
      AssetModelId                        => 'MyCustomID',
      AssetModelCompositeModelDescription => 'MyDescription',    # OPTIONAL
      AssetModelCompositeModelExternalId  => 'MyExternalId',     # OPTIONAL
      AssetModelCompositeModelProperties  => [
        {
          DataType =>
            'STRING',    # values: STRING, INTEGER, DOUBLE, BOOLEAN, STRUCT
          Name => 'MyName',    # min: 1, max: 256
          Type => {
            Attribute => {
              DefaultValue => 'MyDefaultValue',    # OPTIONAL
            },    # OPTIONAL
            Measurement => {
              ProcessingConfig => {
                ForwardingConfig => {
                  State => 'DISABLED',    # values: DISABLED, ENABLED

                },

              },    # OPTIONAL
            },    # OPTIONAL
            Metric => {
              Expression => 'MyExpression',    # min: 1, max: 1024
              Variables  => [
                {
                  Name  => 'MyVariableName',    # min: 1, max: 64
                  Value => {
                    HierarchyId  => 'MyMacro',    # min: 1, max: 256; OPTIONAL
                    PropertyId   => 'MyMacro',    # min: 1, max: 256; OPTIONAL
                    PropertyPath => [
                      {
                        Id   => 'MyID',      # min: 36, max: 36; OPTIONAL
                        Name => 'MyName',    # min: 1, max: 256
                      },
                      ...
                    ],    # OPTIONAL
                  },

                },
                ...
              ],
              Window => {
                Tumbling => {
                  Interval => 'MyInterval',    # min: 2, max: 23
                  Offset   => 'MyOffset',      # min: 2, max: 25; OPTIONAL
                },    # OPTIONAL
              },
              ProcessingConfig => {
                ComputeLocation => 'EDGE',    # values: EDGE, CLOUD

              },    # OPTIONAL
            },    # OPTIONAL
            Transform => {
              Expression => 'MyExpression',    # min: 1, max: 1024
              Variables  => [
                {
                  Name  => 'MyVariableName',    # min: 1, max: 64
                  Value => {
                    HierarchyId  => 'MyMacro',    # min: 1, max: 256; OPTIONAL
                    PropertyId   => 'MyMacro',    # min: 1, max: 256; OPTIONAL
                    PropertyPath => [
                      {
                        Id   => 'MyID',      # min: 36, max: 36; OPTIONAL
                        Name => 'MyName',    # min: 1, max: 256
                      },
                      ...
                    ],    # OPTIONAL
                  },

                },
                ...
              ],
              ProcessingConfig => {
                ComputeLocation  => 'EDGE',    # values: EDGE, CLOUD
                ForwardingConfig => {
                  State => 'DISABLED',         # values: DISABLED, ENABLED

                },
              },    # OPTIONAL
            },    # OPTIONAL
          },
          DataTypeSpec => 'MyName',          # min: 1, max: 256
          ExternalId   => 'MyExternalId',    # min: 2, max: 128
          Id           => 'MyCustomID',      # min: 13, max: 139
          Path         => [
            {
              Id   => 'MyID',      # min: 36, max: 36; OPTIONAL
              Name => 'MyName',    # min: 1, max: 256
            },
            ...
          ],    # OPTIONAL
          Unit => 'MyPropertyUnit',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ClientToken         => 'MyClientToken',    # OPTIONAL
      IfMatch             => 'MyETag',           # OPTIONAL
      IfNoneMatch         => 'MySelectAll',      # OPTIONAL
      MatchForVersionType => 'LATEST',           # OPTIONAL
      );

    # Results:
    my $AssetModelCompositeModelPath =
      $UpdateAssetModelCompositeModelResponse->AssetModelCompositeModelPath;
    my $AssetModelStatus =
      $UpdateAssetModelCompositeModelResponse->AssetModelStatus;

# Returns a L<Paws::IoTSiteWise::UpdateAssetModelCompositeModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/UpdateAssetModelCompositeModel>

=head1 ATTRIBUTES


=head2 AssetModelCompositeModelDescription => Str

A description for the composite model.



=head2 AssetModelCompositeModelExternalId => Str

An external ID to assign to the asset model. You can only set the
external ID of the asset model if it wasn't set when it was created, or
you're setting it to the exact same thing as when it was created.



=head2 B<REQUIRED> AssetModelCompositeModelId => Str

The ID of a composite model on this asset model.



=head2 B<REQUIRED> AssetModelCompositeModelName => Str

A unique name for the composite model.



=head2 AssetModelCompositeModelProperties => ArrayRef[L<Paws::IoTSiteWise::AssetModelProperty>]

The property definitions of the composite model. For more information,
see Inline custom composite models
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html#inline-composite-models)
in the I<IoT SiteWise User Guide>.

You can specify up to 200 properties per composite model. For more
information, see Quotas
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html)
in the I<IoT SiteWise User Guide>.



=head2 B<REQUIRED> AssetModelId => Str

The ID of the asset model, in UUID format.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 IfMatch => Str

The expected current entity tag (ETag) for the asset modelE<rsquo>s
latest or active version (specified using C<matchForVersionType>). The
update request is rejected if the tag does not match the latest or
active version's current entity tag. See Optimistic locking for asset
model writes
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html)
in the I<IoT SiteWise User Guide>.



=head2 IfNoneMatch => Str

Accepts B<*> to reject the update request if an active version
(specified using C<matchForVersionType> as C<ACTIVE>) already exists
for the asset model.



=head2 MatchForVersionType => Str

Specifies the asset model version type (C<LATEST> or C<ACTIVE>) used in
conjunction with C<If-Match> or C<If-None-Match> headers to determine
the target ETag for the update operation.

Valid values are: C<"LATEST">, C<"ACTIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAssetModelCompositeModel in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

