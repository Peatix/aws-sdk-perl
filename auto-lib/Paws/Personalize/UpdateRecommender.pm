
package Paws::Personalize::UpdateRecommender;
  use Moose;
  has RecommenderArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recommenderArn' , required => 1);
  has RecommenderConfig => (is => 'ro', isa => 'Paws::Personalize::RecommenderConfig', traits => ['NameInRequest'], request_name => 'recommenderConfig' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRecommender');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::UpdateRecommenderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::UpdateRecommender - Arguments for method UpdateRecommender on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRecommender on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method UpdateRecommender.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRecommender.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $UpdateRecommenderResponse = $personalize->UpdateRecommender(
      RecommenderArn    => 'MyArn',
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
      },

    );

    # Results:
    my $RecommenderArn = $UpdateRecommenderResponse->RecommenderArn;

    # Returns a L<Paws::Personalize::UpdateRecommenderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/UpdateRecommender>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecommenderArn => Str

The Amazon Resource Name (ARN) of the recommender to modify.



=head2 B<REQUIRED> RecommenderConfig => L<Paws::Personalize::RecommenderConfig>

The configuration details of the recommender.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRecommender in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

