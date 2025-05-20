
package Paws::InternetMonitor::ListMonitors;
  use Moose;
  has IncludeLinkedAccounts => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'IncludeLinkedAccounts');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has MonitorStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'MonitorStatus');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMonitors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20210603/Monitors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::InternetMonitor::ListMonitorsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::ListMonitors - Arguments for method ListMonitors on L<Paws::InternetMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMonitors on the
L<Amazon CloudWatch Internet Monitor|Paws::InternetMonitor> service. Use the attributes of this class
as arguments to method ListMonitors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMonitors.

=head1 SYNOPSIS

    my $internetmonitor = Paws->service('InternetMonitor');
    my $ListMonitorsOutput = $internetmonitor->ListMonitors(
      IncludeLinkedAccounts => 1,             # OPTIONAL
      MaxResults            => 1,             # OPTIONAL
      MonitorStatus         => 'MyString',    # OPTIONAL
      NextToken             => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Monitors  = $ListMonitorsOutput->Monitors;
    my $NextToken = $ListMonitorsOutput->NextToken;

    # Returns a L<Paws::InternetMonitor::ListMonitorsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/internetmonitor/ListMonitors>

=head1 ATTRIBUTES


=head2 IncludeLinkedAccounts => Bool

A boolean option that you can set to C<TRUE> to include monitors for
linked accounts in a list of monitors, when you've set up cross-account
sharing in Amazon CloudWatch Internet Monitor. You configure
cross-account sharing by using Amazon CloudWatch Observability Access
Manager. For more information, see Internet Monitor cross-account
observability
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cwim-cross-account.html)
in the Amazon CloudWatch Internet Monitor User Guide.



=head2 MaxResults => Int

The number of monitor objects that you want to return with this call.



=head2 MonitorStatus => Str

The status of a monitor. This includes the status of the data
processing for the monitor and the status of the monitor itself.

For information about the statuses for a monitor, see Monitor
(https://docs.aws.amazon.com/internet-monitor/latest/api/API_Monitor.html).



=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMonitors in L<Paws::InternetMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

