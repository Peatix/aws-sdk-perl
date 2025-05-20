
package Paws::SageMakerGeospatial::ListEarthObservationJobs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEarthObservationJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-earth-observation-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerGeospatial::ListEarthObservationJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::ListEarthObservationJobs - Arguments for method ListEarthObservationJobs on L<Paws::SageMakerGeospatial>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEarthObservationJobs on the
L<Amazon SageMaker geospatial capabilities|Paws::SageMakerGeospatial> service. Use the attributes of this class
as arguments to method ListEarthObservationJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEarthObservationJobs.

=head1 SYNOPSIS

    my $sagemaker-geospatial = Paws->service('SageMakerGeospatial');
    my $ListEarthObservationJobOutput =
      $sagemaker -geospatial->ListEarthObservationJobs(
      MaxResults   => 1,                 # OPTIONAL
      NextToken    => 'MyNextToken',     # OPTIONAL
      SortBy       => 'MyString',        # OPTIONAL
      SortOrder    => 'ASCENDING',       # OPTIONAL
      StatusEquals => 'INITIALIZING',    # OPTIONAL
      );

    # Results:
    my $EarthObservationJobSummaries =
      $ListEarthObservationJobOutput->EarthObservationJobSummaries;
    my $NextToken = $ListEarthObservationJobOutput->NextToken;

 # Returns a L<Paws::SageMakerGeospatial::ListEarthObservationJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial/ListEarthObservationJobs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The total number of items to return.



=head2 NextToken => Str

If the previous response was truncated, you receive this token. Use it
in your next request to receive the next set of results.



=head2 SortBy => Str

The parameter by which to sort the results.



=head2 SortOrder => Str

An optional value that specifies whether you want the results sorted in
C<Ascending> or C<Descending> order.

Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 StatusEquals => Str

A filter that retrieves only jobs with a specific status.

Valid values are: C<"INITIALIZING">, C<"IN_PROGRESS">, C<"STOPPING">, C<"COMPLETED">, C<"STOPPED">, C<"FAILED">, C<"DELETING">, C<"DELETED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEarthObservationJobs in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

