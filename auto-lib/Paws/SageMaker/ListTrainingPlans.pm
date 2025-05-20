
package Paws::SageMaker::ListTrainingPlans;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::TrainingPlanFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StartTimeAfter => (is => 'ro', isa => 'Str');
  has StartTimeBefore => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTrainingPlans');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListTrainingPlansResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListTrainingPlans - Arguments for method ListTrainingPlans on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTrainingPlans on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListTrainingPlans.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTrainingPlans.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListTrainingPlansResponse = $api . sagemaker->ListTrainingPlans(
      Filters => [
        {
          Name  => 'Status',        # values: Status
          Value => 'MyString64',    # max: 64

        },
        ...
      ],    # OPTIONAL
      MaxResults      => 1,                        # OPTIONAL
      NextToken       => 'MyNextToken',            # OPTIONAL
      SortBy          => 'TrainingPlanName',       # OPTIONAL
      SortOrder       => 'Ascending',              # OPTIONAL
      StartTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      StartTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTrainingPlansResponse->NextToken;
    my $TrainingPlanSummaries =
      $ListTrainingPlansResponse->TrainingPlanSummaries;

    # Returns a L<Paws::SageMaker::ListTrainingPlansResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListTrainingPlans>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SageMaker::TrainingPlanFilter>]

Additional filters to apply to the list of training plans.



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

A token to continue pagination if more results are available.



=head2 SortBy => Str

The training plan field to sort the results by (e.g., StartTime,
Status).

Valid values are: C<"TrainingPlanName">, C<"StartTime">, C<"Status">

=head2 SortOrder => Str

The order to sort the results (Ascending or Descending).

Valid values are: C<"Ascending">, C<"Descending">

=head2 StartTimeAfter => Str

Filter to list only training plans with an actual start time after this
date.



=head2 StartTimeBefore => Str

Filter to list only training plans with an actual start time before
this date.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTrainingPlans in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

