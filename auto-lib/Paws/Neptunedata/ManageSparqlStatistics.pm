
package Paws::Neptunedata::ManageSparqlStatistics;
  use Moose;
  has Mode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mode');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ManageSparqlStatistics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sparql/statistics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::ManageSparqlStatisticsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ManageSparqlStatistics - Arguments for method ManageSparqlStatistics on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ManageSparqlStatistics on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method ManageSparqlStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ManageSparqlStatistics.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $ManageSparqlStatisticsOutput = $neptune -db->ManageSparqlStatistics(
      Mode => 'disableAutoCompute',    # OPTIONAL
    );

    # Results:
    my $Payload = $ManageSparqlStatisticsOutput->Payload;
    my $Status  = $ManageSparqlStatisticsOutput->Status;

    # Returns a L<Paws::Neptunedata::ManageSparqlStatisticsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/ManageSparqlStatistics>

=head1 ATTRIBUTES


=head2 Mode => Str

The statistics generation mode. One of: C<DISABLE_AUTOCOMPUTE>,
C<ENABLE_AUTOCOMPUTE>, or C<REFRESH>, the last of which manually
triggers DFE statistics generation.

Valid values are: C<"disableAutoCompute">, C<"enableAutoCompute">, C<"refresh">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ManageSparqlStatistics in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

