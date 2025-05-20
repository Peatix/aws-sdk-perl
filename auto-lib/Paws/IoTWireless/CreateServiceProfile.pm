
package Paws::IoTWireless::CreateServiceProfile;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANServiceProfile');
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServiceProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/service-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::CreateServiceProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::CreateServiceProfile - Arguments for method CreateServiceProfile on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServiceProfile on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method CreateServiceProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServiceProfile.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $CreateServiceProfileResponse = $api . iotwireless->CreateServiceProfile(
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      LoRaWAN            => {
        AddGwMetadata => 1,                            # OPTIONAL
        DrMax         => 1,                            # max: 15; OPTIONAL
        DrMin         => 1,                            # max: 15; OPTIONAL
        PrAllowed     => 1,                            # OPTIONAL
        RaAllowed     => 1,                            # OPTIONAL
      },    # OPTIONAL
      Name => 'MyServiceProfileName',    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateServiceProfileResponse->Arn;
    my $Id  = $CreateServiceProfileResponse->Id;

    # Returns a L<Paws::IoTWireless::CreateServiceProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/CreateServiceProfile>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Each resource must have a unique client request token. The client token
is used to implement idempotency. It ensures that the request completes
no more than one time. If you retry a request with the same token and
the same parameters, the request will complete successfully. However,
if you try to create a new resource using the same token but different
parameters, an HTTP 409 conflict occurs. If you omit this value, AWS
SDKs will automatically generate a unique client request. For more
information about idempotency, see Ensuring idempotency in Amazon EC2
API requests
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANServiceProfile>

The service profile information to use to create the service profile.



=head2 Name => Str

The name of the new resource.



=head2 Tags => ArrayRef[L<Paws::IoTWireless::Tag>]

The tags to attach to the new service profile. Tags are metadata that
you can use to manage a resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServiceProfile in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

