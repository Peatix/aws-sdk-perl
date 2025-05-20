
package Paws::MarketplaceCatalog::ListEntities;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has EntityType => (is => 'ro', isa => 'Str', required => 1);
  has EntityTypeFilters => (is => 'ro', isa => 'Paws::MarketplaceCatalog::EntityTypeFilters');
  has EntityTypeSort => (is => 'ro', isa => 'Paws::MarketplaceCatalog::EntityTypeSort');
  has FilterList => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceCatalog::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OwnershipType => (is => 'ro', isa => 'Str');
  has Sort => (is => 'ro', isa => 'Paws::MarketplaceCatalog::Sort');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEntities');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListEntities');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceCatalog::ListEntitiesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::ListEntities - Arguments for method ListEntities on L<Paws::MarketplaceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEntities on the
L<AWS Marketplace Catalog Service|Paws::MarketplaceCatalog> service. Use the attributes of this class
as arguments to method ListEntities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEntities.

=head1 SYNOPSIS

    my $catalog.marketplace = Paws->service('MarketplaceCatalog');
    my $ListEntitiesResponse = $catalog . marketplace->ListEntities(
      Catalog           => 'MyCatalog',
      EntityType        => 'MyEntityType',
      EntityTypeFilters => {
        AmiProductFilters => {
          EntityId => {
            ValueList => [
              'MyAmiProductEntityIdString', ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
          LastModifiedDate => {
            DateRange => {
              AfterValue  => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
              BeforeValue => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          ProductTitle => {
            ValueList => [
              'MyAmiProductTitleString', ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
            WildCardValue => 'MyAmiProductTitleString',    # min: 1, max: 255
          },    # OPTIONAL
          Visibility => {
            ValueList => [
              'Limited', ...    # values: Limited, Public, Restricted, Draft
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        ContainerProductFilters => {
          EntityId => {
            ValueList => [
              'MyContainerProductEntityIdString', ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
          LastModifiedDate => {
            DateRange => {
              AfterValue  => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
              BeforeValue => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          ProductTitle => {
            ValueList => [
              'MyContainerProductTitleString', ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
            WildCardValue => 'MyContainerProductTitleString', # min: 1, max: 255
          },    # OPTIONAL
          Visibility => {
            ValueList => [
              'Limited', ...    # values: Limited, Public, Restricted, Draft
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        DataProductFilters => {
          EntityId => {
            ValueList => [
              'MyDataProductEntityIdString', ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
          LastModifiedDate => {
            DateRange => {
              AfterValue  => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
              BeforeValue => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          ProductTitle => {
            ValueList => [
              'MyDataProductTitleString', ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
            WildCardValue => 'MyDataProductTitleString',    # min: 1, max: 255
          },    # OPTIONAL
          Visibility => {
            ValueList => [
              'Limited',
              ...    # values: Limited, Public, Restricted, Unavailable, Draft
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        OfferFilters => {
          AvailabilityEndDate => {
            DateRange => {
              AfterValue  => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
              BeforeValue => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          BuyerAccounts => {
            WildCardValue =>
              'MyOfferBuyerAccountsFilterWildcard', # min: 1, max: 255; OPTIONAL
          },    # OPTIONAL
          EntityId => {
            ValueList => [
              'MyOfferEntityIdString', ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
          LastModifiedDate => {
            DateRange => {
              AfterValue  => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
              BeforeValue => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Name => {
            ValueList => [
              'MyOfferNameString', ...    # min: 1, max: 150
            ],    # min: 1, max: 10; OPTIONAL
            WildCardValue => 'MyOfferNameString',    # min: 1, max: 150
          },    # OPTIONAL
          ProductId => {
            ValueList => [
              'MyOfferProductIdString', ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
          ReleaseDate => {
            DateRange => {
              AfterValue  => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
              BeforeValue => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          ResaleAuthorizationId => {
            ValueList => [
              'MyOfferResaleAuthorizationIdString', ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
          State => {
            ValueList => [
              'Draft', ...    # values: Draft, Released
            ],    # min: 1, max: 2; OPTIONAL
          },    # OPTIONAL
          Targeting => {
            ValueList => [
              'BuyerAccounts',
              ... # values: BuyerAccounts, ParticipatingPrograms, CountryCodes, None
            ],    # min: 1, max: 4; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        ResaleAuthorizationFilters => {
          AvailabilityEndDate => {
            DateRange => {
              AfterValue  => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
              BeforeValue => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
            },    # OPTIONAL
            ValueList => [
              'MyDateTimeISO8601', ...    # min: 20, max: 20; OPTIONAL
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
          CreatedDate => {
            DateRange => {
              AfterValue  => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
              BeforeValue => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
            },    # OPTIONAL
            ValueList => [
              'MyDateTimeISO8601', ...    # min: 20, max: 20; OPTIONAL
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
          EntityId => {
            ValueList => [
              'MyResaleAuthorizationEntityIdString', ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
          LastModifiedDate => {
            DateRange => {
              AfterValue  => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
              BeforeValue => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          ManufacturerAccountId => {
            ValueList => [
              'MyResaleAuthorizationManufacturerAccountIdString',
              ...    # min: 12, max: 12
            ],    # min: 1, max: 10; OPTIONAL
            WildCardValue =>
              'MyResaleAuthorizationManufacturerAccountIdFilterWildcard'
            ,     # min: 12, max: 12; OPTIONAL
          },    # OPTIONAL
          ManufacturerLegalName => {
            ValueList => [
              'MyResaleAuthorizationManufacturerLegalNameString',
              ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
            WildCardValue =>
              'MyResaleAuthorizationManufacturerLegalNameFilterWildcard'
            ,     # min: 1, max: 255; OPTIONAL
          },    # OPTIONAL
          Name => {
            ValueList => [
              'MyResaleAuthorizationNameString', ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
            WildCardValue => 'MyResaleAuthorizationNameFilterWildcard'
            ,     # min: 1, max: 255; OPTIONAL
          },    # OPTIONAL
          OfferExtendedStatus => {
            ValueList => [
              'MyResaleAuthorizationOfferExtendedStatusString',
              ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
          ProductId => {
            ValueList => [
              'MyResaleAuthorizationProductIdString', ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
            WildCardValue => 'MyResaleAuthorizationProductIdFilterWildcard'
            ,     # min: 1, max: 255; OPTIONAL
          },    # OPTIONAL
          ProductName => {
            ValueList => [
              'MyResaleAuthorizationProductNameString', ...   # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
            WildCardValue => 'MyResaleAuthorizationProductNameFilterWildcard'
            ,     # min: 1, max: 255; OPTIONAL
          },    # OPTIONAL
          ResellerAccountID => {
            ValueList => [
              'MyResaleAuthorizationResellerAccountIDString',
              ...    # min: 12, max: 12
            ],    # min: 1, max: 10; OPTIONAL
            WildCardValue =>
              'MyResaleAuthorizationResellerAccountIDFilterWildcard'
            ,     # min: 12, max: 12; OPTIONAL
          },    # OPTIONAL
          ResellerLegalName => {
            ValueList => [
              'MyResaleAuthorizationResellerLegalNameString',
              ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
            WildCardValue =>
              'MyResaleAuthorizationResellerLegalNameFilterWildcard'
            ,     # min: 1, max: 255; OPTIONAL
          },    # OPTIONAL
          Status => {
            ValueList => [
              'Draft', ...    # values: Draft, Active, Restricted
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        SaaSProductFilters => {
          EntityId => {
            ValueList => [
              'MySaaSProductEntityIdString', ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
          LastModifiedDate => {
            DateRange => {
              AfterValue  => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
              BeforeValue => 'MyDateTimeISO8601',   # min: 20, max: 20; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          ProductTitle => {
            ValueList => [
              'MySaaSProductTitleString', ...    # min: 1, max: 255
            ],    # min: 1, max: 10; OPTIONAL
            WildCardValue => 'MySaaSProductTitleString',    # min: 1, max: 255
          },    # OPTIONAL
          Visibility => {
            ValueList => [
              'Limited', ...    # values: Limited, Public, Restricted, Draft
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      EntityTypeSort => {
        AmiProductSort => {
          SortBy => 'EntityId'
          , # values: EntityId, LastModifiedDate, ProductTitle, Visibility; OPTIONAL
          SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING; OPTIONAL
        },    # OPTIONAL
        ContainerProductSort => {
          SortBy => 'EntityId'
          , # values: EntityId, LastModifiedDate, ProductTitle, Visibility; OPTIONAL
          SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING; OPTIONAL
        },    # OPTIONAL
        DataProductSort => {
          SortBy => 'EntityId'
          , # values: EntityId, ProductTitle, Visibility, LastModifiedDate; OPTIONAL
          SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING; OPTIONAL
        },    # OPTIONAL
        OfferSort => {
          SortBy => 'EntityId'
          , # values: EntityId, Name, ProductId, ResaleAuthorizationId, ReleaseDate, AvailabilityEndDate, BuyerAccounts, State, Targeting, LastModifiedDate; OPTIONAL
          SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING; OPTIONAL
        },    # OPTIONAL
        ResaleAuthorizationSort => {
          SortBy => 'EntityId'
          , # values: EntityId, Name, ProductId, ProductName, ManufacturerAccountId, ManufacturerLegalName, ResellerAccountID, ResellerLegalName, Status, OfferExtendedStatus, CreatedDate, AvailabilityEndDate, LastModifiedDate; OPTIONAL
          SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING; OPTIONAL
        },    # OPTIONAL
        SaaSProductSort => {
          SortBy => 'EntityId'
          , # values: EntityId, ProductTitle, Visibility, LastModifiedDate; OPTIONAL
          SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      FilterList => [
        {
          Name      => 'MyFilterName',    # min: 1, max: 255; OPTIONAL
          ValueList => [
            'MyFilterValueContent', ...    # min: 1, max: 255
          ],    # min: 1, max: 10; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults    => 1,                # OPTIONAL
      NextToken     => 'MyNextToken',    # OPTIONAL
      OwnershipType => 'SELF',           # OPTIONAL
      Sort          => {
        SortBy    => 'MySortBy',     # min: 1, max: 255; OPTIONAL
        SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $EntitySummaryList = $ListEntitiesResponse->EntitySummaryList;
    my $NextToken         = $ListEntitiesResponse->NextToken;

    # Returns a L<Paws::MarketplaceCatalog::ListEntitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/catalog.marketplace/ListEntities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

The catalog related to the request. Fixed value: C<AWSMarketplace>



=head2 B<REQUIRED> EntityType => Str

The type of entities to retrieve. Valid values are: C<AmiProduct>,
C<ContainerProduct>, C<DataProduct>, C<SaaSProduct>,
C<ProcurementPolicy>, C<Experience>, C<Audience>, C<BrandingSettings>,
C<Offer>, C<Seller>, C<ResaleAuthorization>.



=head2 EntityTypeFilters => L<Paws::MarketplaceCatalog::EntityTypeFilters>

A Union object containing filter shapes for all C<EntityType>s. Each
C<EntityTypeFilter> shape will have filters applicable for that
C<EntityType> that can be used to search or filter entities.



=head2 EntityTypeSort => L<Paws::MarketplaceCatalog::EntityTypeSort>

A Union object containing C<Sort> shapes for all C<EntityType>s. Each
C<EntityTypeSort> shape will have C<SortBy> and C<SortOrder> applicable
for fields on that C<EntityType>. This can be used to sort the results
of the filter query.



=head2 FilterList => ArrayRef[L<Paws::MarketplaceCatalog::Filter>]

An array of filter objects. Each filter object contains two attributes,
C<filterName> and C<filterValues>.



=head2 MaxResults => Int

Specifies the upper limit of the elements on a single page. If a value
isn't provided, the default value is 20.



=head2 NextToken => Str

The value of the next token, if it exists. Null if there are no more
results.



=head2 OwnershipType => Str

Filters the returned set of entities based on their owner. The default
is C<SELF>. To list entities shared with you through AWS Resource
Access Manager (AWS RAM), set to C<SHARED>. Entities shared through the
AWS Marketplace Catalog API C<PutResourcePolicy> operation can't be
discovered through the C<SHARED> parameter.

Valid values are: C<"SELF">, C<"SHARED">

=head2 Sort => L<Paws::MarketplaceCatalog::Sort>

An object that contains two attributes, C<SortBy> and C<SortOrder>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEntities in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

