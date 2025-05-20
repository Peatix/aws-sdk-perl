
package Paws::NetworkManager::ExecuteCoreNetworkChangeSet;
  use Moose;
  has CoreNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'coreNetworkId', required => 1);
  has PolicyVersionId => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'policyVersionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteCoreNetworkChangeSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/core-networks/{coreNetworkId}/core-network-change-sets/{policyVersionId}/execute');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::ExecuteCoreNetworkChangeSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::ExecuteCoreNetworkChangeSet - Arguments for method ExecuteCoreNetworkChangeSet on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteCoreNetworkChangeSet on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method ExecuteCoreNetworkChangeSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteCoreNetworkChangeSet.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $ExecuteCoreNetworkChangeSetResponse =
      $networkmanager->ExecuteCoreNetworkChangeSet(
      CoreNetworkId   => 'MyCoreNetworkId',
      PolicyVersionId => 1,

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/ExecuteCoreNetworkChangeSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CoreNetworkId => Str

The ID of a core network.



=head2 B<REQUIRED> PolicyVersionId => Int

The ID of the policy version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteCoreNetworkChangeSet in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

