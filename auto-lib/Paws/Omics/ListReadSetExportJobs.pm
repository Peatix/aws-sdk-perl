
package Paws::Omics::ListReadSetExportJobs;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Omics::ExportReadSetFilter', traits => ['NameInRequest'], request_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sequenceStoreId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReadSetExportJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{sequenceStoreId}/exportjobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::ListReadSetExportJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListReadSetExportJobs - Arguments for method ListReadSetExportJobs on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReadSetExportJobs on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method ListReadSetExportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReadSetExportJobs.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $ListReadSetExportJobsResponse = $omics->ListReadSetExportJobs(
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
    my $ExportJobs = $ListReadSetExportJobsResponse->ExportJobs;
    my $NextToken  = $ListReadSetExportJobsResponse->NextToken;

    # Returns a L<Paws::Omics::ListReadSetExportJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/ListReadSetExportJobs>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Omics::ExportReadSetFilter>

A filter to apply to the list.



=head2 MaxResults => Int

The maximum number of jobs to return in one page of results.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.



=head2 B<REQUIRED> SequenceStoreId => Str

The jobs' sequence store ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReadSetExportJobs in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

