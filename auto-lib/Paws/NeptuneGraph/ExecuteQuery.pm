
package Paws::NeptuneGraph::ExecuteQuery;
  use Moose;
  has ExplainMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'explain');
  has GraphIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'graphIdentifier', required => 1);
  has Language => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'language', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::NeptuneGraph::DocumentValuedMap', traits => ['NameInRequest'], request_name => 'parameters');
  has PlanCache => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'planCache');
  has QueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'query', required => 1);
  has QueryTimeoutMilliseconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'queryTimeoutMilliseconds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteQuery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/queries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::ExecuteQueryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::ExecuteQuery - Arguments for method ExecuteQuery on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteQuery on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method ExecuteQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteQuery.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $ExecuteQueryOutput = $neptune -graph->ExecuteQuery(
      GraphIdentifier => 'MyGraphIdentifier',
      Language        => 'OPEN_CYPHER',
      QueryString     => 'MyString',
      ExplainMode     => 'STATIC',              # OPTIONAL
      Parameters      => {
        'MyString' => {

        },
      },                                        # OPTIONAL
      PlanCache                => 'ENABLED',    # OPTIONAL
      QueryTimeoutMilliseconds => 1,            # OPTIONAL
    );

    # Results:
    my $Payload = $ExecuteQueryOutput->Payload;

    # Returns a L<Paws::NeptuneGraph::ExecuteQueryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/ExecuteQuery>

=head1 ATTRIBUTES


=head2 ExplainMode => Str

The explain mode parameter returns a query explain instead of the
actual query results. A query explain can be used to gather insights
about the query execution such as planning decisions, time spent on
each operator, solutions flowing etc.

Valid values are: C<"STATIC">, C<"DETAILS">

=head2 B<REQUIRED> GraphIdentifier => Str

The unique identifier of the Neptune Analytics graph.



=head2 B<REQUIRED> Language => Str

The query language the query is written in. Currently only openCypher
is supported.

Valid values are: C<"OPEN_CYPHER">

=head2 Parameters => L<Paws::NeptuneGraph::DocumentValuedMap>

The data parameters the query can use in JSON format. For example:
{"name": "john", "age": 20}. (optional)



=head2 PlanCache => Str

Query plan cache is a feature that saves the query plan and reuses it
on successive executions of the same query. This reduces query latency,
and works for both C<READ> and C<UPDATE> queries. The plan cache is an
LRU cache with a 5 minute TTL and a capacity of 1000.

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"AUTO">

=head2 B<REQUIRED> QueryString => Str

The query string to be executed.



=head2 QueryTimeoutMilliseconds => Int

Specifies the query timeout duration, in milliseconds. (optional)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteQuery in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

