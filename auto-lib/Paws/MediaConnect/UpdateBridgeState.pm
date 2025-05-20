
package Paws::MediaConnect::UpdateBridgeState;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'BridgeArn', required => 1);
  has DesiredState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'desiredState', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBridgeState');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/bridges/{BridgeArn}/state');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::UpdateBridgeStateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateBridgeState - Arguments for method UpdateBridgeState on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBridgeState on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method UpdateBridgeState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBridgeState.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $UpdateBridgeStateResponse = $mediaconnect->UpdateBridgeState(
      BridgeArn    => 'MyUpdateBridgeStateRequestBridgeArnString',
      DesiredState => 'ACTIVE',

    );

    # Results:
    my $BridgeArn    = $UpdateBridgeStateResponse->BridgeArn;
    my $DesiredState = $UpdateBridgeStateResponse->DesiredState;

    # Returns a L<Paws::MediaConnect::UpdateBridgeStateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/UpdateBridgeState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BridgeArn => Str

The Amazon Resource Name (ARN) of the bridge that you want to update
the state of.



=head2 B<REQUIRED> DesiredState => Str

The desired state for the bridge.

Valid values are: C<"ACTIVE">, C<"STANDBY">, C<"DELETED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBridgeState in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

