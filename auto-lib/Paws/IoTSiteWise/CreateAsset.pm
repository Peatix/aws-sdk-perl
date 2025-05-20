
package Paws::IoTSiteWise::CreateAsset;
  use Moose;
  has AssetDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetDescription');
  has AssetExternalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetExternalId');
  has AssetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetId');
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelId', required => 1);
  has AssetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetName', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Tags => (is => 'ro', isa => 'Paws::IoTSiteWise::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAsset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::CreateAssetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateAsset - Arguments for method CreateAsset on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAsset on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method CreateAsset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAsset.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $CreateAssetResponse = $iotsitewise->CreateAsset(
      AssetModelId     => 'MyCustomID',
      AssetName        => 'MyName',
      AssetDescription => 'MyDescription',    # OPTIONAL
      AssetExternalId  => 'MyExternalId',     # OPTIONAL
      AssetId          => 'MyID',             # OPTIONAL
      ClientToken      => 'MyClientToken',    # OPTIONAL
      Tags             => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AssetArn    = $CreateAssetResponse->AssetArn;
    my $AssetId     = $CreateAssetResponse->AssetId;
    my $AssetStatus = $CreateAssetResponse->AssetStatus;

    # Returns a L<Paws::IoTSiteWise::CreateAssetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/CreateAsset>

=head1 ATTRIBUTES


=head2 AssetDescription => Str

A description for the asset.



=head2 AssetExternalId => Str

An external ID to assign to the asset. The external ID must be unique
within your Amazon Web Services account. For more information, see
Using external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids)
in the I<IoT SiteWise User Guide>.



=head2 AssetId => Str

The ID to assign to the asset, if desired. IoT SiteWise automatically
generates a unique ID for you, so this parameter is never required.
However, if you prefer to supply your own ID instead, you can specify
it here in UUID format. If you specify your own ID, it must be globally
unique.



=head2 B<REQUIRED> AssetModelId => Str

The ID of the asset model from which to create the asset. This can be
either the actual ID in UUID format, or else C<externalId:> followed by
the external ID, if it has one. For more information, see Referencing
objects with external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references)
in the I<IoT SiteWise User Guide>.



=head2 B<REQUIRED> AssetName => Str

A friendly name for the asset.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 Tags => L<Paws::IoTSiteWise::TagMap>

A list of key-value pairs that contain metadata for the asset. For more
information, see Tagging your IoT SiteWise resources
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html)
in the I<IoT SiteWise User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAsset in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

