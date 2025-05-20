
package Paws::SageMakerGeospatial::GetRasterDataCollection;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRasterDataCollection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/raster-data-collection/{Arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerGeospatial::GetRasterDataCollectionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::GetRasterDataCollection - Arguments for method GetRasterDataCollection on L<Paws::SageMakerGeospatial>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRasterDataCollection on the
L<Amazon SageMaker geospatial capabilities|Paws::SageMakerGeospatial> service. Use the attributes of this class
as arguments to method GetRasterDataCollection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRasterDataCollection.

=head1 SYNOPSIS

    my $sagemaker-geospatial = Paws->service('SageMakerGeospatial');
    my $GetRasterDataCollectionOutput =
      $sagemaker -geospatial->GetRasterDataCollection(
      Arn => 'MyDataCollectionArn',

      );

    # Results:
    my $Arn                = $GetRasterDataCollectionOutput->Arn;
    my $Description        = $GetRasterDataCollectionOutput->Description;
    my $DescriptionPageUrl = $GetRasterDataCollectionOutput->DescriptionPageUrl;
    my $ImageSourceBands   = $GetRasterDataCollectionOutput->ImageSourceBands;
    my $Name               = $GetRasterDataCollectionOutput->Name;
    my $SupportedFilters   = $GetRasterDataCollectionOutput->SupportedFilters;
    my $Tags               = $GetRasterDataCollectionOutput->Tags;
    my $Type               = $GetRasterDataCollectionOutput->Type;

 # Returns a L<Paws::SageMakerGeospatial::GetRasterDataCollectionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial/GetRasterDataCollection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the raster data collection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRasterDataCollection in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

