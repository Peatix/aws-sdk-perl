
package Paws::SageMakerGeospatial::ListVectorEnrichmentJobs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVectorEnrichmentJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-vector-enrichment-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerGeospatial::ListVectorEnrichmentJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::ListVectorEnrichmentJobs - Arguments for method ListVectorEnrichmentJobs on L<Paws::SageMakerGeospatial>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVectorEnrichmentJobs on the
L<Amazon SageMaker geospatial capabilities|Paws::SageMakerGeospatial> service. Use the attributes of this class
as arguments to method ListVectorEnrichmentJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVectorEnrichmentJobs.

=head1 SYNOPSIS

    my $sagemaker-geospatial = Paws->service('SageMakerGeospatial');
    my $ListVectorEnrichmentJobOutput =
      $sagemaker -geospatial->ListVectorEnrichmentJobs(
      MaxResults   => 1,                # OPTIONAL
      NextToken    => 'MyNextToken',    # OPTIONAL
      SortBy       => 'MyString',       # OPTIONAL
      SortOrder    => 'ASCENDING',      # OPTIONAL
      StatusEquals => 'MyString',       # OPTIONAL
      );

    # Results:
    my $NextToken = $ListVectorEnrichmentJobOutput->NextToken;
    my $VectorEnrichmentJobSummaries =
      $ListVectorEnrichmentJobOutput->VectorEnrichmentJobSummaries;

 # Returns a L<Paws::SageMakerGeospatial::ListVectorEnrichmentJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial/ListVectorEnrichmentJobs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return.



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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVectorEnrichmentJobs in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

