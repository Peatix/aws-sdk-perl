
package Paws::OpenSearchServerless::CreateVpcEndpoint;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds' );
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds' , required => 1);
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::CreateVpcEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::CreateVpcEndpoint - Arguments for method CreateVpcEndpoint on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcEndpoint on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method CreateVpcEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcEndpoint.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $CreateVpcEndpointResponse = $aoss->CreateVpcEndpoint(
      Name      => 'MyVpcEndpointName',
      SubnetIds => [
        'MySubnetId', ...    # min: 1, max: 32
      ],
      VpcId            => 'MyVpcId',
      ClientToken      => 'MyClientToken',    # OPTIONAL
      SecurityGroupIds => [
        'MySecurityGroupId', ...              # min: 1, max: 128
      ],    # OPTIONAL
    );

    # Results:
    my $CreateVpcEndpointDetail =
      $CreateVpcEndpointResponse->CreateVpcEndpointDetail;

    # Returns a L<Paws::OpenSearchServerless::CreateVpcEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/CreateVpcEndpoint>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure idempotency of the request.



=head2 B<REQUIRED> Name => Str

The name of the interface endpoint.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The unique identifiers of the security groups that define the ports,
protocols, and sources for inbound traffic that you are authorizing
into your endpoint.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The ID of one or more subnets from which you'll access OpenSearch
Serverless.



=head2 B<REQUIRED> VpcId => Str

The ID of the VPC from which you'll access OpenSearch Serverless.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcEndpoint in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

