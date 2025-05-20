
package Paws::Deadline::UpdateMonitor;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has MonitorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'monitorId', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Subdomain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subdomain');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMonitor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/monitors/{monitorId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::UpdateMonitorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::UpdateMonitor - Arguments for method UpdateMonitor on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMonitor on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method UpdateMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMonitor.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $UpdateMonitorResponse = $deadline->UpdateMonitor(
      MonitorId   => 'MyMonitorId',
      DisplayName => 'MyResourceName',    # OPTIONAL
      RoleArn     => 'MyIamRoleArn',      # OPTIONAL
      Subdomain   => 'MySubdomain',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/UpdateMonitor>

=head1 ATTRIBUTES


=head2 DisplayName => Str

The new value to use for the monitor's display name.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> MonitorId => Str

The unique identifier of the monitor to update.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the new IAM role to use with the
monitor.



=head2 Subdomain => Str

The new value of the subdomain to use when forming the monitor URL.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMonitor in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

