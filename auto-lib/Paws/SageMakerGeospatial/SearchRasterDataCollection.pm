
package Paws::SageMakerGeospatial::SearchRasterDataCollection;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has RasterDataCollectionQuery => (is => 'ro', isa => 'Paws::SageMakerGeospatial::RasterDataCollectionQueryWithBandFilterInput', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchRasterDataCollection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search-raster-data-collection');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerGeospatial::SearchRasterDataCollectionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::SearchRasterDataCollection - Arguments for method SearchRasterDataCollection on L<Paws::SageMakerGeospatial>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchRasterDataCollection on the
L<Amazon SageMaker geospatial capabilities|Paws::SageMakerGeospatial> service. Use the attributes of this class
as arguments to method SearchRasterDataCollection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchRasterDataCollection.

=head1 SYNOPSIS

    my $sagemaker-geospatial = Paws->service('SageMakerGeospatial');
    my $SearchRasterDataCollectionOutput =
      $sagemaker -geospatial->SearchRasterDataCollection(
      Arn                       => 'MyDataCollectionArn',
      RasterDataCollectionQuery => {
        TimeRangeFilter => {
          EndTime   => '1970-01-01T01:00:00',
          StartTime => '1970-01-01T01:00:00',

        },
        AreaOfInterest => {
          AreaOfInterestGeometry => {
            MultiPolygonGeometry => {
              Coordinates => [
                [
                  [
                    [ 1, ... ], ...    # min: 2, max: 2
                  ],
                  ...                  # min: 4
                ],
                ...                    # min: 1
              ],

            },    # OPTIONAL
            PolygonGeometry => {
              Coordinates => [
                [
                  [ 1, ... ], ...    # min: 2, max: 2
                ],
                ...                  # min: 4
              ],    # min: 1

            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        BandFilter      => [ 'MyString', ... ],    # min: 1; OPTIONAL
        PropertyFilters => {
          LogicalOperator => 'AND',                # values: AND; OPTIONAL
          Properties      => [
            {
              Property => {
                EoCloudCover => {
                  LowerBound => 1.0,
                  UpperBound => 1.0,

                },    # OPTIONAL
                LandsatCloudCoverLand => {
                  LowerBound => 1.0,
                  UpperBound => 1.0,

                },    # OPTIONAL
                Platform => {
                  Value              => 'MyString',
                  ComparisonOperator => 'EQUALS'
                  ,    # values: EQUALS, NOT_EQUALS, STARTS_WITH; OPTIONAL
                },    # OPTIONAL
                ViewOffNadir => {
                  LowerBound => 1.0,
                  UpperBound => 1.0,

                },    # OPTIONAL
                ViewSunAzimuth => {
                  LowerBound => 1.0,
                  UpperBound => 1.0,

                },    # OPTIONAL
                ViewSunElevation => {
                  LowerBound => 1.0,
                  UpperBound => 1.0,

                },    # OPTIONAL
              },

            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
      },
      NextToken => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $ApproximateResultCount =
      $SearchRasterDataCollectionOutput->ApproximateResultCount;
    my $Items     = $SearchRasterDataCollectionOutput->Items;
    my $NextToken = $SearchRasterDataCollectionOutput->NextToken;

# Returns a L<Paws::SageMakerGeospatial::SearchRasterDataCollectionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial/SearchRasterDataCollection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the raster data collection.



=head2 NextToken => Str

If the previous response was truncated, you receive this token. Use it
in your next request to receive the next set of results.



=head2 B<REQUIRED> RasterDataCollectionQuery => L<Paws::SageMakerGeospatial::RasterDataCollectionQueryWithBandFilterInput>

RasterDataCollectionQuery consisting of AreaOfInterest(AOI)
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_AreaOfInterest.html),
PropertyFilters
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_PropertyFilter.html)
and TimeRangeFilterInput
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_TimeRangeFilterInput.html)
used in SearchRasterDataCollection
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_SearchRasterDataCollection.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchRasterDataCollection in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

