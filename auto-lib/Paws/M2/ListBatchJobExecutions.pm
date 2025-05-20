
package Paws::M2::ListBatchJobExecutions;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ExecutionIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'executionIds');
  has JobName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'jobName');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has StartedAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startedAfter');
  has StartedBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startedBefore');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBatchJobExecutions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/batch-job-executions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::ListBatchJobExecutionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::ListBatchJobExecutions - Arguments for method ListBatchJobExecutions on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBatchJobExecutions on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method ListBatchJobExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBatchJobExecutions.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $ListBatchJobExecutionsResponse = $m2->ListBatchJobExecutions(
      ApplicationId => 'MyIdentifier',
      ExecutionIds  => [ 'MyIdentifier', ... ],    # OPTIONAL
      JobName       => 'MyString100',              # OPTIONAL
      MaxResults    => 1,                          # OPTIONAL
      NextToken     => 'MyNextToken',              # OPTIONAL
      StartedAfter  => '1970-01-01T01:00:00',      # OPTIONAL
      StartedBefore => '1970-01-01T01:00:00',      # OPTIONAL
      Status        => 'Submitting',               # OPTIONAL
    );

    # Results:
    my $BatchJobExecutions =
      $ListBatchJobExecutionsResponse->BatchJobExecutions;
    my $NextToken = $ListBatchJobExecutionsResponse->NextToken;

    # Returns a L<Paws::M2::ListBatchJobExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/ListBatchJobExecutions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the application.



=head2 ExecutionIds => ArrayRef[Str|Undef]

The unique identifier of each batch job execution.



=head2 JobName => Str

The name of each batch job execution.



=head2 MaxResults => Int

The maximum number of batch job executions to return.



=head2 NextToken => Str

A pagination token to control the number of batch job executions
displayed in the list.



=head2 StartedAfter => Str

The time after which the batch job executions started.



=head2 StartedBefore => Str

The time before the batch job executions started.



=head2 Status => Str

The status of the batch job executions.

Valid values are: C<"Submitting">, C<"Holding">, C<"Dispatching">, C<"Running">, C<"Cancelling">, C<"Cancelled">, C<"Succeeded">, C<"Failed">, C<"Purged">, C<"Succeeded With Warning">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBatchJobExecutions in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

