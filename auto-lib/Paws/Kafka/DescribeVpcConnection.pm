
package Paws::Kafka::DescribeVpcConnection;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/vpc-connection/{arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::DescribeVpcConnectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeVpcConnection - Arguments for method DescribeVpcConnection on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVpcConnection on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method DescribeVpcConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVpcConnection.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $DescribeVpcConnectionResponse = $kafka->DescribeVpcConnection(
      Arn => 'My__string',

    );

    # Results:
    my $Authentication   = $DescribeVpcConnectionResponse->Authentication;
    my $CreationTime     = $DescribeVpcConnectionResponse->CreationTime;
    my $SecurityGroups   = $DescribeVpcConnectionResponse->SecurityGroups;
    my $State            = $DescribeVpcConnectionResponse->State;
    my $Subnets          = $DescribeVpcConnectionResponse->Subnets;
    my $Tags             = $DescribeVpcConnectionResponse->Tags;
    my $TargetClusterArn = $DescribeVpcConnectionResponse->TargetClusterArn;
    my $VpcConnectionArn = $DescribeVpcConnectionResponse->VpcConnectionArn;
    my $VpcId            = $DescribeVpcConnectionResponse->VpcId;

    # Returns a L<Paws::Kafka::DescribeVpcConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/DescribeVpcConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) that uniquely identifies a MSK VPC
connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVpcConnection in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

