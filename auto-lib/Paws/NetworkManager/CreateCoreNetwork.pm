
package Paws::NetworkManager::CreateCoreNetwork;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has GlobalNetworkId => (is => 'ro', isa => 'Str', required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCoreNetwork');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/core-networks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::CreateCoreNetworkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateCoreNetwork - Arguments for method CreateCoreNetwork on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCoreNetwork on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method CreateCoreNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCoreNetwork.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $CreateCoreNetworkResponse = $networkmanager->CreateCoreNetwork(
      GlobalNetworkId => 'MyGlobalNetworkId',
      ClientToken     => 'MyClientToken',                  # OPTIONAL
      Description     => 'MyConstrainedString',            # OPTIONAL
      PolicyDocument  => 'MyCoreNetworkPolicyDocument',    # OPTIONAL
      Tags            => [
        {
          Key   => 'MyTagKey',      # max: 10000000; OPTIONAL
          Value => 'MyTagValue',    # max: 10000000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CoreNetwork = $CreateCoreNetworkResponse->CoreNetwork;

    # Returns a L<Paws::NetworkManager::CreateCoreNetworkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/CreateCoreNetwork>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token associated with a core network request.



=head2 Description => Str

The description of a core network.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network that a core network will be a part of.



=head2 PolicyDocument => Str

The policy document for creating a core network.



=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

Key-value tags associated with a core network request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCoreNetwork in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

