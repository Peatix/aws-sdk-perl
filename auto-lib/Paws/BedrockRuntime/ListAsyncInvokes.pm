
package Paws::BedrockRuntime::ListAsyncInvokes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');
  has StatusEquals => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'statusEquals');
  has SubmitTimeAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'submitTimeAfter');
  has SubmitTimeBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'submitTimeBefore');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAsyncInvokes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/async-invoke');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockRuntime::ListAsyncInvokesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::ListAsyncInvokes - Arguments for method ListAsyncInvokes on L<Paws::BedrockRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAsyncInvokes on the
L<Amazon Bedrock Runtime|Paws::BedrockRuntime> service. Use the attributes of this class
as arguments to method ListAsyncInvokes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAsyncInvokes.

=head1 SYNOPSIS

    my $bedrock-runtime = Paws->service('BedrockRuntime');
    my $ListAsyncInvokesResponse = $bedrock -runtime->ListAsyncInvokes(
      MaxResults       => 1,                        # OPTIONAL
      NextToken        => 'MyPaginationToken',      # OPTIONAL
      SortBy           => 'SubmissionTime',         # OPTIONAL
      SortOrder        => 'Ascending',              # OPTIONAL
      StatusEquals     => 'InProgress',             # OPTIONAL
      SubmitTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      SubmitTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $AsyncInvokeSummaries = $ListAsyncInvokesResponse->AsyncInvokeSummaries;
    my $NextToken            = $ListAsyncInvokesResponse->NextToken;

    # Returns a L<Paws::BedrockRuntime::ListAsyncInvokesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime/ListAsyncInvokes>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of invocations to return in one page of results.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.



=head2 SortBy => Str

How to sort the response.

Valid values are: C<"SubmissionTime">

=head2 SortOrder => Str

The sorting order for the response.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

Filter invocations by status.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">

=head2 SubmitTimeAfter => Str

Include invocations submitted after this time.



=head2 SubmitTimeBefore => Str

Include invocations submitted before this time.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAsyncInvokes in L<Paws::BedrockRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

