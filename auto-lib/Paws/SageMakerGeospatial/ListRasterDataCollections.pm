
package Paws::SageMakerGeospatial::ListRasterDataCollections;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRasterDataCollections');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/raster-data-collections');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerGeospatial::ListRasterDataCollectionsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::ListRasterDataCollections - Arguments for method ListRasterDataCollections on L<Paws::SageMakerGeospatial>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRasterDataCollections on the
L<Amazon SageMaker geospatial capabilities|Paws::SageMakerGeospatial> service. Use the attributes of this class
as arguments to method ListRasterDataCollections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRasterDataCollections.

=head1 SYNOPSIS

    my $sagemaker-geospatial = Paws->service('SageMakerGeospatial');
    my $ListRasterDataCollectionsOutput =
      $sagemaker -geospatial->ListRasterDataCollections(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListRasterDataCollectionsOutput->NextToken;
    my $RasterDataCollectionSummaries =
      $ListRasterDataCollectionsOutput->RasterDataCollectionSummaries;

# Returns a L<Paws::SageMakerGeospatial::ListRasterDataCollectionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial/ListRasterDataCollections>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The total number of items to return.



=head2 NextToken => Str

If the previous response was truncated, you receive this token. Use it
in your next request to receive the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRasterDataCollections in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

