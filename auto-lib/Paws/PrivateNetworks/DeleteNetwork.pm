
package Paws::PrivateNetworks::DeleteNetwork;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has NetworkArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'networkArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNetwork');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/networks/{networkArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PrivateNetworks::DeleteNetworkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::DeleteNetwork - Arguments for method DeleteNetwork on L<Paws::PrivateNetworks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteNetwork on the
L<AWS Private 5G|Paws::PrivateNetworks> service. Use the attributes of this class
as arguments to method DeleteNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteNetwork.

=head1 SYNOPSIS

    my $private-networks = Paws->service('PrivateNetworks');
    my $DeleteNetworkResponse = $private -networks->DeleteNetwork(
      NetworkArn  => 'MyArn',
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $Network = $DeleteNetworkResponse->Network;

    # Returns a L<Paws::PrivateNetworks::DeleteNetworkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/private-networks/DeleteNetwork>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to ensure
idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).



=head2 B<REQUIRED> NetworkArn => Str

The Amazon Resource Name (ARN) of the network.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteNetwork in L<Paws::PrivateNetworks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

