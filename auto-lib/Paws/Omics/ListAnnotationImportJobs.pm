
package Paws::Omics::ListAnnotationImportJobs;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Omics::ListAnnotationImportJobsFilter', traits => ['NameInRequest'], request_name => 'filter');
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ids');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAnnotationImportJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/import/annotations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::ListAnnotationImportJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListAnnotationImportJobs - Arguments for method ListAnnotationImportJobs on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAnnotationImportJobs on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method ListAnnotationImportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAnnotationImportJobs.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $ListAnnotationImportJobsResponse = $omics->ListAnnotationImportJobs(
      Filter => {
        Status => 'SUBMITTED'
        , # values: SUBMITTED, IN_PROGRESS, CANCELLED, COMPLETED, FAILED, COMPLETED_WITH_FAILURES; OPTIONAL
        StoreName => 'MyString',    # OPTIONAL
      },    # OPTIONAL
      Ids => [
        'MyResourceIdentifier', ...    # min: 1, max: 50
      ],    # OPTIONAL
      MaxResults => 1,                                         # OPTIONAL
      NextToken  =>
        'MyListAnnotationImportJobsRequestNextTokenString',    # OPTIONAL
    );

    # Results:
    my $AnnotationImportJobs =
      $ListAnnotationImportJobsResponse->AnnotationImportJobs;
    my $NextToken = $ListAnnotationImportJobsResponse->NextToken;

    # Returns a L<Paws::Omics::ListAnnotationImportJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/ListAnnotationImportJobs>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Omics::ListAnnotationImportJobsFilter>

A filter to apply to the list.



=head2 Ids => ArrayRef[Str|Undef]

IDs of annotation import jobs to retrieve.



=head2 MaxResults => Int

The maximum number of jobs to return in one page of results.



=head2 NextToken => Str

Specifies the pagination token from a previous request to retrieve the
next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAnnotationImportJobs in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

