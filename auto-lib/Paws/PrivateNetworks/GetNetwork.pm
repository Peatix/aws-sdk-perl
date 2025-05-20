
package Paws::PrivateNetworks::GetNetwork;
  use Moose;
  has NetworkArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'networkArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetNetwork');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/networks/{networkArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PrivateNetworks::GetNetworkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::GetNetwork - Arguments for method GetNetwork on L<Paws::PrivateNetworks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetNetwork on the
L<AWS Private 5G|Paws::PrivateNetworks> service. Use the attributes of this class
as arguments to method GetNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetNetwork.

=head1 SYNOPSIS

    my $private-networks = Paws->service('PrivateNetworks');
    my $GetNetworkResponse = $private -networks->GetNetwork(
      NetworkArn => 'MyArn',

    );

    # Results:
    my $Network = $GetNetworkResponse->Network;
    my $Tags    = $GetNetworkResponse->Tags;

    # Returns a L<Paws::PrivateNetworks::GetNetworkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/private-networks/GetNetwork>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NetworkArn => Str

The Amazon Resource Name (ARN) of the network.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetNetwork in L<Paws::PrivateNetworks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

