
package Paws::InternetMonitor::GetQueryStatus;
  use Moose;
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MonitorName', required => 1);
  has QueryId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'QueryId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueryStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20210603/Monitors/{MonitorName}/Queries/{QueryId}/Status');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::InternetMonitor::GetQueryStatusOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::GetQueryStatus - Arguments for method GetQueryStatus on L<Paws::InternetMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQueryStatus on the
L<Amazon CloudWatch Internet Monitor|Paws::InternetMonitor> service. Use the attributes of this class
as arguments to method GetQueryStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQueryStatus.

=head1 SYNOPSIS

    my $internetmonitor = Paws->service('InternetMonitor');
    my $GetQueryStatusOutput = $internetmonitor->GetQueryStatus(
      MonitorName => 'MyResourceName',
      QueryId     => 'MyString',

    );

    # Results:
    my $Status = $GetQueryStatusOutput->Status;

    # Returns a L<Paws::InternetMonitor::GetQueryStatusOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/internetmonitor/GetQueryStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.



=head2 B<REQUIRED> QueryId => Str

The ID of the query that you want to return the status for. A
C<QueryId> is an internally-generated dentifier for a specific query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQueryStatus in L<Paws::InternetMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

