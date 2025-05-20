
package Paws::PrivateNetworks::GetNetworkResource;
  use Moose;
  has NetworkResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'networkResourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetNetworkResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/network-resources/{networkResourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PrivateNetworks::GetNetworkResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::GetNetworkResource - Arguments for method GetNetworkResource on L<Paws::PrivateNetworks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetNetworkResource on the
L<AWS Private 5G|Paws::PrivateNetworks> service. Use the attributes of this class
as arguments to method GetNetworkResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetNetworkResource.

=head1 SYNOPSIS

    my $private-networks = Paws->service('PrivateNetworks');
    my $GetNetworkResourceResponse = $private -networks->GetNetworkResource(
      NetworkResourceArn => 'MyArn',

    );

    # Results:
    my $NetworkResource = $GetNetworkResourceResponse->NetworkResource;
    my $Tags            = $GetNetworkResourceResponse->Tags;

    # Returns a L<Paws::PrivateNetworks::GetNetworkResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/private-networks/GetNetworkResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NetworkResourceArn => Str

The Amazon Resource Name (ARN) of the network resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetNetworkResource in L<Paws::PrivateNetworks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

