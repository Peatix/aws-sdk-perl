
package Paws::Personalize::CreateSolution;
  use Moose;
  has DatasetGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetGroupArn' , required => 1);
  has EventType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventType' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has PerformAutoML => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'performAutoML' );
  has PerformAutoTraining => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'performAutoTraining' );
  has PerformHPO => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'performHPO' );
  has RecipeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recipeArn' );
  has SolutionConfig => (is => 'ro', isa => 'Paws::Personalize::SolutionConfig', traits => ['NameInRequest'], request_name => 'solutionConfig' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSolution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::CreateSolutionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateSolution - Arguments for method CreateSolution on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSolution on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateSolution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSolution.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateSolutionResponse = $personalize->CreateSolution(
      DatasetGroupArn     => 'MyArn',
      Name                => 'MyName',
      EventType           => 'MyEventType',    # OPTIONAL
      PerformAutoML       => 1,                # OPTIONAL
      PerformAutoTraining => 1,                # OPTIONAL
      PerformHPO          => 1,                # OPTIONAL
      RecipeArn           => 'MyArn',          # OPTIONAL
      SolutionConfig      => {
        AlgorithmHyperParameters => {
          'MyParameterName' =>
            'MyParameterValue',                # key: max: 256, value: max: 1000
        },    # max: 100; OPTIONAL
        AutoMLConfig => {
          MetricName => 'MyMetricName',    # max: 256; OPTIONAL
          RecipeList => [
            'MyArn', ...                   # max: 256
          ],    # max: 100; OPTIONAL
        },    # OPTIONAL
        AutoTrainingConfig => {
          SchedulingExpression =>
            'MySchedulingExpression',    # min: 1, max: 16; OPTIONAL
        },    # OPTIONAL
        EventValueThreshold => 'MyEventValueThreshold',    # max: 256; OPTIONAL
        EventsConfig        => {
          EventParametersList => [
            {
              EventType           => 'MyEventType',    # max: 256
              EventValueThreshold => 1,                # OPTIONAL
              Weight              => 1,                # max: 1; OPTIONAL
            },
            ...
          ],    # max: 10; OPTIONAL
        },    # OPTIONAL
        FeatureTransformationParameters => {
          'MyParameterName' =>
            'MyParameterValue',    # key: max: 256, value: max: 1000
        },    # max: 100; OPTIONAL
        HpoConfig => {
          AlgorithmHyperParameterRanges => {
            CategoricalHyperParameterRanges => [
              {
                Name   => 'MyParameterName',    # max: 256
                Values => [
                  'MyCategoricalValue', ...     # max: 1000
                ],    # max: 100; OPTIONAL
              },
              ...
            ],    # max: 100; OPTIONAL
            ContinuousHyperParameterRanges => [
              {
                MaxValue => 1,                    # min: -1000000; OPTIONAL
                MinValue => 1,                    # min: -1000000; OPTIONAL
                Name     => 'MyParameterName',    # max: 256
              },
              ...
            ],    # max: 100; OPTIONAL
            IntegerHyperParameterRanges => [
              {
                MaxValue => 1,                    # max: 1000000; OPTIONAL
                MinValue => 1,                    # min: -1000000; OPTIONAL
                Name     => 'MyParameterName',    # max: 256
              },
              ...
            ],    # max: 100; OPTIONAL
          },    # OPTIONAL
          HpoObjective => {
            MetricName  => 'MyMetricName',          # max: 256; OPTIONAL
            MetricRegex => 'MyMetricRegex',         # max: 256; OPTIONAL
            Type        => 'MyHPOObjectiveType',    # max: 256; OPTIONAL
          },    # OPTIONAL
          HpoResourceConfig => {
            MaxNumberOfTrainingJobs => 'MyHPOResource',    # max: 256; OPTIONAL
            MaxParallelTrainingJobs => 'MyHPOResource',    # max: 256; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        OptimizationObjective => {
          ItemAttribute => 'MyItemAttribute',    # min: 1, max: 150; OPTIONAL
          ObjectiveSensitivity =>
            'LOW',    # values: LOW, MEDIUM, HIGH, OFF; OPTIONAL
        },    # OPTIONAL
        TrainingDataConfig => {
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
    my $SolutionArn = $CreateSolutionResponse->SolutionArn;

    # Returns a L<Paws::Personalize::CreateSolutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateSolution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetGroupArn => Str

The Amazon Resource Name (ARN) of the dataset group that provides the
training data.



=head2 EventType => Str

When your have multiple event types (using an C<EVENT_TYPE> schema
field), this parameter specifies which event type (for example, 'click'
or 'like') is used for training the model.

If you do not provide an C<eventType>, Amazon Personalize will use all
interactions for training with equal weight regardless of type.



=head2 B<REQUIRED> Name => Str

The name for the solution.



=head2 PerformAutoML => Bool

We don't recommend enabling automated machine learning. Instead, match
your use case to the available Amazon Personalize recipes. For more
information, see Choosing a recipe
(https://docs.aws.amazon.com/personalize/latest/dg/working-with-predefined-recipes.html).

Whether to perform automated machine learning (AutoML). The default is
C<false>. For this case, you must specify C<recipeArn>.

When set to C<true>, Amazon Personalize analyzes your training data and
selects the optimal USER_PERSONALIZATION recipe and hyperparameters. In
this case, you must omit C<recipeArn>. Amazon Personalize determines
the optimal recipe by running tests with different values for the
hyperparameters. AutoML lengthens the training process as compared to
selecting a specific recipe.



=head2 PerformAutoTraining => Bool

Whether the solution uses automatic training to create new solution
versions (trained models). The default is C<True> and the solution
automatically creates new solution versions every 7 days. You can
change the training frequency by specifying a C<schedulingExpression>
in the C<AutoTrainingConfig> as part of solution configuration. For
more information about automatic training, see Configuring automatic
training
(https://docs.aws.amazon.com/personalize/latest/dg/solution-config-auto-training.html).

Automatic solution version creation starts within one hour after the
solution is ACTIVE. If you manually create a solution version within
the hour, the solution skips the first automatic training.

After training starts, you can get the solution version's Amazon
Resource Name (ARN) with the ListSolutionVersions
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html)
API operation. To get its status, use the DescribeSolutionVersion
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html).



=head2 PerformHPO => Bool

Whether to perform hyperparameter optimization (HPO) on the specified
or selected recipe. The default is C<false>.

When performing AutoML, this parameter is always C<true> and you should
not set it to C<false>.



=head2 RecipeArn => Str

The Amazon Resource Name (ARN) of the recipe to use for model training.
This is required when C<performAutoML> is false. For information about
different Amazon Personalize recipes and their ARNs, see Choosing a
recipe
(https://docs.aws.amazon.com/personalize/latest/dg/working-with-predefined-recipes.html).



=head2 SolutionConfig => L<Paws::Personalize::SolutionConfig>

The configuration properties for the solution. When C<performAutoML> is
set to true, Amazon Personalize only evaluates the C<autoMLConfig>
section of the solution configuration.

Amazon Personalize doesn't support configuring the C<hpoObjective> at
this time.



=head2 Tags => ArrayRef[L<Paws::Personalize::Tag>]

A list of tags
(https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html)
to apply to the solution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSolution in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

