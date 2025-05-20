
package Paws::NetworkManager::GetTransitGatewayRouteTableAttachment;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'attachmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTransitGatewayRouteTableAttachment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/transit-gateway-route-table-attachments/{attachmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::GetTransitGatewayRouteTableAttachmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetTransitGatewayRouteTableAttachment - Arguments for method GetTransitGatewayRouteTableAttachment on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTransitGatewayRouteTableAttachment on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method GetTransitGatewayRouteTableAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTransitGatewayRouteTableAttachment.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $GetTransitGatewayRouteTableAttachmentResponse =
      $networkmanager->GetTransitGatewayRouteTableAttachment(
      AttachmentId => 'MyAttachmentId',

      );

    # Results:
    my $TransitGatewayRouteTableAttachment =
      $GetTransitGatewayRouteTableAttachmentResponse
      ->TransitGatewayRouteTableAttachment;

# Returns a L<Paws::NetworkManager::GetTransitGatewayRouteTableAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/GetTransitGatewayRouteTableAttachment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttachmentId => Str

The ID of the transit gateway route table attachment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTransitGatewayRouteTableAttachment in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

