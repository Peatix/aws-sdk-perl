
package Paws::SageMakerGeospatial::GetRasterDataCollectionOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has DescriptionPageUrl => (is => 'ro', isa => 'Str', required => 1);
  has ImageSourceBands => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SupportedFilters => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerGeospatial::Filter]', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::SageMakerGeospatial::Tags');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::GetRasterDataCollectionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the raster data collection.


=head2 B<REQUIRED> Description => Str

A description of the raster data collection.


=head2 B<REQUIRED> DescriptionPageUrl => Str

The URL of the description page.


=head2 B<REQUIRED> ImageSourceBands => ArrayRef[Str|Undef]

The list of image source bands in the raster data collection.


=head2 B<REQUIRED> Name => Str

The name of the raster data collection.


=head2 B<REQUIRED> SupportedFilters => ArrayRef[L<Paws::SageMakerGeospatial::Filter>]

The filters supported by the raster data collection.


=head2 Tags => L<Paws::SageMakerGeospatial::Tags>

Each tag consists of a key and a value.


=head2 B<REQUIRED> Type => Str

The raster data collection type.

Valid values are: C<"PUBLIC">, C<"PREMIUM">, C<"USER">
=head2 _request_id => Str


=cut

