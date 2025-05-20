
package Paws::Neptunedata::GetOpenCypherQueryStatus;
  use Moose;
  has QueryId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queryId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOpenCypherQueryStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/opencypher/status/{queryId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::GetOpenCypherQueryStatusOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetOpenCypherQueryStatus - Arguments for method GetOpenCypherQueryStatus on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOpenCypherQueryStatus on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method GetOpenCypherQueryStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOpenCypherQueryStatus.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $GetOpenCypherQueryStatusOutput = $neptune -db->GetOpenCypherQueryStatus(
      QueryId => 'MyString',

    );

    # Results:
    my $QueryEvalStats = $GetOpenCypherQueryStatusOutput->QueryEvalStats;
    my $QueryId        = $GetOpenCypherQueryStatusOutput->QueryId;
    my $QueryString    = $GetOpenCypherQueryStatusOutput->QueryString;

    # Returns a L<Paws::Neptunedata::GetOpenCypherQueryStatusOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/GetOpenCypherQueryStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryId => Str

The unique ID of the openCypher query for which to retrieve the query
status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOpenCypherQueryStatus in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

