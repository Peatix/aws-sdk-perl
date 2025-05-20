
package Paws::InternetMonitor::GetHealthEvent;
  use Moose;
  has EventId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EventId', required => 1);
  has LinkedAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'LinkedAccountId');
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MonitorName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHealthEvent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20210603/Monitors/{MonitorName}/HealthEvents/{EventId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::InternetMonitor::GetHealthEventOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::GetHealthEvent - Arguments for method GetHealthEvent on L<Paws::InternetMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetHealthEvent on the
L<Amazon CloudWatch Internet Monitor|Paws::InternetMonitor> service. Use the attributes of this class
as arguments to method GetHealthEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetHealthEvent.

=head1 SYNOPSIS

    my $internetmonitor = Paws->service('InternetMonitor');
    my $GetHealthEventOutput = $internetmonitor->GetHealthEvent(
      EventId         => 'MyHealthEventName',
      MonitorName     => 'MyResourceName',
      LinkedAccountId => 'MyAccountId',         # OPTIONAL
    );

    # Results:
    my $CreatedAt            = $GetHealthEventOutput->CreatedAt;
    my $EndedAt              = $GetHealthEventOutput->EndedAt;
    my $EventArn             = $GetHealthEventOutput->EventArn;
    my $EventId              = $GetHealthEventOutput->EventId;
    my $HealthScoreThreshold = $GetHealthEventOutput->HealthScoreThreshold;
    my $ImpactType           = $GetHealthEventOutput->ImpactType;
    my $ImpactedLocations    = $GetHealthEventOutput->ImpactedLocations;
    my $LastUpdatedAt        = $GetHealthEventOutput->LastUpdatedAt;
    my $PercentOfTotalTrafficImpacted =
      $GetHealthEventOutput->PercentOfTotalTrafficImpacted;
    my $StartedAt = $GetHealthEventOutput->StartedAt;
    my $Status    = $GetHealthEventOutput->Status;

    # Returns a L<Paws::InternetMonitor::GetHealthEventOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/internetmonitor/GetHealthEvent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventId => Str

The internally-generated identifier of a health event. Because
C<EventID> contains the forward slash (E<ldquo>/E<rdquo>) character,
you must URL-encode the C<EventID> field in the request URL.



=head2 LinkedAccountId => Str

The account ID for an account that you've set up cross-account sharing
for in Amazon CloudWatch Internet Monitor. You configure cross-account
sharing by using Amazon CloudWatch Observability Access Manager. For
more information, see Internet Monitor cross-account observability
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html)
in the Amazon CloudWatch Internet Monitor User Guide.



=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetHealthEvent in L<Paws::InternetMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

