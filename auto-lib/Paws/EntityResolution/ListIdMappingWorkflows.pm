
package Paws::EntityResolution::ListIdMappingWorkflows;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdMappingWorkflows');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/idmappingworkflows');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::ListIdMappingWorkflowsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::ListIdMappingWorkflows - Arguments for method ListIdMappingWorkflows on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIdMappingWorkflows on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method ListIdMappingWorkflows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIdMappingWorkflows.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $ListIdMappingWorkflowsOutput =
      $entityresolution->ListIdMappingWorkflows(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken         = $ListIdMappingWorkflowsOutput->NextToken;
    my $WorkflowSummaries = $ListIdMappingWorkflowsOutput->WorkflowSummaries;

    # Returns a L<Paws::EntityResolution::ListIdMappingWorkflowsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/ListIdMappingWorkflows>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of objects returned per page.



=head2 NextToken => Str

The pagination token from the previous API call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIdMappingWorkflows in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

