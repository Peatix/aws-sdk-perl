
package Paws::SageMaker::ListInferenceExperiments;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInferenceExperiments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListInferenceExperimentsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListInferenceExperiments - Arguments for method ListInferenceExperiments on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInferenceExperiments on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListInferenceExperiments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInferenceExperiments.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListInferenceExperimentsResponse =
      $api . sagemaker->ListInferenceExperiments(
      CreationTimeAfter      => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore     => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults             => 1,                        # OPTIONAL
      NameContains           => 'MyNameContains',         # OPTIONAL
      NextToken              => 'MyNextToken',            # OPTIONAL
      SortBy                 => 'Name',                   # OPTIONAL
      SortOrder              => 'Ascending',              # OPTIONAL
      StatusEquals           => 'Creating',               # OPTIONAL
      Type                   => 'ShadowMode',             # OPTIONAL
      );

    # Results:
    my $InferenceExperiments =
      $ListInferenceExperimentsResponse->InferenceExperiments;
    my $NextToken = $ListInferenceExperimentsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListInferenceExperimentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListInferenceExperiments>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Selects inference experiments which were created after this timestamp.



=head2 CreationTimeBefore => Str

Selects inference experiments which were created before this timestamp.



=head2 LastModifiedTimeAfter => Str

Selects inference experiments which were last modified after this
timestamp.



=head2 LastModifiedTimeBefore => Str

Selects inference experiments which were last modified before this
timestamp.



=head2 MaxResults => Int

The maximum number of results to select.



=head2 NameContains => Str

Selects inference experiments whose names contain this name.



=head2 NextToken => Str

The response from the last list when returning a list large enough to
need tokening.



=head2 SortBy => Str

The column by which to sort the listed inference experiments.

Valid values are: C<"Name">, C<"CreationTime">, C<"Status">

=head2 SortOrder => Str

The direction of sorting (ascending or descending).

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

Selects inference experiments which are in this status. For the
possible statuses, see DescribeInferenceExperiment
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeInferenceExperiment.html).

Valid values are: C<"Creating">, C<"Created">, C<"Updating">, C<"Running">, C<"Starting">, C<"Stopping">, C<"Completed">, C<"Cancelled">

=head2 Type => Str

Selects inference experiments of this type. For the possible types of
inference experiments, see CreateInferenceExperiment
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateInferenceExperiment.html).

Valid values are: C<"ShadowMode">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInferenceExperiments in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

