
package Paws::NetworkManager::UpdateDirectConnectGatewayAttachment;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'attachmentId', required => 1);
  has EdgeLocations => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDirectConnectGatewayAttachment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/direct-connect-gateway-attachments/{attachmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::UpdateDirectConnectGatewayAttachmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::UpdateDirectConnectGatewayAttachment - Arguments for method UpdateDirectConnectGatewayAttachment on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDirectConnectGatewayAttachment on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method UpdateDirectConnectGatewayAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDirectConnectGatewayAttachment.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $UpdateDirectConnectGatewayAttachmentResponse =
      $networkmanager->UpdateDirectConnectGatewayAttachment(
      AttachmentId  => 'MyAttachmentId',
      EdgeLocations => [
        'MyExternalRegionCode', ...    # min: 1, max: 63
      ],    # OPTIONAL
      );

    # Results:
    my $DirectConnectGatewayAttachment =
      $UpdateDirectConnectGatewayAttachmentResponse
      ->DirectConnectGatewayAttachment;

# Returns a L<Paws::NetworkManager::UpdateDirectConnectGatewayAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/UpdateDirectConnectGatewayAttachment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttachmentId => Str

The ID of the Direct Connect gateway attachment for the updated edge
locations.



=head2 EdgeLocations => ArrayRef[Str|Undef]

One or more edge locations to update for the Direct Connect gateway
attachment. The updated array of edge locations overwrites the previous
array of locations. C<EdgeLocations> is only used for Direct Connect
gateway attachments.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDirectConnectGatewayAttachment in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

