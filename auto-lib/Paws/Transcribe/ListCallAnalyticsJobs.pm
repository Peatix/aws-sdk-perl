
package Paws::Transcribe::ListCallAnalyticsJobs;
  use Moose;
  has JobNameContains => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCallAnalyticsJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::ListCallAnalyticsJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListCallAnalyticsJobs - Arguments for method ListCallAnalyticsJobs on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCallAnalyticsJobs on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method ListCallAnalyticsJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCallAnalyticsJobs.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $ListCallAnalyticsJobsResponse = $transcribe->ListCallAnalyticsJobs(
      JobNameContains => 'MyCallAnalyticsJobName',    # OPTIONAL
      MaxResults      => 1,                           # OPTIONAL
      NextToken       => 'MyNextToken',               # OPTIONAL
      Status          => 'QUEUED',                    # OPTIONAL
    );

    # Results:
    my $CallAnalyticsJobSummaries =
      $ListCallAnalyticsJobsResponse->CallAnalyticsJobSummaries;
    my $NextToken = $ListCallAnalyticsJobsResponse->NextToken;
    my $Status    = $ListCallAnalyticsJobsResponse->Status;

    # Returns a L<Paws::Transcribe::ListCallAnalyticsJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/ListCallAnalyticsJobs>

=head1 ATTRIBUTES


=head2 JobNameContains => Str

Returns only the Call Analytics jobs that contain the specified string.
The search is not case sensitive.



=head2 MaxResults => Int

The maximum number of Call Analytics jobs to return in each page of
results. If there are fewer results than the value that you specify,
only the actual results are returned. If you do not specify a value, a
default of 5 is used.



=head2 NextToken => Str

If your C<ListCallAnalyticsJobs> request returns more results than can
be displayed, C<NextToken> is displayed in the response with an
associated string. To get the next page of results, copy this string
and repeat your request, including C<NextToken> with the value of the
copied string. Repeat as needed to view all your results.



=head2 Status => Str

Returns only Call Analytics jobs with the specified status. Jobs are
ordered by creation date, with the newest job first. If you do not
include C<Status>, all Call Analytics jobs are returned.

Valid values are: C<"QUEUED">, C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCallAnalyticsJobs in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

