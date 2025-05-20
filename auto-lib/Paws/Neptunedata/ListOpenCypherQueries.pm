
package Paws::Neptunedata::ListOpenCypherQueries;
  use Moose;
  has IncludeWaiting => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeWaiting');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOpenCypherQueries');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/opencypher/status');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::ListOpenCypherQueriesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ListOpenCypherQueries - Arguments for method ListOpenCypherQueries on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOpenCypherQueries on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method ListOpenCypherQueries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOpenCypherQueries.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $ListOpenCypherQueriesOutput = $neptune -db->ListOpenCypherQueries(
      IncludeWaiting => 1,    # OPTIONAL
    );

    # Results:
    my $AcceptedQueryCount = $ListOpenCypherQueriesOutput->AcceptedQueryCount;
    my $Queries            = $ListOpenCypherQueriesOutput->Queries;
    my $RunningQueryCount  = $ListOpenCypherQueriesOutput->RunningQueryCount;

    # Returns a L<Paws::Neptunedata::ListOpenCypherQueriesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/ListOpenCypherQueries>

=head1 ATTRIBUTES


=head2 IncludeWaiting => Bool

When set to C<TRUE> and other parameters are not present, causes status
information to be returned for waiting queries as well as for running
queries.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOpenCypherQueries in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

