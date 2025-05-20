
package Paws::Omics::ListWorkflows;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has StartingToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startingToken');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkflows');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workflow');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::ListWorkflowsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListWorkflows - Arguments for method ListWorkflows on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkflows on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method ListWorkflows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkflows.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $ListWorkflowsResponse = $omics->ListWorkflows(
      MaxResults    => 1,                        # OPTIONAL
      Name          => 'MyWorkflowName',         # OPTIONAL
      StartingToken => 'MyWorkflowListToken',    # OPTIONAL
      Type          => 'PRIVATE',                # OPTIONAL
    );

    # Results:
    my $Items     = $ListWorkflowsResponse->Items;
    my $NextToken = $ListWorkflowsResponse->NextToken;

    # Returns a L<Paws::Omics::ListWorkflowsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/ListWorkflows>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of workflows to return in one page of results.



=head2 Name => Str

Filter the list by workflow name.



=head2 StartingToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.



=head2 Type => Str

Filter the list by workflow type.

Valid values are: C<"PRIVATE">, C<"READY2RUN">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkflows in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

