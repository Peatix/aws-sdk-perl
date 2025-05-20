
package Paws::ChimeSDKMessaging::GetMessagingSessionEndpoint;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMessagingSessionEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/endpoints/messaging-session');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMessaging::GetMessagingSessionEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::GetMessagingSessionEndpoint - Arguments for method GetMessagingSessionEndpoint on L<Paws::ChimeSDKMessaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMessagingSessionEndpoint on the
L<Amazon Chime SDK Messaging|Paws::ChimeSDKMessaging> service. Use the attributes of this class
as arguments to method GetMessagingSessionEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMessagingSessionEndpoint.

=head1 SYNOPSIS

    my $messaging-chime = Paws->service('ChimeSDKMessaging');
    my $GetMessagingSessionEndpointResponse =
      $messaging -chime->GetMessagingSessionEndpoint();

    # Results:
    my $Endpoint = $GetMessagingSessionEndpointResponse->Endpoint;

# Returns a L<Paws::ChimeSDKMessaging::GetMessagingSessionEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/messaging-chime/GetMessagingSessionEndpoint>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMessagingSessionEndpoint in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

