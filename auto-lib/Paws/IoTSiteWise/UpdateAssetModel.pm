
package Paws::IoTSiteWise::UpdateAssetModel;
  use Moose;
  has AssetModelCompositeModels => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelCompositeModel]', traits => ['NameInRequest'], request_name => 'assetModelCompositeModels');
  has AssetModelDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelDescription');
  has AssetModelExternalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelExternalId');
  has AssetModelHierarchies => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelHierarchy]', traits => ['NameInRequest'], request_name => 'assetModelHierarchies');
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetModelId', required => 1);
  has AssetModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelName', required => 1);
  has AssetModelProperties => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelProperty]', traits => ['NameInRequest'], request_name => 'assetModelProperties');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has IfMatch => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'If-Match');
  has IfNoneMatch => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'If-None-Match');
  has MatchForVersionType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Match-For-Version-Type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssetModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/asset-models/{assetModelId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::UpdateAssetModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::UpdateAssetModel - Arguments for method UpdateAssetModel on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAssetModel on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method UpdateAssetModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAssetModel.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $UpdateAssetModelResponse = $iotsitewise->UpdateAssetModel(
      AssetModelId              => 'MyCustomID',
      AssetModelName            => 'MyName',
      AssetModelCompositeModels => [
        {
          Name        => 'MyName',           # min: 1, max: 256
          Type        => 'MyName',           # min: 1, max: 256
          Description => 'MyDescription',    # min: 1, max: 2048; OPTIONAL
          ExternalId  => 'MyExternalId',     # min: 2, max: 128; OPTIONAL
          Id          => 'MyCustomID',       # min: 13, max: 139
          Properties  => [
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
                        HierarchyId  => 'MyMacro',  # min: 1, max: 256; OPTIONAL
                        PropertyId   => 'MyMacro',  # min: 1, max: 256; OPTIONAL
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
                        HierarchyId  => 'MyMacro',  # min: 1, max: 256; OPTIONAL
                        PropertyId   => 'MyMacro',  # min: 1, max: 256; OPTIONAL
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
              ExternalId   => 'MyExternalId',    # min: 2, max: 128; OPTIONAL
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
        },
        ...
      ],    # OPTIONAL
      AssetModelDescription => 'MyDescription',    # OPTIONAL
      AssetModelExternalId  => 'MyExternalId',     # OPTIONAL
      AssetModelHierarchies => [
        {
          ChildAssetModelId => 'MyCustomID',      # min: 13, max: 139
          Name              => 'MyName',          # min: 1, max: 256
          ExternalId        => 'MyExternalId',    # min: 2, max: 128; OPTIONAL
          Id                => 'MyCustomID',      # min: 13, max: 139
        },
        ...
      ],    # OPTIONAL
      AssetModelProperties => [
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
          ExternalId   => 'MyExternalId',    # min: 2, max: 128; OPTIONAL
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
    my $AssetModelStatus = $UpdateAssetModelResponse->AssetModelStatus;

    # Returns a L<Paws::IoTSiteWise::UpdateAssetModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/UpdateAssetModel>

=head1 ATTRIBUTES


=head2 AssetModelCompositeModels => ArrayRef[L<Paws::IoTSiteWise::AssetModelCompositeModel>]

The composite models that are part of this asset model. It groups
properties (such as attributes, measurements, transforms, and metrics)
and child composite models that model parts of your industrial
equipment. Each composite model has a type that defines the properties
that the composite model supports. Use composite models to define
alarms on this asset model.

When creating custom composite models, you need to use
CreateAssetModelCompositeModel
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html).
For more information, see Creating custom composite models (Components)
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-custom-composite-models.html)
in the I<IoT SiteWise User Guide>.



=head2 AssetModelDescription => Str

A description for the asset model.



=head2 AssetModelExternalId => Str

An external ID to assign to the asset model. The asset model must not
already have an external ID. The external ID must be unique within your
Amazon Web Services account. For more information, see Using external
IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids)
in the I<IoT SiteWise User Guide>.



=head2 AssetModelHierarchies => ArrayRef[L<Paws::IoTSiteWise::AssetModelHierarchy>]

The updated hierarchy definitions of the asset model. Each hierarchy
specifies an asset model whose assets can be children of any other
assets created from this asset model. For more information, see Asset
hierarchies
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html)
in the I<IoT SiteWise User Guide>.

You can specify up to 10 hierarchies per asset model. For more
information, see Quotas
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html)
in the I<IoT SiteWise User Guide>.



=head2 B<REQUIRED> AssetModelId => Str

The ID of the asset model to update. This can be either the actual ID
in UUID format, or else C<externalId:> followed by the external ID, if
it has one. For more information, see Referencing objects with external
IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references)
in the I<IoT SiteWise User Guide>.



=head2 B<REQUIRED> AssetModelName => Str

A unique name for the asset model.



=head2 AssetModelProperties => ArrayRef[L<Paws::IoTSiteWise::AssetModelProperty>]

The updated property definitions of the asset model. For more
information, see Asset properties
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html)
in the I<IoT SiteWise User Guide>.

You can specify up to 200 properties per asset model. For more
information, see Quotas
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html)
in the I<IoT SiteWise User Guide>.



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

This class forms part of L<Paws>, documenting arguments for method UpdateAssetModel in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

