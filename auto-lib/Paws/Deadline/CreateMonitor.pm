
package Paws::Deadline::CreateMonitor;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has IdentityCenterInstanceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityCenterInstanceArn', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Subdomain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subdomain', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMonitor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/monitors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::CreateMonitorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateMonitor - Arguments for method CreateMonitor on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMonitor on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method CreateMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMonitor.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $CreateMonitorResponse = $deadline->CreateMonitor(
      DisplayName               => 'MyResourceName',
      IdentityCenterInstanceArn => 'MyIdentityCenterInstanceArn',
      RoleArn                   => 'MyIamRoleArn',
      Subdomain                 => 'MySubdomain',
      ClientToken               => 'MyClientToken',                 # OPTIONAL
    );

    # Results:
    my $IdentityCenterApplicationArn =
      $CreateMonitorResponse->IdentityCenterApplicationArn;
    my $MonitorId = $CreateMonitorResponse->MonitorId;

    # Returns a L<Paws::Deadline::CreateMonitorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/CreateMonitor>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 B<REQUIRED> DisplayName => Str

The name that you give the monitor that is displayed in the Deadline
Cloud console.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> IdentityCenterInstanceArn => Str

The Amazon Resource Name (ARN) of the IAM Identity Center instance that
authenticates monitor users.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that the monitor uses to
connect to Deadline Cloud. Every user that signs in to the monitor
using IAM Identity Center uses this role to access Deadline Cloud
resources.



=head2 B<REQUIRED> Subdomain => Str

The subdomain to use when creating the monitor URL. The full URL of the
monitor is subdomain.Region.deadlinecloud.amazonaws.com.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMonitor in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

