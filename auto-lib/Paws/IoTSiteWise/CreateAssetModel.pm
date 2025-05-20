
package Paws::IoTSiteWise::CreateAssetModel;
  use Moose;
  has AssetModelCompositeModels => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelCompositeModelDefinition]', traits => ['NameInRequest'], request_name => 'assetModelCompositeModels');
  has AssetModelDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelDescription');
  has AssetModelExternalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelExternalId');
  has AssetModelHierarchies => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelHierarchyDefinition]', traits => ['NameInRequest'], request_name => 'assetModelHierarchies');
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelId');
  has AssetModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelName', required => 1);
  has AssetModelProperties => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelPropertyDefinition]', traits => ['NameInRequest'], request_name => 'assetModelProperties');
  has AssetModelType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelType');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Tags => (is => 'ro', isa => 'Paws::IoTSiteWise::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssetModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/asset-models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::CreateAssetModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateAssetModel - Arguments for method CreateAssetModel on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssetModel on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method CreateAssetModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssetModel.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $CreateAssetModelResponse = $iotsitewise->CreateAssetModel(
      AssetModelName            => 'MyName',
      AssetModelCompositeModels => [
        {
          Name        => 'MyName',           # min: 1, max: 256
          Type        => 'MyName',           # min: 1, max: 256
          Description => 'MyDescription',    # min: 1, max: 2048; OPTIONAL
          ExternalId  => 'MyExternalId',     # min: 2, max: 128; OPTIONAL
          Id          => 'MyID',             # min: 36, max: 36; OPTIONAL
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
              DataTypeSpec => 'MyName',            # min: 1, max: 256
              ExternalId   => 'MyExternalId',      # min: 2, max: 128; OPTIONAL
              Id           => 'MyID',              # min: 36, max: 36; OPTIONAL
              Unit         => 'MyPropertyUnit',    # min: 1, max: 256; OPTIONAL
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
          Id                => 'MyID',            # min: 36, max: 36; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      AssetModelId         => 'MyID',    # OPTIONAL
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
          DataTypeSpec => 'MyName',            # min: 1, max: 256
          ExternalId   => 'MyExternalId',      # min: 2, max: 128; OPTIONAL
          Id           => 'MyID',              # min: 36, max: 36; OPTIONAL
          Unit         => 'MyPropertyUnit',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      AssetModelType => 'ASSET_MODEL',      # OPTIONAL
      ClientToken    => 'MyClientToken',    # OPTIONAL
      Tags           => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AssetModelArn    = $CreateAssetModelResponse->AssetModelArn;
    my $AssetModelId     = $CreateAssetModelResponse->AssetModelId;
    my $AssetModelStatus = $CreateAssetModelResponse->AssetModelStatus;

    # Returns a L<Paws::IoTSiteWise::CreateAssetModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/CreateAssetModel>

=head1 ATTRIBUTES


=head2 AssetModelCompositeModels => ArrayRef[L<Paws::IoTSiteWise::AssetModelCompositeModelDefinition>]

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

An external ID to assign to the asset model. The external ID must be
unique within your Amazon Web Services account. For more information,
see Using external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids)
in the I<IoT SiteWise User Guide>.



=head2 AssetModelHierarchies => ArrayRef[L<Paws::IoTSiteWise::AssetModelHierarchyDefinition>]

The hierarchy definitions of the asset model. Each hierarchy specifies
an asset model whose assets can be children of any other assets created
from this asset model. For more information, see Asset hierarchies
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html)
in the I<IoT SiteWise User Guide>.

You can specify up to 10 hierarchies per asset model. For more
information, see Quotas
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html)
in the I<IoT SiteWise User Guide>.



=head2 AssetModelId => Str

The ID to assign to the asset model, if desired. IoT SiteWise
automatically generates a unique ID for you, so this parameter is never
required. However, if you prefer to supply your own ID instead, you can
specify it here in UUID format. If you specify your own ID, it must be
globally unique.



=head2 B<REQUIRED> AssetModelName => Str

A unique name for the asset model.



=head2 AssetModelProperties => ArrayRef[L<Paws::IoTSiteWise::AssetModelPropertyDefinition>]

The property definitions of the asset model. For more information, see
Asset properties
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html)
in the I<IoT SiteWise User Guide>.

You can specify up to 200 properties per asset model. For more
information, see Quotas
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html)
in the I<IoT SiteWise User Guide>.



=head2 AssetModelType => Str

The type of asset model.

=over

=item *

B<ASSET_MODEL> E<ndash> (default) An asset model that you can use to
create assets. Can't be included as a component in another asset model.

=item *

B<COMPONENT_MODEL> E<ndash> A reusable component that you can include
in the composite models of other asset models. You can't create assets
directly from this type of asset model.

=back


Valid values are: C<"ASSET_MODEL">, C<"COMPONENT_MODEL">

=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 Tags => L<Paws::IoTSiteWise::TagMap>

A list of key-value pairs that contain metadata for the asset model.
For more information, see Tagging your IoT SiteWise resources
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html)
in the I<IoT SiteWise User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssetModel in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

