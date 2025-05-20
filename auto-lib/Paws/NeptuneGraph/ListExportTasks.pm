
package Paws::NeptuneGraph::ListExportTasks;
  use Moose;
  has GraphIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'graphIdentifier');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExportTasks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/exporttasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::ListExportTasksOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::ListExportTasks - Arguments for method ListExportTasks on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExportTasks on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method ListExportTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExportTasks.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $ListExportTasksOutput = $neptune -graph->ListExportTasks(
      GraphIdentifier => 'MyGraphIdentifier',    # OPTIONAL
      MaxResults      => 1,                      # OPTIONAL
      NextToken       => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListExportTasksOutput->NextToken;
    my $Tasks     = $ListExportTasksOutput->Tasks;

    # Returns a L<Paws::NeptuneGraph::ListExportTasksOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/ListExportTasks>

=head1 ATTRIBUTES


=head2 GraphIdentifier => Str

The unique identifier of the Neptune Analytics graph.



=head2 MaxResults => Int

The maximum number of export tasks to return.



=head2 NextToken => Str

Pagination token used to paginate input.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExportTasks in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

