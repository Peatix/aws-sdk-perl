
package Paws::DataZone::GetAssetOutput;
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
  has ReadOnlyFormsOutput => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::FormOutput]', traits => ['NameInRequest'], request_name => 'readOnlyFormsOutput');
  has Revision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revision', required => 1);
  has TypeIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'typeIdentifier', required => 1);
  has TypeRevision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'typeRevision', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetAssetOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the asset was created.


=head2 CreatedBy => Str

The Amazon DataZone user who created the asset.


=head2 Description => Str

The description of the Amazon DataZone asset.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain to which the asset belongs.


=head2 ExternalIdentifier => Str

The external ID of the asset.


=head2 FirstRevisionCreatedAt => Str

The timestamp of when the first revision of the asset was created.


=head2 FirstRevisionCreatedBy => Str

The Amazon DataZone user who created the first revision of the asset.


=head2 B<REQUIRED> FormsOutput => ArrayRef[L<Paws::DataZone::FormOutput>]

The metadata forms attached to the asset.


=head2 GlossaryTerms => ArrayRef[Str|Undef]

The business glossary terms attached to the asset.


=head2 B<REQUIRED> Id => Str

The ID of the asset.


=head2 LatestTimeSeriesDataPointFormsOutput => ArrayRef[L<Paws::DataZone::TimeSeriesDataPointSummaryFormOutput>]

The latest data point that was imported into the time series form for
the asset.


=head2 Listing => L<Paws::DataZone::AssetListingDetails>

The listing of the asset.


=head2 B<REQUIRED> Name => Str

The name of the asset.


=head2 B<REQUIRED> OwningProjectId => Str

The ID of the project that owns the asset.


=head2 ReadOnlyFormsOutput => ArrayRef[L<Paws::DataZone::FormOutput>]

The read-only metadata forms attached to the asset.


=head2 B<REQUIRED> Revision => Str

The revision of the asset.


=head2 B<REQUIRED> TypeIdentifier => Str

The ID of the asset type.


=head2 B<REQUIRED> TypeRevision => Str

The revision of the asset type.


=head2 _request_id => Str


=cut

