
package Paws::Omics::ListWorkflowVersions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has StartingToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startingToken');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workflowId', required => 1);
  has WorkflowOwnerId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'workflowOwnerId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkflowVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workflow/{workflowId}/version');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::ListWorkflowVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListWorkflowVersions - Arguments for method ListWorkflowVersions on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkflowVersions on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method ListWorkflowVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkflowVersions.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $ListWorkflowVersionsResponse = $omics->ListWorkflowVersions(
      WorkflowId      => 'MyWorkflowId',
      MaxResults      => 1,                               # OPTIONAL
      StartingToken   => 'MyWorkflowVersionListToken',    # OPTIONAL
      Type            => 'PRIVATE',                       # OPTIONAL
      WorkflowOwnerId => 'MyWorkflowOwnerId',             # OPTIONAL
    );

    # Results:
    my $Items     = $ListWorkflowVersionsResponse->Items;
    my $NextToken = $ListWorkflowVersionsResponse->NextToken;

    # Returns a L<Paws::Omics::ListWorkflowVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/ListWorkflowVersions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of workflows to return in one page of results.



=head2 StartingToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.



=head2 Type => Str

The workflow type.

Valid values are: C<"PRIVATE">, C<"READY2RUN">

=head2 B<REQUIRED> WorkflowId => Str

The workflow's ID.



=head2 WorkflowOwnerId => Str

Amazon Web Services Id of the owner of the workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkflowVersions in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

