
package Paws::NeptuneGraph::ListGraphs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGraphs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/graphs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::ListGraphsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::ListGraphs - Arguments for method ListGraphs on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGraphs on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method ListGraphs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGraphs.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $ListGraphsOutput = $neptune -graph->ListGraphs(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Graphs    = $ListGraphsOutput->Graphs;
    my $NextToken = $ListGraphsOutput->NextToken;

    # Returns a L<Paws::NeptuneGraph::ListGraphsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/ListGraphs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The total number of records to return in the command's output.

If the total number of records available is more than the value
specified, C<nextToken> is provided in the command's output. To resume
pagination, provide the C<nextToken> output value in the C<nextToken>
argument of a subsequent command. Do not use the C<nextToken> response
element directly outside of the Amazon CLI.



=head2 NextToken => Str

Pagination token used to paginate output.

When this value is provided as input, the service returns results from
where the previous response left off. When this value is present in
output, it indicates that there are more results to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGraphs in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

