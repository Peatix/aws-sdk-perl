
package Paws::Neptunedata::ExecuteGremlinQuery;
  use Moose;
  has GremlinQuery => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gremlin', required => 1);
  has Serializer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'accept');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteGremlinQuery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/gremlin');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::ExecuteGremlinQueryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ExecuteGremlinQuery - Arguments for method ExecuteGremlinQuery on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteGremlinQuery on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method ExecuteGremlinQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteGremlinQuery.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $ExecuteGremlinQueryOutput = $neptune -db->ExecuteGremlinQuery(
      GremlinQuery => 'MyString',
      Serializer   => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Meta      = $ExecuteGremlinQueryOutput->Meta;
    my $RequestId = $ExecuteGremlinQueryOutput->RequestId;
    my $Result    = $ExecuteGremlinQueryOutput->Result;
    my $Status    = $ExecuteGremlinQueryOutput->Status;

    # Returns a L<Paws::Neptunedata::ExecuteGremlinQueryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/ExecuteGremlinQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GremlinQuery => Str

Using this API, you can run Gremlin queries in string format much as
you can using the HTTP endpoint. The interface is compatible with
whatever Gremlin version your DB cluster is using (see the Tinkerpop
client section
(https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-gremlin-client.html#best-practices-gremlin-java-latest)
to determine which Gremlin releases your engine version supports).



=head2 Serializer => Str

If non-null, the query results are returned in a serialized response
message in the format specified by this parameter. See the GraphSON
(https://tinkerpop.apache.org/docs/current/reference/#_graphson)
section in the TinkerPop documentation for a list of the formats that
are currently supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteGremlinQuery in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

