
package Paws::NetworkManager::CreateTransitGatewayRouteTableAttachment;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has PeeringId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');
  has TransitGatewayRouteTableArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTransitGatewayRouteTableAttachment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/transit-gateway-route-table-attachments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::CreateTransitGatewayRouteTableAttachmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateTransitGatewayRouteTableAttachment - Arguments for method CreateTransitGatewayRouteTableAttachment on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTransitGatewayRouteTableAttachment on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method CreateTransitGatewayRouteTableAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTransitGatewayRouteTableAttachment.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $CreateTransitGatewayRouteTableAttachmentResponse =
      $networkmanager->CreateTransitGatewayRouteTableAttachment(
      PeeringId                   => 'MyPeeringId',
      TransitGatewayRouteTableArn => 'MyTransitGatewayRouteTableArn',
      ClientToken                 => 'MyClientToken',                 # OPTIONAL
      Tags                        => [
        {
          Key   => 'MyTagKey',      # max: 10000000; OPTIONAL
          Value => 'MyTagValue',    # max: 10000000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $TransitGatewayRouteTableAttachment =
      $CreateTransitGatewayRouteTableAttachmentResponse
      ->TransitGatewayRouteTableAttachment;

# Returns a L<Paws::NetworkManager::CreateTransitGatewayRouteTableAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/CreateTransitGatewayRouteTableAttachment>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token associated with the request.



=head2 B<REQUIRED> PeeringId => Str

The ID of the peer for the



=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

The list of key-value tags associated with the request.



=head2 B<REQUIRED> TransitGatewayRouteTableArn => Str

The ARN of the transit gateway route table for the attachment request.
For example, C<"TransitGatewayRouteTableArn":
"arn:aws:ec2:us-west-2:123456789012:transit-gateway-route-table/tgw-rtb-9876543210123456">.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTransitGatewayRouteTableAttachment in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

