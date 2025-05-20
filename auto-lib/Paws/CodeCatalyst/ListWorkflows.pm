
package Paws::CodeCatalyst::ListWorkflows;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);
  has SortBy => (is => 'ro', isa => 'ArrayRef[Paws::CodeCatalyst::WorkflowSortCriteria]', traits => ['NameInRequest'], request_name => 'sortBy');
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkflows');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{spaceName}/projects/{projectName}/workflows');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::ListWorkflowsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::ListWorkflows - Arguments for method ListWorkflows on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkflows on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method ListWorkflows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkflows.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $ListWorkflowsResponse = $codecatalyst->ListWorkflows(
      ProjectName => 'MyNameString',
      SpaceName   => 'MyListWorkflowsRequestSpaceNameString',
      MaxResults  => 1,                                          # OPTIONAL
      NextToken   => 'MyListWorkflowsRequestNextTokenString',    # OPTIONAL
      SortBy      => [
        {

        },
        ...
      ],                                                         # OPTIONAL
    );

    # Results:
    my $Items     = $ListWorkflowsResponse->Items;
    my $NextToken = $ListWorkflowsResponse->NextToken;

    # Returns a L<Paws::CodeCatalyst::ListWorkflowsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/ListWorkflows>

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



=head2 SortBy => ArrayRef[L<Paws::CodeCatalyst::WorkflowSortCriteria>]

Information used to sort the items in the returned list.



=head2 B<REQUIRED> SpaceName => Str

The name of the space.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkflows in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

