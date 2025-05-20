
package Paws::Kafka::DeleteVpcConnection;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpcConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/vpc-connection/{arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::DeleteVpcConnectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DeleteVpcConnection - Arguments for method DeleteVpcConnection on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVpcConnection on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method DeleteVpcConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVpcConnection.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $DeleteVpcConnectionResponse = $kafka->DeleteVpcConnection(
      Arn => 'My__string',

    );

    # Results:
    my $State            = $DeleteVpcConnectionResponse->State;
    my $VpcConnectionArn = $DeleteVpcConnectionResponse->VpcConnectionArn;

    # Returns a L<Paws::Kafka::DeleteVpcConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/DeleteVpcConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) that uniquely identifies an MSK VPC
connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVpcConnection in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

