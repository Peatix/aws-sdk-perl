
package Paws::IoTSiteWise::CreateAssetModelCompositeModel;
  use Moose;
  has AssetModelCompositeModelDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelDescription');
  has AssetModelCompositeModelExternalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelExternalId');
  has AssetModelCompositeModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelId');
  has AssetModelCompositeModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelName', required => 1);
  has AssetModelCompositeModelProperties => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelPropertyDefinition]', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelProperties');
  has AssetModelCompositeModelType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelType', required => 1);
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetModelId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ComposedAssetModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'composedAssetModelId');
  has IfMatch => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'If-Match');
  has IfNoneMatch => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'If-None-Match');
  has MatchForVersionType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Match-For-Version-Type');
  has ParentAssetModelCompositeModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentAssetModelCompositeModelId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssetModelCompositeModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/asset-models/{assetModelId}/composite-models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::CreateAssetModelCompositeModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateAssetModelCompositeModel - Arguments for method CreateAssetModelCompositeModel on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssetModelCompositeModel on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method CreateAssetModelCompositeModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssetModelCompositeModel.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $CreateAssetModelCompositeModelResponse =
      $iotsitewise->CreateAssetModelCompositeModel(
      AssetModelCompositeModelName        => 'MyName',
      AssetModelCompositeModelType        => 'MyName',
      AssetModelId                        => 'MyCustomID',
      AssetModelCompositeModelDescription => 'MyDescription',    # OPTIONAL
      AssetModelCompositeModelExternalId  => 'MyExternalId',     # OPTIONAL
      AssetModelCompositeModelId          => 'MyID',             # OPTIONAL
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
                        Id   => 'MyID',      # min: 36, max: 36
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
                        Id   => 'MyID',      # min: 36, max: 36
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
          DataTypeSpec => 'MyName',            # min: 1, max: 256
          ExternalId   => 'MyExternalId',      # min: 2, max: 128
          Id           => 'MyID',              # min: 36, max: 36
          Unit         => 'MyPropertyUnit',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ClientToken                      => 'MyClientToken',    # OPTIONAL
      ComposedAssetModelId             => 'MyCustomID',       # OPTIONAL
      IfMatch                          => 'MyETag',           # OPTIONAL
      IfNoneMatch                      => 'MySelectAll',      # OPTIONAL
      MatchForVersionType              => 'LATEST',           # OPTIONAL
      ParentAssetModelCompositeModelId => 'MyCustomID',       # OPTIONAL
      );

    # Results:
    my $AssetModelCompositeModelId =
      $CreateAssetModelCompositeModelResponse->AssetModelCompositeModelId;
    my $AssetModelCompositeModelPath =
      $CreateAssetModelCompositeModelResponse->AssetModelCompositeModelPath;
    my $AssetModelStatus =
      $CreateAssetModelCompositeModelResponse->AssetModelStatus;

# Returns a L<Paws::IoTSiteWise::CreateAssetModelCompositeModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/CreateAssetModelCompositeModel>

=head1 ATTRIBUTES


=head2 AssetModelCompositeModelDescription => Str

A description for the composite model.



=head2 AssetModelCompositeModelExternalId => Str

An external ID to assign to the composite model.

If the composite model is a derived composite model, or one nested
inside a component model, you can only set the external ID using
C<UpdateAssetModelCompositeModel> and specifying the derived ID of the
model or property from the created model it's a part of.



=head2 AssetModelCompositeModelId => Str

The ID of the composite model. IoT SiteWise automatically generates a
unique ID for you, so this parameter is never required. However, if you
prefer to supply your own ID instead, you can specify it here in UUID
format. If you specify your own ID, it must be globally unique.



=head2 B<REQUIRED> AssetModelCompositeModelName => Str

A unique name for the composite model.



=head2 AssetModelCompositeModelProperties => ArrayRef[L<Paws::IoTSiteWise::AssetModelPropertyDefinition>]

The property definitions of the composite model. For more information,
see Inline custom composite models
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html#inline-composite-models)
in the I<IoT SiteWise User Guide>.

You can specify up to 200 properties per composite model. For more
information, see Quotas
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html)
in the I<IoT SiteWise User Guide>.



=head2 B<REQUIRED> AssetModelCompositeModelType => Str

The composite model type. Valid values are C<AWS/ALARM>, C<CUSTOM>, or
C< AWS/L4E_ANOMALY>.



=head2 B<REQUIRED> AssetModelId => Str

The ID of the asset model this composite model is a part of.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 ComposedAssetModelId => Str

The ID of a component model which is reused to create this composite
model.



=head2 IfMatch => Str

The expected current entity tag (ETag) for the asset modelE<rsquo>s
latest or active version (specified using C<matchForVersionType>). The
create request is rejected if the tag does not match the latest or
active version's current entity tag. See Optimistic locking for asset
model writes
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html)
in the I<IoT SiteWise User Guide>.



=head2 IfNoneMatch => Str

Accepts B<*> to reject the create request if an active version
(specified using C<matchForVersionType> as C<ACTIVE>) already exists
for the asset model.



=head2 MatchForVersionType => Str

Specifies the asset model version type (C<LATEST> or C<ACTIVE>) used in
conjunction with C<If-Match> or C<If-None-Match> headers to determine
the target ETag for the create operation.

Valid values are: C<"LATEST">, C<"ACTIVE">

=head2 ParentAssetModelCompositeModelId => Str

The ID of the parent composite model in this asset model relationship.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssetModelCompositeModel in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

