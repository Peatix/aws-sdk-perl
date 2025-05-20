
package Paws::RUM::ListRumMetricsDestinations;
  use Moose;
  has AppMonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AppMonitorName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRumMetricsDestinations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rummetrics/{AppMonitorName}/metricsdestination');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RUM::ListRumMetricsDestinationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::ListRumMetricsDestinations - Arguments for method ListRumMetricsDestinations on L<Paws::RUM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRumMetricsDestinations on the
L<CloudWatch RUM|Paws::RUM> service. Use the attributes of this class
as arguments to method ListRumMetricsDestinations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRumMetricsDestinations.

=head1 SYNOPSIS

    my $rum = Paws->service('RUM');
    my $ListRumMetricsDestinationsResponse = $rum->ListRumMetricsDestinations(
      AppMonitorName => 'MyAppMonitorName',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyString',           # OPTIONAL
    );

    # Results:
    my $Destinations = $ListRumMetricsDestinationsResponse->Destinations;
    my $NextToken    = $ListRumMetricsDestinationsResponse->NextToken;

    # Returns a L<Paws::RUM::ListRumMetricsDestinationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rum/ListRumMetricsDestinations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppMonitorName => Str

The name of the app monitor associated with the destinations that you
want to retrieve.



=head2 MaxResults => Int

The maximum number of results to return in one operation. The default
is 50. The maximum that you can specify is 100.

To retrieve the remaining results, make another call with the returned
C<NextToken> value.



=head2 NextToken => Str

Use the token returned by the previous operation to request the next
page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRumMetricsDestinations in L<Paws::RUM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

