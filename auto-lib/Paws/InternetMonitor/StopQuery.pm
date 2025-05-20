
package Paws::InternetMonitor::StopQuery;
  use Moose;
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MonitorName', required => 1);
  has QueryId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'QueryId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopQuery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20210603/Monitors/{MonitorName}/Queries/{QueryId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::InternetMonitor::StopQueryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::StopQuery - Arguments for method StopQuery on L<Paws::InternetMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopQuery on the
L<Amazon CloudWatch Internet Monitor|Paws::InternetMonitor> service. Use the attributes of this class
as arguments to method StopQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopQuery.

=head1 SYNOPSIS

    my $internetmonitor = Paws->service('InternetMonitor');
    my $StopQueryOutput = $internetmonitor->StopQuery(
      MonitorName => 'MyResourceName',
      QueryId     => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/internetmonitor/StopQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.



=head2 B<REQUIRED> QueryId => Str

The ID of the query that you want to stop. A C<QueryId> is an
internally-generated identifier for a specific query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopQuery in L<Paws::InternetMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

