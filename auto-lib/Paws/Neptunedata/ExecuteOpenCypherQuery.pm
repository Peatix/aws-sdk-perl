
package Paws::Neptunedata::ExecuteOpenCypherQuery;
  use Moose;
  has OpenCypherQuery => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'query', required => 1);
  has Parameters => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteOpenCypherQuery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/opencypher');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::ExecuteOpenCypherQueryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ExecuteOpenCypherQuery - Arguments for method ExecuteOpenCypherQuery on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteOpenCypherQuery on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method ExecuteOpenCypherQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteOpenCypherQuery.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $ExecuteOpenCypherQueryOutput = $neptune -db->ExecuteOpenCypherQuery(
      OpenCypherQuery => 'MyString',
      Parameters      => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Results = $ExecuteOpenCypherQueryOutput->Results;

    # Returns a L<Paws::Neptunedata::ExecuteOpenCypherQueryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/ExecuteOpenCypherQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OpenCypherQuery => Str

The openCypher query string to be executed.



=head2 Parameters => Str

The openCypher query parameters for query execution. See Examples of
openCypher parameterized queries
(https://docs.aws.amazon.com/neptune/latest/userguide/opencypher-parameterized-queries.html)
for more information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteOpenCypherQuery in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

