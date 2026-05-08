
package Paws::ES::UpdateVpcEndpoint;
  use Moose;
  has VpcEndpointId => (is => 'ro', isa => 'Str', required => 1);
  has VpcOptions => (is => 'ro', isa => 'Paws::ES::VPCOptions', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVpcEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/vpcEndpoints/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::UpdateVpcEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::UpdateVpcEndpoint - Arguments for method UpdateVpcEndpoint on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVpcEndpoint on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method UpdateVpcEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVpcEndpoint.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $UpdateVpcEndpointResponse = $es->UpdateVpcEndpoint(
      VpcEndpointId => 'MyVpcEndpointId',
      VpcOptions    => {
        SecurityGroupIds => [ 'MyString', ... ],    # OPTIONAL
        SubnetIds        => [ 'MyString', ... ],    # OPTIONAL
      },

    );

    # Results:
    my $VpcEndpoint = $UpdateVpcEndpointResponse->VpcEndpoint;

    # Returns a L<Paws::ES::UpdateVpcEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VpcEndpointId => Str

Unique identifier of the VPC endpoint to be updated.



=head2 B<REQUIRED> VpcOptions => L<Paws::ES::VPCOptions>

The security groups and/or subnets to add, remove, or modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVpcEndpoint in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

