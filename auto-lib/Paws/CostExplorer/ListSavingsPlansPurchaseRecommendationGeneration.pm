
package Paws::CostExplorer::ListSavingsPlansPurchaseRecommendationGeneration;
  use Moose;
  has GenerationStatus => (is => 'ro', isa => 'Str');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');
  has RecommendationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSavingsPlansPurchaseRecommendationGeneration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::ListSavingsPlansPurchaseRecommendationGenerationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ListSavingsPlansPurchaseRecommendationGeneration - Arguments for method ListSavingsPlansPurchaseRecommendationGeneration on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSavingsPlansPurchaseRecommendationGeneration on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method ListSavingsPlansPurchaseRecommendationGeneration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSavingsPlansPurchaseRecommendationGeneration.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $ListSavingsPlansPurchaseRecommendationGenerationResponse =
      $ce->ListSavingsPlansPurchaseRecommendationGeneration(
      GenerationStatus  => 'SUCCEEDED',          # OPTIONAL
      NextPageToken     => 'MyNextPageToken',    # OPTIONAL
      PageSize          => 1,                    # OPTIONAL
      RecommendationIds => [
        'MyRecommendationId', ...                # min: 36, max: 36
      ],    # OPTIONAL
      );

    # Results:
    my $GenerationSummaryList =
      $ListSavingsPlansPurchaseRecommendationGenerationResponse
      ->GenerationSummaryList;
    my $NextPageToken =
      $ListSavingsPlansPurchaseRecommendationGenerationResponse->NextPageToken;

# Returns a L<Paws::CostExplorer::ListSavingsPlansPurchaseRecommendationGenerationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/ListSavingsPlansPurchaseRecommendationGeneration>

=head1 ATTRIBUTES


=head2 GenerationStatus => Str

The status of the recommendation generation.

Valid values are: C<"SUCCEEDED">, C<"PROCESSING">, C<"FAILED">

=head2 NextPageToken => Str

The token to retrieve the next set of results.



=head2 PageSize => Int

The number of recommendations that you want returned in a single
response object.



=head2 RecommendationIds => ArrayRef[Str|Undef]

The IDs for each specific recommendation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSavingsPlansPurchaseRecommendationGeneration in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

