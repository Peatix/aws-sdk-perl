
package Paws::RUM::DeleteRumMetricsDestination;
  use Moose;
  has AppMonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AppMonitorName', required => 1);
  has Destination => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'destination', required => 1);
  has DestinationArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'destinationArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRumMetricsDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rummetrics/{AppMonitorName}/metricsdestination');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RUM::DeleteRumMetricsDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::DeleteRumMetricsDestination - Arguments for method DeleteRumMetricsDestination on L<Paws::RUM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRumMetricsDestination on the
L<CloudWatch RUM|Paws::RUM> service. Use the attributes of this class
as arguments to method DeleteRumMetricsDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRumMetricsDestination.

=head1 SYNOPSIS

    my $rum = Paws->service('RUM');
    my $DeleteRumMetricsDestinationResponse = $rum->DeleteRumMetricsDestination(
      AppMonitorName => 'MyAppMonitorName',
      Destination    => 'CloudWatch',
      DestinationArn => 'MyDestinationArn',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rum/DeleteRumMetricsDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppMonitorName => Str

The name of the app monitor that is sending metrics to the destination
that you want to delete.



=head2 B<REQUIRED> Destination => Str

The type of destination to delete. Valid values are C<CloudWatch> and
C<Evidently>.

Valid values are: C<"CloudWatch">, C<"Evidently">

=head2 DestinationArn => Str

This parameter is required if C<Destination> is C<Evidently>. If
C<Destination> is C<CloudWatch>, do not use this parameter. This
parameter specifies the ARN of the Evidently experiment that
corresponds to the destination to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRumMetricsDestination in L<Paws::RUM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

