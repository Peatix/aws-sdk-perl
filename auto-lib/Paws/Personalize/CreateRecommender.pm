
package Paws::Personalize::CreateRecommender;
  use Moose;
  has DatasetGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetGroupArn' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has RecipeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recipeArn' , required => 1);
  has RecommenderConfig => (is => 'ro', isa => 'Paws::Personalize::RecommenderConfig', traits => ['NameInRequest'], request_name => 'recommenderConfig' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRecommender');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::CreateRecommenderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateRecommender - Arguments for method CreateRecommender on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRecommender on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateRecommender.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRecommender.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateRecommenderResponse = $personalize->CreateRecommender(
      DatasetGroupArn   => 'MyArn',
      Name              => 'MyName',
      RecipeArn         => 'MyArn',
      RecommenderConfig => {
        EnableMetadataWithRecommendations => 1,    # OPTIONAL
        ItemExplorationConfig             => {
          'MyParameterName' =>
            'MyParameterValue',    # key: max: 256, value: max: 1000
        },    # max: 100; OPTIONAL
        MinRecommendationRequestsPerSecond => 1,    # min: 1; OPTIONAL
        TrainingDataConfig                 => {
          ExcludedDatasetColumns => {
            'MyDatasetType' => [
              'MyColumnName', ...    # max: 150
            ],    # key: max: 256, value: max: 50
          },    # max: 3; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          TagKey   => 'MyTagKey',      # min: 1, max: 128
          TagValue => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $RecommenderArn = $CreateRecommenderResponse->RecommenderArn;

    # Returns a L<Paws::Personalize::CreateRecommenderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateRecommender>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetGroupArn => Str

The Amazon Resource Name (ARN) of the destination domain dataset group
for the recommender.



=head2 B<REQUIRED> Name => Str

The name of the recommender.



=head2 B<REQUIRED> RecipeArn => Str

The Amazon Resource Name (ARN) of the recipe that the recommender will
use. For a recommender, a recipe is a Domain dataset group use case.
Only Domain dataset group use cases can be used to create a
recommender. For information about use cases see Choosing recommender
use cases
(https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html).



=head2 RecommenderConfig => L<Paws::Personalize::RecommenderConfig>

The configuration details of the recommender.



=head2 Tags => ArrayRef[L<Paws::Personalize::Tag>]

A list of tags
(https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html)
to apply to the recommender.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRecommender in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

