
package Paws::CodeCatalyst::ListWorkflowRuns;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);
  has SortBy => (is => 'ro', isa => 'ArrayRef[Paws::CodeCatalyst::WorkflowRunSortCriteria]', traits => ['NameInRequest'], request_name => 'sortBy');
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceName', required => 1);
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'workflowId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkflowRuns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{spaceName}/projects/{projectName}/workflowRuns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::ListWorkflowRunsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::ListWorkflowRuns - Arguments for method ListWorkflowRuns on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkflowRuns on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method ListWorkflowRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkflowRuns.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $ListWorkflowRunsResponse = $codecatalyst->ListWorkflowRuns(
      ProjectName => 'MyListWorkflowRunsRequestProjectNameString',
      SpaceName   => 'MyNameString',
      MaxResults  => 1,                                              # OPTIONAL
      NextToken   => 'MyListWorkflowRunsRequestNextTokenString',     # OPTIONAL
      SortBy      => [
        {

        },
        ...
      ],                                                             # OPTIONAL
      WorkflowId => 'MyUuid',                                        # OPTIONAL
    );

    # Results:
    my $Items     = $ListWorkflowRunsResponse->Items;
    my $NextToken = $ListWorkflowRunsResponse->NextToken;

    # Returns a L<Paws::CodeCatalyst::ListWorkflowRunsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/ListWorkflowRuns>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to show in a single call to this API. If
the number of results is larger than the number you specified, the
response will include a C<NextToken> element, which you can use to
obtain additional results.



=head2 NextToken => Str

A token returned from a call to this API to indicate the next batch of
results to return, if any.



=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.



=head2 SortBy => ArrayRef[L<Paws::CodeCatalyst::WorkflowRunSortCriteria>]

Information used to sort the items in the returned list.



=head2 B<REQUIRED> SpaceName => Str

The name of the space.



=head2 WorkflowId => Str

The ID of the workflow. To retrieve a list of workflow IDs, use
ListWorkflows.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkflowRuns in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

