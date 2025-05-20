
package Paws::DataExchange::UpdateAssetResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AssetDetails => (is => 'ro', isa => 'Paws::DataExchange::AssetDetails');
  has AssetType => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DataSetId => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RevisionId => (is => 'ro', isa => 'Str');
  has SourceId => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::UpdateAssetResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN for the asset.


=head2 AssetDetails => L<Paws::DataExchange::AssetDetails>

Details about the asset.


=head2 AssetType => Str

The type of asset that is added to a data set.

Valid values are: C<"S3_SNAPSHOT">, C<"REDSHIFT_DATA_SHARE">, C<"API_GATEWAY_API">, C<"S3_DATA_ACCESS">, C<"LAKE_FORMATION_DATA_PERMISSION">
=head2 CreatedAt => Str

The date and time that the asset was created, in ISO 8601 format.


=head2 DataSetId => Str

The unique identifier for the data set associated with this asset.


=head2 Id => Str

The unique identifier for the asset.


=head2 Name => Str

The name of the asset. When importing from Amazon S3, the Amazon S3
object key is used as the asset name. When exporting to Amazon S3, the
asset name is used as default target Amazon S3 object key. When
importing from Amazon API Gateway API, the API name is used as the
asset name. When importing from Amazon Redshift, the datashare name is
used as the asset name. When importing from AWS Lake Formation, the
static values of "Database(s) included in the LF-tag policy"- or
"Table(s) included in LF-tag policy" are used as the asset name.


=head2 RevisionId => Str

The unique identifier for the revision associated with this asset.


=head2 SourceId => Str

The asset ID of the owned asset corresponding to the entitled asset
being viewed. This parameter is returned when an asset owner is viewing
the entitled copy of its owned asset.


=head2 UpdatedAt => Str

The date and time that the asset was last updated, in ISO 8601 format.


=head2 _request_id => Str


=cut

