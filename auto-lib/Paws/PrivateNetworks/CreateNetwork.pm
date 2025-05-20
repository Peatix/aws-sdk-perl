
package Paws::PrivateNetworks::CreateNetwork;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has NetworkName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::PrivateNetworks::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetwork');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/networks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PrivateNetworks::CreateNetworkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::CreateNetwork - Arguments for method CreateNetwork on L<Paws::PrivateNetworks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNetwork on the
L<AWS Private 5G|Paws::PrivateNetworks> service. Use the attributes of this class
as arguments to method CreateNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNetwork.

=head1 SYNOPSIS

    my $private-networks = Paws->service('PrivateNetworks');
    my $CreateNetworkResponse = $private -networks->CreateNetwork(
      NetworkName => 'MyName',
      ClientToken => 'MyClientToken',    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Network = $CreateNetworkResponse->Network;
    my $Tags    = $CreateNetworkResponse->Tags;

    # Returns a L<Paws::PrivateNetworks::CreateNetworkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/private-networks/CreateNetwork>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to ensure
idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).



=head2 Description => Str

The description of the network.



=head2 B<REQUIRED> NetworkName => Str

The name of the network. You can't change the name after you create the
network.



=head2 Tags => L<Paws::PrivateNetworks::TagMap>

The tags to apply to the network.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNetwork in L<Paws::PrivateNetworks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

