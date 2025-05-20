
package Paws::M2::UpdateEnvironment;
  use Moose;
  has ApplyDuringMaintenanceWindow => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'applyDuringMaintenanceWindow');
  has DesiredCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'desiredCapacity');
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineVersion');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has ForceUpdate => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'forceUpdate');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'preferredMaintenanceWindow');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{environmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::UpdateEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::UpdateEnvironment - Arguments for method UpdateEnvironment on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnvironment on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method UpdateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnvironment.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $UpdateEnvironmentResponse = $m2->UpdateEnvironment(
      EnvironmentId                => 'MyIdentifier',
      ApplyDuringMaintenanceWindow => 1,                    # OPTIONAL
      DesiredCapacity              => 1,                    # OPTIONAL
      EngineVersion                => 'MyEngineVersion',    # OPTIONAL
      ForceUpdate                  => 1,                    # OPTIONAL
      InstanceType                 => 'MyString20',         # OPTIONAL
      PreferredMaintenanceWindow   => 'MyString',           # OPTIONAL
    );

    # Results:
    my $EnvironmentId = $UpdateEnvironmentResponse->EnvironmentId;

    # Returns a L<Paws::M2::UpdateEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/UpdateEnvironment>

=head1 ATTRIBUTES


=head2 ApplyDuringMaintenanceWindow => Bool

Indicates whether to update the runtime environment during the
maintenance window. The default is false. Currently, Amazon Web
Services Mainframe Modernization accepts the C<engineVersion> parameter
only if C<applyDuringMaintenanceWindow> is true. If any parameter other
than C<engineVersion> is provided in C<UpdateEnvironmentRequest>, it
will fail if C<applyDuringMaintenanceWindow> is set to true.



=head2 DesiredCapacity => Int

The desired capacity for the runtime environment to update. The minimum
possible value is 0 and the maximum is 100.



=head2 EngineVersion => Str

The version of the runtime engine for the runtime environment.



=head2 B<REQUIRED> EnvironmentId => Str

The unique identifier of the runtime environment that you want to
update.



=head2 ForceUpdate => Bool

Forces the updates on the environment. This option is needed if the
applications in the environment are not stopped or if there are ongoing
application-related activities in the environment.

If you use this option, be aware that it could lead to data corruption
in the applications, and that you might need to perform repair and
recovery procedures for the applications.

This option is not needed if the attribute being updated is
C<preferredMaintenanceWindow>.



=head2 InstanceType => Str

The instance type for the runtime environment to update.



=head2 PreferredMaintenanceWindow => Str

Configures the maintenance window that you want for the runtime
environment. The maintenance window must have the format
C<ddd:hh24:mi-ddd:hh24:mi> and must be less than 24 hours. The
following two examples are valid maintenance windows:
C<sun:23:45-mon:00:15> or C<sat:01:00-sat:03:00>.

If you do not provide a value, a random system-generated value will be
assigned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnvironment in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

