
package Paws::ChimeSDKIdentity::RegisterAppInstanceUserEndpoint;
  use Moose;
  has AllowMessages => (is => 'ro', isa => 'Str');
  has AppInstanceUserArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceUserArn', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has EndpointAttributes => (is => 'ro', isa => 'Paws::ChimeSDKIdentity::EndpointAttributes', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterAppInstanceUserEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instance-users/{appInstanceUserArn}/endpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKIdentity::RegisterAppInstanceUserEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::RegisterAppInstanceUserEndpoint - Arguments for method RegisterAppInstanceUserEndpoint on L<Paws::ChimeSDKIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterAppInstanceUserEndpoint on the
L<Amazon Chime SDK Identity|Paws::ChimeSDKIdentity> service. Use the attributes of this class
as arguments to method RegisterAppInstanceUserEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterAppInstanceUserEndpoint.

=head1 SYNOPSIS

    my $identity-chime = Paws->service('ChimeSDKIdentity');
    my $RegisterAppInstanceUserEndpointResponse =
      $identity -chime->RegisterAppInstanceUserEndpoint(
      AppInstanceUserArn => 'MySensitiveChimeArn',
      ClientRequestToken => 'MyClientRequestToken',
      EndpointAttributes => {
        DeviceToken     => 'MyNonEmptySensitiveString1600',  # min: 1, max: 1600
        VoipDeviceToken => 'MyNonEmptySensitiveString1600',  # min: 1, max: 1600
      },
      ResourceArn   => 'MyChimeArn',
      Type          => 'APNS',
      AllowMessages => 'ALL',                                # OPTIONAL
      Name          => 'MySensitiveString1600',              # OPTIONAL
      );

    # Results:
    my $AppInstanceUserArn =
      $RegisterAppInstanceUserEndpointResponse->AppInstanceUserArn;
    my $EndpointId = $RegisterAppInstanceUserEndpointResponse->EndpointId;

# Returns a L<Paws::ChimeSDKIdentity::RegisterAppInstanceUserEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identity-chime/RegisterAppInstanceUserEndpoint>

=head1 ATTRIBUTES


=head2 AllowMessages => Str

Boolean that controls whether the AppInstanceUserEndpoint is opted in
to receive messages. C<ALL> indicates the endpoint receives all
messages. C<NONE> indicates the endpoint receives no messages.

Valid values are: C<"ALL">, C<"NONE">

=head2 B<REQUIRED> AppInstanceUserArn => Str

The ARN of the C<AppInstanceUser>.



=head2 B<REQUIRED> ClientRequestToken => Str

The unique ID assigned to the request. Use different tokens to register
other endpoints.



=head2 B<REQUIRED> EndpointAttributes => L<Paws::ChimeSDKIdentity::EndpointAttributes>

The attributes of an C<Endpoint>.



=head2 Name => Str

The name of the C<AppInstanceUserEndpoint>.



=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource to which the endpoint belongs.



=head2 B<REQUIRED> Type => Str

The type of the C<AppInstanceUserEndpoint>. Supported types:

=over

=item *

C<APNS>: The mobile notification service for an Apple device.

=item *

C<APNS_SANDBOX>: The sandbox environment of the mobile notification
service for an Apple device.

=item *

C<GCM>: The mobile notification service for an Android device.

=back

Populate the C<ResourceArn> value of each type as C<PinpointAppArn>.

Valid values are: C<"APNS">, C<"APNS_SANDBOX">, C<"GCM">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterAppInstanceUserEndpoint in L<Paws::ChimeSDKIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

