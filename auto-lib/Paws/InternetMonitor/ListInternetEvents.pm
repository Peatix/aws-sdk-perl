
package Paws::InternetMonitor::ListInternetEvents;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'EndTime');
  has EventStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'EventStatus');
  has EventType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'EventType');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'InternetEventMaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'StartTime');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInternetEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20210603/InternetEvents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::InternetMonitor::ListInternetEventsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::ListInternetEvents - Arguments for method ListInternetEvents on L<Paws::InternetMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInternetEvents on the
L<Amazon CloudWatch Internet Monitor|Paws::InternetMonitor> service. Use the attributes of this class
as arguments to method ListInternetEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInternetEvents.

=head1 SYNOPSIS

    my $internetmonitor = Paws->service('InternetMonitor');
    my $ListInternetEventsOutput = $internetmonitor->ListInternetEvents(
      EndTime     => '1970-01-01T01:00:00',    # OPTIONAL
      EventStatus => 'MyString',               # OPTIONAL
      EventType   => 'MyString',               # OPTIONAL
      MaxResults  => 1,                        # OPTIONAL
      NextToken   => 'MyString',               # OPTIONAL
      StartTime   => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $InternetEvents = $ListInternetEventsOutput->InternetEvents;
    my $NextToken      = $ListInternetEventsOutput->NextToken;

    # Returns a L<Paws::InternetMonitor::ListInternetEventsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/internetmonitor/ListInternetEvents>

=head1 ATTRIBUTES


=head2 EndTime => Str

The end time of the time window that you want to get a list of internet
events for.



=head2 EventStatus => Str

The status of an internet event.



=head2 EventType => Str

The type of network impairment.



=head2 MaxResults => Int

The number of query results that you want to return with this call.



=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.



=head2 StartTime => Str

The start time of the time window that you want to get a list of
internet events for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInternetEvents in L<Paws::InternetMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

