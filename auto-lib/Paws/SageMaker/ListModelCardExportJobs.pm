
package Paws::SageMaker::ListModelCardExportJobs;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has ModelCardExportJobNameContains => (is => 'ro', isa => 'Str');
  has ModelCardName => (is => 'ro', isa => 'Str', required => 1);
  has ModelCardVersion => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListModelCardExportJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListModelCardExportJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelCardExportJobs - Arguments for method ListModelCardExportJobs on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListModelCardExportJobs on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListModelCardExportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListModelCardExportJobs.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListModelCardExportJobsResponse =
      $api . sagemaker->ListModelCardExportJobs(
      ModelCardName                  => 'MyEntityName',
      CreationTimeAfter              => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore             => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults                     => 1,                        # OPTIONAL
      ModelCardExportJobNameContains => 'MyEntityName',           # OPTIONAL
      ModelCardVersion               => 1,                        # OPTIONAL
      NextToken                      => 'MyNextToken',            # OPTIONAL
      SortBy                         => 'Name',                   # OPTIONAL
      SortOrder                      => 'Ascending',              # OPTIONAL
      StatusEquals                   => 'InProgress',             # OPTIONAL
      );

    # Results:
    my $ModelCardExportJobSummaries =
      $ListModelCardExportJobsResponse->ModelCardExportJobSummaries;
    my $NextToken = $ListModelCardExportJobsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListModelCardExportJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListModelCardExportJobs>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Only list model card export jobs that were created after the time
specified.



=head2 CreationTimeBefore => Str

Only list model card export jobs that were created before the time
specified.



=head2 MaxResults => Int

The maximum number of model card export jobs to list.



=head2 ModelCardExportJobNameContains => Str

Only list model card export jobs with names that contain the specified
string.



=head2 B<REQUIRED> ModelCardName => Str

List export jobs for the model card with the specified name.



=head2 ModelCardVersion => Int

List export jobs for the model card with the specified version.



=head2 NextToken => Str

If the response to a previous C<ListModelCardExportJobs> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of model card export jobs, use the token in the next request.



=head2 SortBy => Str

Sort model card export jobs by either name or creation time. Sorts by
creation time by default.

Valid values are: C<"Name">, C<"CreationTime">, C<"Status">

=head2 SortOrder => Str

Sort model card export jobs by ascending or descending order.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

Only list model card export jobs with the specified status.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListModelCardExportJobs in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

