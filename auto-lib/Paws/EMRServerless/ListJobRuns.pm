
package Paws::EMRServerless::ListJobRuns;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has CreatedAtAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdAtAfter');
  has CreatedAtBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdAtBefore');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Mode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'mode');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has States => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'states');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobRuns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/jobruns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRServerless::ListJobRunsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRServerless::ListJobRuns - Arguments for method ListJobRuns on L<Paws::EMRServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobRuns on the
L<EMR Serverless|Paws::EMRServerless> service. Use the attributes of this class
as arguments to method ListJobRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobRuns.

=head1 SYNOPSIS

    my $emr-serverless = Paws->service('EMRServerless');
    my $ListJobRunsResponse = $emr -serverless->ListJobRuns(
      ApplicationId   => 'MyApplicationId',
      CreatedAtAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreatedAtBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults      => 1,                        # OPTIONAL
      Mode            => 'BATCH',                  # OPTIONAL
      NextToken       => 'MyNextToken',            # OPTIONAL
      States          => [
        'SUBMITTED',
        ... # values: SUBMITTED, PENDING, SCHEDULED, RUNNING, SUCCESS, FAILED, CANCELLING, CANCELLED, QUEUED
      ],    # OPTIONAL
    );

    # Results:
    my $JobRuns   = $ListJobRunsResponse->JobRuns;
    my $NextToken = $ListJobRunsResponse->NextToken;

    # Returns a L<Paws::EMRServerless::ListJobRunsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-serverless/ListJobRuns>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The ID of the application for which to list the job run.



=head2 CreatedAtAfter => Str

The lower bound of the option to filter by creation date and time.



=head2 CreatedAtBefore => Str

The upper bound of the option to filter by creation date and time.



=head2 MaxResults => Int

The maximum number of job runs that can be listed.



=head2 Mode => Str

The mode of the job runs to list.

Valid values are: C<"BATCH">, C<"STREAMING">

=head2 NextToken => Str

The token for the next set of job run results.



=head2 States => ArrayRef[Str|Undef]

An optional filter for job run states. Note that if this filter
contains multiple states, the resulting list will be grouped by the
state.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobRuns in L<Paws::EMRServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

