
package Paws::Neptunedata::ManagePropertygraphStatistics;
  use Moose;
  has Mode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mode');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ManagePropertygraphStatistics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/propertygraph/statistics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::ManagePropertygraphStatisticsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ManagePropertygraphStatistics - Arguments for method ManagePropertygraphStatistics on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ManagePropertygraphStatistics on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method ManagePropertygraphStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ManagePropertygraphStatistics.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $ManagePropertygraphStatisticsOutput =
      $neptune -db->ManagePropertygraphStatistics(
      Mode => 'disableAutoCompute',    # OPTIONAL
      );

    # Results:
    my $Payload = $ManagePropertygraphStatisticsOutput->Payload;
    my $Status  = $ManagePropertygraphStatisticsOutput->Status;

   # Returns a L<Paws::Neptunedata::ManagePropertygraphStatisticsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/ManagePropertygraphStatistics>

=head1 ATTRIBUTES


=head2 Mode => Str

The statistics generation mode. One of: C<DISABLE_AUTOCOMPUTE>,
C<ENABLE_AUTOCOMPUTE>, or C<REFRESH>, the last of which manually
triggers DFE statistics generation.

Valid values are: C<"disableAutoCompute">, C<"enableAutoCompute">, C<"refresh">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ManagePropertygraphStatistics in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

