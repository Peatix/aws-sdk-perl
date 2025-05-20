
package Paws::HealthLake::ListFHIRExportJobs;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str', required => 1);
  has JobName => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SubmittedAfter => (is => 'ro', isa => 'Str');
  has SubmittedBefore => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFHIRExportJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::HealthLake::ListFHIRExportJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::ListFHIRExportJobs - Arguments for method ListFHIRExportJobs on L<Paws::HealthLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFHIRExportJobs on the
L<Amazon HealthLake|Paws::HealthLake> service. Use the attributes of this class
as arguments to method ListFHIRExportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFHIRExportJobs.

=head1 SYNOPSIS

    my $healthlake = Paws->service('HealthLake');
    my $ListFHIRExportJobsResponse = $healthlake->ListFHIRExportJobs(
      DatastoreId     => 'MyDatastoreId',
      JobName         => 'MyJobName',              # OPTIONAL
      JobStatus       => 'SUBMITTED',              # OPTIONAL
      MaxResults      => 1,                        # OPTIONAL
      NextToken       => 'MyNextToken',            # OPTIONAL
      SubmittedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      SubmittedBefore => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $ExportJobPropertiesList =
      $ListFHIRExportJobsResponse->ExportJobPropertiesList;
    my $NextToken = $ListFHIRExportJobsResponse->NextToken;

    # Returns a L<Paws::HealthLake::ListFHIRExportJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/healthlake/ListFHIRExportJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreId => Str

This parameter limits the response to the export job with the specified
data store ID.



=head2 JobName => Str

This parameter limits the response to the export job with the specified
job name.



=head2 JobStatus => Str

This parameter limits the response to the export jobs with the
specified job status.

Valid values are: C<"SUBMITTED">, C<"QUEUED">, C<"IN_PROGRESS">, C<"COMPLETED_WITH_ERRORS">, C<"COMPLETED">, C<"FAILED">, C<"CANCEL_SUBMITTED">, C<"CANCEL_IN_PROGRESS">, C<"CANCEL_COMPLETED">, C<"CANCEL_FAILED">

=head2 MaxResults => Int

This parameter limits the number of results returned for a
ListFHIRExportJobs to a maximum quantity specified by the user.



=head2 NextToken => Str

A pagination token used to identify the next page of results to return
for a ListFHIRExportJobs query.



=head2 SubmittedAfter => Str

This parameter limits the response to FHIR export jobs submitted after
a user specified date.



=head2 SubmittedBefore => Str

This parameter limits the response to FHIR export jobs submitted before
a user specified date.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFHIRExportJobs in L<Paws::HealthLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

