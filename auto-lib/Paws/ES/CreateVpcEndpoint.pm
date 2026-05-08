
package Paws::ES::CreateVpcEndpoint;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DomainArn => (is => 'ro', isa => 'Str', required => 1);
  has VpcOptions => (is => 'ro', isa => 'Paws::ES::VPCOptions', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/vpcEndpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::CreateVpcEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::CreateVpcEndpoint - Arguments for method CreateVpcEndpoint on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcEndpoint on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method CreateVpcEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcEndpoint.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $CreateVpcEndpointResponse = $es->CreateVpcEndpoint(
      DomainArn  => 'MyDomainArn',
      VpcOptions => {
        SecurityGroupIds => [ 'MyString', ... ],    # OPTIONAL
        SubnetIds        => [ 'MyString', ... ],    # OPTIONAL
      },
      ClientToken => 'MyClientToken',               # OPTIONAL
    );

    # Results:
    my $VpcEndpoint = $CreateVpcEndpointResponse->VpcEndpoint;

    # Returns a L<Paws::ES::CreateVpcEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure idempotency of the request.



=head2 B<REQUIRED> DomainArn => Str

The Amazon Resource Name (ARN) of the domain to grant access to.



=head2 B<REQUIRED> VpcOptions => L<Paws::ES::VPCOptions>

Options to specify the subnets and security groups for the endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcEndpoint in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

