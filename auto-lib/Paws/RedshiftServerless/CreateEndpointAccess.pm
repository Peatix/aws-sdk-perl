
package Paws::RedshiftServerless::CreateEndpointAccess;
  use Moose;
  has EndpointName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endpointName' , required => 1);
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' );
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds' , required => 1);
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'vpcSecurityGroupIds' );
  has WorkgroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workgroupName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEndpointAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::CreateEndpointAccessResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::CreateEndpointAccess - Arguments for method CreateEndpointAccess on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEndpointAccess on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method CreateEndpointAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEndpointAccess.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $CreateEndpointAccessResponse =
      $redshift -serverless->CreateEndpointAccess(
      EndpointName        => 'MyString',
      SubnetIds           => [ 'MySubnetId', ... ],
      WorkgroupName       => 'MyString',
      OwnerAccount        => 'MyOwnerAccount',                   # OPTIONAL
      VpcSecurityGroupIds => [ 'MyVpcSecurityGroupId', ... ],    # OPTIONAL
      );

    # Results:
    my $Endpoint = $CreateEndpointAccessResponse->Endpoint;

   # Returns a L<Paws::RedshiftServerless::CreateEndpointAccessResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/CreateEndpointAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointName => Str

The name of the VPC endpoint. An endpoint name must contain 1-30
characters. Valid characters are A-Z, a-z, 0-9, and hyphen(-). The
first character must be a letter. The name can't contain two
consecutive hyphens or end with a hyphen.



=head2 OwnerAccount => Str

The owner Amazon Web Services account for the Amazon Redshift
Serverless workgroup.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The unique identifers of subnets from which Amazon Redshift Serverless
chooses one to deploy a VPC endpoint.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

The unique identifiers of the security group that defines the ports,
protocols, and sources for inbound traffic that you are authorizing
into your endpoint.



=head2 B<REQUIRED> WorkgroupName => Str

The name of the workgroup to associate with the VPC endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEndpointAccess in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

