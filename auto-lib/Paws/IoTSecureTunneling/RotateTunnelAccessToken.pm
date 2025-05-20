
package Paws::IoTSecureTunneling::RotateTunnelAccessToken;
  use Moose;
  has ClientMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientMode' , required => 1);
  has DestinationConfig => (is => 'ro', isa => 'Paws::IoTSecureTunneling::DestinationConfig', traits => ['NameInRequest'], request_name => 'destinationConfig' );
  has TunnelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tunnelId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RotateTunnelAccessToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSecureTunneling::RotateTunnelAccessTokenResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSecureTunneling::RotateTunnelAccessToken - Arguments for method RotateTunnelAccessToken on L<Paws::IoTSecureTunneling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RotateTunnelAccessToken on the
L<AWS IoT Secure Tunneling|Paws::IoTSecureTunneling> service. Use the attributes of this class
as arguments to method RotateTunnelAccessToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RotateTunnelAccessToken.

=head1 SYNOPSIS

    my $api.tunneling.iot = Paws->service('IoTSecureTunneling');
    my $RotateTunnelAccessTokenResponse =
      $api . tunneling . iot->RotateTunnelAccessToken(
      ClientMode        => 'SOURCE',
      TunnelId          => 'MyTunnelId',
      DestinationConfig => {
        Services => [
          'MyService', ...    # min: 1, max: 128
        ],    # min: 1
        ThingName => 'MyThingName',    # min: 1, max: 128; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $DestinationAccessToken =
      $RotateTunnelAccessTokenResponse->DestinationAccessToken;
    my $SourceAccessToken = $RotateTunnelAccessTokenResponse->SourceAccessToken;
    my $TunnelArn         = $RotateTunnelAccessTokenResponse->TunnelArn;

# Returns a L<Paws::IoTSecureTunneling::RotateTunnelAccessTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.tunneling.iot/RotateTunnelAccessToken>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientMode => Str

The mode of the client that will use the client token, which can be
either the source or destination, or both source and destination.

Valid values are: C<"SOURCE">, C<"DESTINATION">, C<"ALL">

=head2 DestinationConfig => L<Paws::IoTSecureTunneling::DestinationConfig>





=head2 B<REQUIRED> TunnelId => Str

The tunnel for which you want to rotate the access tokens.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RotateTunnelAccessToken in L<Paws::IoTSecureTunneling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

