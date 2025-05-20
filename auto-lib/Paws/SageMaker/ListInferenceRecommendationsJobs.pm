
package Paws::SageMaker::ListInferenceRecommendationsJobs;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has ModelNameEquals => (is => 'ro', isa => 'Str');
  has ModelPackageVersionArnEquals => (is => 'ro', isa => 'Str');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInferenceRecommendationsJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListInferenceRecommendationsJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListInferenceRecommendationsJobs - Arguments for method ListInferenceRecommendationsJobs on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInferenceRecommendationsJobs on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListInferenceRecommendationsJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInferenceRecommendationsJobs.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListInferenceRecommendationsJobsResponse =
      $api . sagemaker->ListInferenceRecommendationsJobs(
      CreationTimeAfter            => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore           => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeAfter        => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeBefore       => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults                   => 1,                        # OPTIONAL
      ModelNameEquals              => 'MyModelName',            # OPTIONAL
      ModelPackageVersionArnEquals => 'MyModelPackageArn',      # OPTIONAL
      NameContains                 => 'MyNameContains',         # OPTIONAL
      NextToken                    => 'MyNextToken',            # OPTIONAL
      SortBy                       => 'Name',                   # OPTIONAL
      SortOrder                    => 'Ascending',              # OPTIONAL
      StatusEquals                 => 'PENDING',                # OPTIONAL
      );

    # Results:
    my $InferenceRecommendationsJobs =
      $ListInferenceRecommendationsJobsResponse->InferenceRecommendationsJobs;
    my $NextToken = $ListInferenceRecommendationsJobsResponse->NextToken;

# Returns a L<Paws::SageMaker::ListInferenceRecommendationsJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListInferenceRecommendationsJobs>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only jobs created after the specified time
(timestamp).



=head2 CreationTimeBefore => Str

A filter that returns only jobs created before the specified time
(timestamp).



=head2 LastModifiedTimeAfter => Str

A filter that returns only jobs that were last modified after the
specified time (timestamp).



=head2 LastModifiedTimeBefore => Str

A filter that returns only jobs that were last modified before the
specified time (timestamp).



=head2 MaxResults => Int

The maximum number of recommendations to return in the response.



=head2 ModelNameEquals => Str

A filter that returns only jobs that were created for this model.



=head2 ModelPackageVersionArnEquals => Str

A filter that returns only jobs that were created for this versioned
model package.



=head2 NameContains => Str

A string in the job name. This filter returns only recommendations
whose name contains the specified string.



=head2 NextToken => Str

If the response to a previous
C<ListInferenceRecommendationsJobsRequest> request was truncated, the
response includes a C<NextToken>. To retrieve the next set of
recommendations, use the token in the next request.



=head2 SortBy => Str

The parameter by which to sort the results.

Valid values are: C<"Name">, C<"CreationTime">, C<"Status">

=head2 SortOrder => Str

The sort order for the results.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

A filter that retrieves only inference recommendations jobs with a
specific status.

Valid values are: C<"PENDING">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STOPPING">, C<"STOPPED">, C<"DELETING">, C<"DELETED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInferenceRecommendationsJobs in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

