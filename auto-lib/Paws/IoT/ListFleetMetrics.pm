
package Paws::IoT::ListFleetMetrics;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFleetMetrics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/fleet-metrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListFleetMetricsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListFleetMetrics - Arguments for method ListFleetMetrics on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFleetMetrics on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListFleetMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFleetMetrics.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListFleetMetricsResponse = $iot->ListFleetMetrics(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $FleetMetrics = $ListFleetMetricsResponse->FleetMetrics;
    my $NextToken    = $ListFleetMetricsResponse->NextToken;

    # Returns a L<Paws::IoT::ListFleetMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListFleetMetrics>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in this operation.



=head2 NextToken => Str

To retrieve the next set of results, the C<nextToken> value from a
previous response; otherwise C<null> to receive the first set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFleetMetrics in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

