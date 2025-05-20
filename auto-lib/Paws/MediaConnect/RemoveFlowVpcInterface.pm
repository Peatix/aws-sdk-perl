
package Paws::MediaConnect::RemoveFlowVpcInterface;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FlowArn', required => 1);
  has VpcInterfaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'VpcInterfaceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveFlowVpcInterface');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/{FlowArn}/vpcInterfaces/{VpcInterfaceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::RemoveFlowVpcInterfaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::RemoveFlowVpcInterface - Arguments for method RemoveFlowVpcInterface on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveFlowVpcInterface on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method RemoveFlowVpcInterface.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveFlowVpcInterface.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $RemoveFlowVpcInterfaceResponse = $mediaconnect->RemoveFlowVpcInterface(
      FlowArn          => 'MyRemoveFlowVpcInterfaceRequestFlowArnString',
      VpcInterfaceName => 'MyString',

    );

    # Results:
    my $FlowArn = $RemoveFlowVpcInterfaceResponse->FlowArn;
    my $NonDeletedNetworkInterfaceIds =
      $RemoveFlowVpcInterfaceResponse->NonDeletedNetworkInterfaceIds;
    my $VpcInterfaceName = $RemoveFlowVpcInterfaceResponse->VpcInterfaceName;

    # Returns a L<Paws::MediaConnect::RemoveFlowVpcInterfaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/RemoveFlowVpcInterface>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowArn => Str

The Amazon Resource Name (ARN) of the flow that you want to remove a
VPC interface from.



=head2 B<REQUIRED> VpcInterfaceName => Str

The name of the VPC interface that you want to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveFlowVpcInterface in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

