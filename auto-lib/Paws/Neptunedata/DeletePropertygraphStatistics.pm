
package Paws::Neptunedata::DeletePropertygraphStatistics;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePropertygraphStatistics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/propertygraph/statistics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::DeletePropertygraphStatisticsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::DeletePropertygraphStatistics - Arguments for method DeletePropertygraphStatistics on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePropertygraphStatistics on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method DeletePropertygraphStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePropertygraphStatistics.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $DeletePropertygraphStatisticsOutput =
      $neptune -db->DeletePropertygraphStatistics();

    # Results:
    my $Payload    = $DeletePropertygraphStatisticsOutput->Payload;
    my $Status     = $DeletePropertygraphStatisticsOutput->Status;
    my $StatusCode = $DeletePropertygraphStatisticsOutput->StatusCode;

   # Returns a L<Paws::Neptunedata::DeletePropertygraphStatisticsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/DeletePropertygraphStatistics>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePropertygraphStatistics in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

