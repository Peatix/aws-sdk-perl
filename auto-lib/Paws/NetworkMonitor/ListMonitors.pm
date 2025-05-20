
package Paws::NetworkMonitor::ListMonitors;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has State => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'state');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMonitors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/monitors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkMonitor::ListMonitorsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkMonitor::ListMonitors - Arguments for method ListMonitors on L<Paws::NetworkMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMonitors on the
L<Amazon CloudWatch Network Monitor|Paws::NetworkMonitor> service. Use the attributes of this class
as arguments to method ListMonitors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMonitors.

=head1 SYNOPSIS

    my $networkmonitor = Paws->service('NetworkMonitor');
    my $ListMonitorsOutput = $networkmonitor->ListMonitors(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      State      => 'MyString',             # OPTIONAL
    );

    # Results:
    my $Monitors  = $ListMonitorsOutput->Monitors;
    my $NextToken = $ListMonitorsOutput->NextToken;

    # Returns a L<Paws::NetworkMonitor::ListMonitorsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmonitor/ListMonitors>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.

If C<MaxResults> is given a value larger than 100, only 100 results are
returned.



=head2 NextToken => Str

The token for the next page of results.



=head2 State => Str

The list of all monitors and their states.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMonitors in L<Paws::NetworkMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

