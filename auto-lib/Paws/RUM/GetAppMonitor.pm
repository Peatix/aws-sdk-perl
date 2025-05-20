
package Paws::RUM::GetAppMonitor;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAppMonitor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appmonitor/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RUM::GetAppMonitorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::GetAppMonitor - Arguments for method GetAppMonitor on L<Paws::RUM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAppMonitor on the
L<CloudWatch RUM|Paws::RUM> service. Use the attributes of this class
as arguments to method GetAppMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAppMonitor.

=head1 SYNOPSIS

    my $rum = Paws->service('RUM');
    my $GetAppMonitorResponse = $rum->GetAppMonitor(
      Name => 'MyAppMonitorName',

    );

    # Results:
    my $AppMonitor = $GetAppMonitorResponse->AppMonitor;

    # Returns a L<Paws::RUM::GetAppMonitorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rum/GetAppMonitor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The app monitor to retrieve information for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAppMonitor in L<Paws::RUM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

