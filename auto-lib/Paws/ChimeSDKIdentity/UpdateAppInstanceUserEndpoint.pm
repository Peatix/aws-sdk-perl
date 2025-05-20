
package Paws::ChimeSDKIdentity::UpdateAppInstanceUserEndpoint;
  use Moose;
  has AllowMessages => (is => 'ro', isa => 'Str');
  has AppInstanceUserArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceUserArn', required => 1);
  has EndpointId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'endpointId', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAppInstanceUserEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instance-users/{appInstanceUserArn}/endpoints/{endpointId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKIdentity::UpdateAppInstanceUserEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::UpdateAppInstanceUserEndpoint - Arguments for method UpdateAppInstanceUserEndpoint on L<Paws::ChimeSDKIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAppInstanceUserEndpoint on the
L<Amazon Chime SDK Identity|Paws::ChimeSDKIdentity> service. Use the attributes of this class
as arguments to method UpdateAppInstanceUserEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAppInstanceUserEndpoint.

=head1 SYNOPSIS

    my $identity-chime = Paws->service('ChimeSDKIdentity');
    my $UpdateAppInstanceUserEndpointResponse =
      $identity -chime->UpdateAppInstanceUserEndpoint(
      AppInstanceUserArn => 'MyChimeArn',
      EndpointId         => 'MyString64',
      AllowMessages      => 'ALL',                      # OPTIONAL
      Name               => 'MySensitiveString1600',    # OPTIONAL
      );

    # Results:
    my $AppInstanceUserArn =
      $UpdateAppInstanceUserEndpointResponse->AppInstanceUserArn;
    my $EndpointId = $UpdateAppInstanceUserEndpointResponse->EndpointId;

# Returns a L<Paws::ChimeSDKIdentity::UpdateAppInstanceUserEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identity-chime/UpdateAppInstanceUserEndpoint>

=head1 ATTRIBUTES


=head2 AllowMessages => Str

Boolean that controls whether the C<AppInstanceUserEndpoint> is opted
in to receive messages. C<ALL> indicates the endpoint will receive all
messages. C<NONE> indicates the endpoint will receive no messages.

Valid values are: C<"ALL">, C<"NONE">

=head2 B<REQUIRED> AppInstanceUserArn => Str

The ARN of the C<AppInstanceUser>.



=head2 B<REQUIRED> EndpointId => Str

The unique identifier of the C<AppInstanceUserEndpoint>.



=head2 Name => Str

The name of the C<AppInstanceUserEndpoint>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAppInstanceUserEndpoint in L<Paws::ChimeSDKIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

