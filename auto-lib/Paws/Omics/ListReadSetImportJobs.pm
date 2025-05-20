
package Paws::Omics::ListReadSetImportJobs;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Omics::ImportReadSetFilter', traits => ['NameInRequest'], request_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sequenceStoreId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReadSetImportJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{sequenceStoreId}/importjobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::ListReadSetImportJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListReadSetImportJobs - Arguments for method ListReadSetImportJobs on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReadSetImportJobs on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method ListReadSetImportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReadSetImportJobs.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $ListReadSetImportJobsResponse = $omics->ListReadSetImportJobs(
      SequenceStoreId => 'MySequenceStoreId',
      Filter          => {
        CreatedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
        CreatedBefore => '1970-01-01T01:00:00',    # OPTIONAL
        Status        => 'SUBMITTED'
        , # values: SUBMITTED, IN_PROGRESS, CANCELLING, CANCELLED, FAILED, COMPLETED, COMPLETED_WITH_FAILURES; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ImportJobs = $ListReadSetImportJobsResponse->ImportJobs;
    my $NextToken  = $ListReadSetImportJobsResponse->NextToken;

    # Returns a L<Paws::Omics::ListReadSetImportJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/ListReadSetImportJobs>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Omics::ImportReadSetFilter>

A filter to apply to the list.



=head2 MaxResults => Int

The maximum number of jobs to return in one page of results.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.



=head2 B<REQUIRED> SequenceStoreId => Str

The jobs' sequence store ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReadSetImportJobs in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

