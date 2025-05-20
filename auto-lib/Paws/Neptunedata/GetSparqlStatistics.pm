
package Paws::Neptunedata::GetSparqlStatistics;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSparqlStatistics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sparql/statistics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::GetSparqlStatisticsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetSparqlStatistics - Arguments for method GetSparqlStatistics on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSparqlStatistics on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method GetSparqlStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSparqlStatistics.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $GetSparqlStatisticsOutput = $neptune -db->GetSparqlStatistics();

    # Results:
    my $Payload = $GetSparqlStatisticsOutput->Payload;
    my $Status  = $GetSparqlStatisticsOutput->Status;

    # Returns a L<Paws::Neptunedata::GetSparqlStatisticsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/GetSparqlStatistics>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSparqlStatistics in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

