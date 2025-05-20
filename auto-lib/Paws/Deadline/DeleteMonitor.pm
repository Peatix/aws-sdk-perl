
package Paws::Deadline::DeleteMonitor;
  use Moose;
  has MonitorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'monitorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMonitor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/monitors/{monitorId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::DeleteMonitorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::DeleteMonitor - Arguments for method DeleteMonitor on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMonitor on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method DeleteMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMonitor.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $DeleteMonitorResponse = $deadline->DeleteMonitor(
      MonitorId => 'MyMonitorId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/DeleteMonitor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitorId => Str

The unique identifier of the monitor to delete. This ID is returned by
the C<CreateMonitor> operation, and is included in the response to the
C<GetMonitor> operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMonitor in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

