
package Paws::Neptunedata::ExecuteGremlinExplainQuery;
  use Moose;
  has GremlinQuery => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gremlin', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteGremlinExplainQuery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/gremlin/explain');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::ExecuteGremlinExplainQueryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ExecuteGremlinExplainQuery - Arguments for method ExecuteGremlinExplainQuery on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteGremlinExplainQuery on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method ExecuteGremlinExplainQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteGremlinExplainQuery.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $ExecuteGremlinExplainQueryOutput =
      $neptune -db->ExecuteGremlinExplainQuery(
      GremlinQuery => 'MyString',

      );

    # Results:
    my $Output = $ExecuteGremlinExplainQueryOutput->Output;

    # Returns a L<Paws::Neptunedata::ExecuteGremlinExplainQueryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/ExecuteGremlinExplainQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GremlinQuery => Str

The Gremlin explain query string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteGremlinExplainQuery in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

