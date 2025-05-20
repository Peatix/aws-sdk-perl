
package Paws::MediaConnect::DescribeGatewayInstance;
  use Moose;
  has GatewayInstanceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GatewayInstanceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGatewayInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/gateway-instances/{GatewayInstanceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::DescribeGatewayInstanceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DescribeGatewayInstance - Arguments for method DescribeGatewayInstance on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGatewayInstance on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method DescribeGatewayInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGatewayInstance.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $DescribeGatewayInstanceResponse =
      $mediaconnect->DescribeGatewayInstance(
      GatewayInstanceArn =>
        'MyDescribeGatewayInstanceRequestGatewayInstanceArnString',

      );

    # Results:
    my $GatewayInstance = $DescribeGatewayInstanceResponse->GatewayInstance;

    # Returns a L<Paws::MediaConnect::DescribeGatewayInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/DescribeGatewayInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayInstanceArn => Str

The Amazon Resource Name (ARN) of the gateway instance that you want to
describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGatewayInstance in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

