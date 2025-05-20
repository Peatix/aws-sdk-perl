
package Paws::Neptunedata::GetRDFGraphSummary;
  use Moose;
  has Mode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'mode');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRDFGraphSummary');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rdf/statistics/summary');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::GetRDFGraphSummaryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetRDFGraphSummary - Arguments for method GetRDFGraphSummary on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRDFGraphSummary on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method GetRDFGraphSummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRDFGraphSummary.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $GetRDFGraphSummaryOutput = $neptune -db->GetRDFGraphSummary(
      Mode => 'basic',    # OPTIONAL
    );

    # Results:
    my $Payload    = $GetRDFGraphSummaryOutput->Payload;
    my $StatusCode = $GetRDFGraphSummaryOutput->StatusCode;

    # Returns a L<Paws::Neptunedata::GetRDFGraphSummaryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/GetRDFGraphSummary>

=head1 ATTRIBUTES


=head2 Mode => Str

Mode can take one of two values: C<BASIC> (the default), and
C<DETAILED>.

Valid values are: C<"basic">, C<"detailed">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRDFGraphSummary in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

