
package Paws::InternetMonitor::GetInternetEvent;
  use Moose;
  has EventId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EventId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInternetEvent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20210603/InternetEvents/{EventId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::InternetMonitor::GetInternetEventOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::GetInternetEvent - Arguments for method GetInternetEvent on L<Paws::InternetMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInternetEvent on the
L<Amazon CloudWatch Internet Monitor|Paws::InternetMonitor> service. Use the attributes of this class
as arguments to method GetInternetEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInternetEvent.

=head1 SYNOPSIS

    my $internetmonitor = Paws->service('InternetMonitor');
    my $GetInternetEventOutput = $internetmonitor->GetInternetEvent(
      EventId => 'MyInternetEventId',

    );

    # Results:
    my $ClientLocation = $GetInternetEventOutput->ClientLocation;
    my $EndedAt        = $GetInternetEventOutput->EndedAt;
    my $EventArn       = $GetInternetEventOutput->EventArn;
    my $EventId        = $GetInternetEventOutput->EventId;
    my $EventStatus    = $GetInternetEventOutput->EventStatus;
    my $EventType      = $GetInternetEventOutput->EventType;
    my $StartedAt      = $GetInternetEventOutput->StartedAt;

    # Returns a L<Paws::InternetMonitor::GetInternetEventOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/internetmonitor/GetInternetEvent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventId => Str

The C<EventId> of the internet event to return information for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInternetEvent in L<Paws::InternetMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

