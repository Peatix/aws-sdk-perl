
package Paws::Connect::CreatePushNotificationRegistration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ContactConfiguration => (is => 'ro', isa => 'Paws::Connect::ContactConfiguration', required => 1);
  has DeviceToken => (is => 'ro', isa => 'Str', required => 1);
  has DeviceType => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has PinpointAppArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePushNotificationRegistration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/push-notification/{InstanceId}/registrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreatePushNotificationRegistrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreatePushNotificationRegistration - Arguments for method CreatePushNotificationRegistration on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePushNotificationRegistration on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreatePushNotificationRegistration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePushNotificationRegistration.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreatePushNotificationRegistrationResponse =
      $connect->CreatePushNotificationRegistration(
      ContactConfiguration => {
        ContactId         => 'MyContactId',    # min: 1, max: 256
        IncludeRawMessage => 1,                # OPTIONAL
        ParticipantRole   => 'AGENT'
        ,    # values: AGENT, CUSTOMER, SYSTEM, CUSTOM_BOT, SUPERVISOR; OPTIONAL
      },
      DeviceToken    => 'MyDeviceToken',
      DeviceType     => 'GCM',
      InstanceId     => 'MyInstanceId',
      PinpointAppArn => 'MyARN',
      ClientToken    => 'MyClientToken',    # OPTIONAL
      );

    # Results:
    my $RegistrationId =
      $CreatePushNotificationRegistrationResponse->RegistrationId;

# Returns a L<Paws::Connect::CreatePushNotificationRegistrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreatePushNotificationRegistration>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> ContactConfiguration => L<Paws::Connect::ContactConfiguration>

The contact configuration for push notification registration.



=head2 B<REQUIRED> DeviceToken => Str

The push notification token issued by the Apple or Google gateways.



=head2 B<REQUIRED> DeviceType => Str

The device type to use when sending the message.

Valid values are: C<"GCM">, C<"APNS">, C<"APNS_SANDBOX">

=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> PinpointAppArn => Str

The Amazon Resource Name (ARN) of the Pinpoint application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePushNotificationRegistration in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

