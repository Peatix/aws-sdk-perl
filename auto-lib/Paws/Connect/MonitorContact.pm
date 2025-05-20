
package Paws::Connect::MonitorContact;
  use Moose;
  has AllowedMonitorCapabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientToken => (is => 'ro', isa => 'Str');
  has ContactId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'MonitorContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/monitor');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::MonitorContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::MonitorContact - Arguments for method MonitorContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method MonitorContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method MonitorContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to MonitorContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $MonitorContactResponse = $connect->MonitorContact(
      ContactId                  => 'MyContactId',
      InstanceId                 => 'MyInstanceId',
      UserId                     => 'MyAgentResourceId',
      AllowedMonitorCapabilities => [
        'SILENT_MONITOR', ...    # values: SILENT_MONITOR, BARGE
      ],    # OPTIONAL
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $ContactArn = $MonitorContactResponse->ContactArn;
    my $ContactId  = $MonitorContactResponse->ContactId;

    # Returns a L<Paws::Connect::MonitorContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/MonitorContact>

=head1 ATTRIBUTES


=head2 AllowedMonitorCapabilities => ArrayRef[Str|Undef]

Specify which monitoring actions the user is allowed to take. For
example, whether the user is allowed to escalate from silent monitoring
to barge. AllowedMonitorCapabilities is required if barge is enabled.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> ContactId => Str

The identifier of the contact.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 B<REQUIRED> UserId => Str

The identifier of the user account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method MonitorContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

