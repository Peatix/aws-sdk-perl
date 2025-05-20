
package Paws::NeptuneGraph::ListQueries;
  use Moose;
  has GraphIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'graphIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults', required => 1);
  has State => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'state');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListQueries');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/queries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::ListQueriesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::ListQueries - Arguments for method ListQueries on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListQueries on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method ListQueries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListQueries.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $ListQueriesOutput = $neptune -graph->ListQueries(
      GraphIdentifier => 'MyGraphIdentifier',
      MaxResults      => 1,
      State           => 'ALL',                 # OPTIONAL
    );

    # Results:
    my $Queries = $ListQueriesOutput->Queries;

    # Returns a L<Paws::NeptuneGraph::ListQueriesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/ListQueries>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GraphIdentifier => Str

The unique identifier of the Neptune Analytics graph.



=head2 B<REQUIRED> MaxResults => Int

The maximum number of results to be fetched by the API.



=head2 State => Str

Filtered list of queries based on state.

Valid values are: C<"ALL">, C<"RUNNING">, C<"WAITING">, C<"CANCELLING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListQueries in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

