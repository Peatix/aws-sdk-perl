
package Paws::InternetMonitor::ListHealthEvents;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'EndTime');
  has EventStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'EventStatus');
  has LinkedAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'LinkedAccountId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MonitorName', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'StartTime');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHealthEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20210603/Monitors/{MonitorName}/HealthEvents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::InternetMonitor::ListHealthEventsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::ListHealthEvents - Arguments for method ListHealthEvents on L<Paws::InternetMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHealthEvents on the
L<Amazon CloudWatch Internet Monitor|Paws::InternetMonitor> service. Use the attributes of this class
as arguments to method ListHealthEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHealthEvents.

=head1 SYNOPSIS

    my $internetmonitor = Paws->service('InternetMonitor');
    my $ListHealthEventsOutput = $internetmonitor->ListHealthEvents(
      MonitorName     => 'MyResourceName',
      EndTime         => '1970-01-01T01:00:00',    # OPTIONAL
      EventStatus     => 'ACTIVE',                 # OPTIONAL
      LinkedAccountId => 'MyAccountId',            # OPTIONAL
      MaxResults      => 1,                        # OPTIONAL
      NextToken       => 'MyString',               # OPTIONAL
      StartTime       => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $HealthEvents = $ListHealthEventsOutput->HealthEvents;
    my $NextToken    = $ListHealthEventsOutput->NextToken;

    # Returns a L<Paws::InternetMonitor::ListHealthEventsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/internetmonitor/ListHealthEvents>

=head1 ATTRIBUTES


=head2 EndTime => Str

The time when a health event ended. If the health event is still
ongoing, then the end time is not set.



=head2 EventStatus => Str

The status of a health event.

Valid values are: C<"ACTIVE">, C<"RESOLVED">

=head2 LinkedAccountId => Str

The account ID for an account that you've set up cross-account sharing
for in Amazon CloudWatch Internet Monitor. You configure cross-account
sharing by using Amazon CloudWatch Observability Access Manager. For
more information, see Internet Monitor cross-account observability
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html)
in the Amazon CloudWatch Internet Monitor User Guide.



=head2 MaxResults => Int

The number of health event objects that you want to return with this
call.



=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.



=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.



=head2 StartTime => Str

The time when a health event started.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHealthEvents in L<Paws::InternetMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

