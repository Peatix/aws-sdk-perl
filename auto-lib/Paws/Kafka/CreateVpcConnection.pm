
package Paws::Kafka::CreateVpcConnection;
  use Moose;
  has Authentication => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authentication', required => 1);
  has ClientSubnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'clientSubnets', required => 1);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroups', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Kafka::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');
  has TargetClusterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetClusterArn', required => 1);
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/vpc-connection');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::CreateVpcConnectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::CreateVpcConnection - Arguments for method CreateVpcConnection on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcConnection on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method CreateVpcConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcConnection.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $CreateVpcConnectionResponse = $kafka->CreateVpcConnection(
      Authentication   => 'My__string',
      ClientSubnets    => [ 'My__string', ... ],
      SecurityGroups   => [ 'My__string', ... ],
      TargetClusterArn => 'My__string',
      VpcId            => 'My__string',
      Tags             => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Authentication   = $CreateVpcConnectionResponse->Authentication;
    my $ClientSubnets    = $CreateVpcConnectionResponse->ClientSubnets;
    my $CreationTime     = $CreateVpcConnectionResponse->CreationTime;
    my $SecurityGroups   = $CreateVpcConnectionResponse->SecurityGroups;
    my $State            = $CreateVpcConnectionResponse->State;
    my $Tags             = $CreateVpcConnectionResponse->Tags;
    my $VpcConnectionArn = $CreateVpcConnectionResponse->VpcConnectionArn;
    my $VpcId            = $CreateVpcConnectionResponse->VpcId;

    # Returns a L<Paws::Kafka::CreateVpcConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/CreateVpcConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Authentication => Str

The authentication type of VPC connection.



=head2 B<REQUIRED> ClientSubnets => ArrayRef[Str|Undef]

The list of client subnets.



=head2 B<REQUIRED> SecurityGroups => ArrayRef[Str|Undef]

The list of security groups.



=head2 Tags => L<Paws::Kafka::__mapOf__string>

A map of tags for the VPC connection.



=head2 B<REQUIRED> TargetClusterArn => Str

The cluster Amazon Resource Name (ARN) for the VPC connection.



=head2 B<REQUIRED> VpcId => Str

The VPC ID of VPC connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcConnection in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

