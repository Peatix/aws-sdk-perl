
package Paws::DataZone::CreateAssetRevisionOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has ExternalIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'externalIdentifier');
  has FirstRevisionCreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'firstRevisionCreatedAt');
  has FirstRevisionCreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'firstRevisionCreatedBy');
  has FormsOutput => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::FormOutput]', traits => ['NameInRequest'], request_name => 'formsOutput', required => 1);
  has GlossaryTerms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'glossaryTerms');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has LatestTimeSeriesDataPointFormsOutput => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::TimeSeriesDataPointSummaryFormOutput]', traits => ['NameInRequest'], request_name => 'latestTimeSeriesDataPointFormsOutput');
  has Listing => (is => 'ro', isa => 'Paws::DataZone::AssetListingDetails', traits => ['NameInRequest'], request_name => 'listing');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OwningProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectId', required => 1);
  has PredictionConfiguration => (is => 'ro', isa => 'Paws::DataZone::PredictionConfiguration', traits => ['NameInRequest'], request_name => 'predictionConfiguration');
  has ReadOnlyFormsOutput => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::FormOutput]', traits => ['NameInRequest'], request_name => 'readOnlyFormsOutput');
  has Revision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revision', required => 1);
  has TypeIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'typeIdentifier', required => 1);
  has TypeRevision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'typeRevision', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateAssetRevisionOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the asset revision occured.


=head2 CreatedBy => Str

The Amazon DataZone user who performed the asset revision.


=head2 Description => Str

The revised asset description.


=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Amazon DataZone domain where the asset was
revised.


=head2 ExternalIdentifier => Str

The external identifier of the asset.


=head2 FirstRevisionCreatedAt => Str

The timestamp of when the first asset revision occured.


=head2 FirstRevisionCreatedBy => Str

The Amazon DataZone user who performed the first asset revision.


=head2 B<REQUIRED> FormsOutput => ArrayRef[L<Paws::DataZone::FormOutput>]

The metadata forms that were attached to the asset as part of the asset
revision.


=head2 GlossaryTerms => ArrayRef[Str|Undef]

The glossary terms that were attached to the asset as part of asset
revision.


=head2 B<REQUIRED> Id => Str

The unique identifier of the asset revision.


=head2 LatestTimeSeriesDataPointFormsOutput => ArrayRef[L<Paws::DataZone::TimeSeriesDataPointSummaryFormOutput>]

The latest data point that was imported into the time series form for
the asset.


=head2 Listing => L<Paws::DataZone::AssetListingDetails>

The details of an asset published in an Amazon DataZone catalog.


=head2 B<REQUIRED> Name => Str

The revised name of the asset.


=head2 B<REQUIRED> OwningProjectId => Str

The unique identifier of the revised project that owns the asset.


=head2 PredictionConfiguration => L<Paws::DataZone::PredictionConfiguration>

The configuration of the automatically generated business-friendly
metadata for the asset.


=head2 ReadOnlyFormsOutput => ArrayRef[L<Paws::DataZone::FormOutput>]

The read-only metadata forms that were attached to the asset as part of
the asset revision.


=head2 B<REQUIRED> Revision => Str

The revision of the asset.


=head2 B<REQUIRED> TypeIdentifier => Str

The identifier of the revision type.


=head2 B<REQUIRED> TypeRevision => Str

The revision type of the asset.


=head2 _request_id => Str


=cut

