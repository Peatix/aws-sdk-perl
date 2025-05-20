
package Paws::NetworkManager::GetCoreNetworkChangeSet;
  use Moose;
  has CoreNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'coreNetworkId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PolicyVersionId => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'policyVersionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCoreNetworkChangeSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/core-networks/{coreNetworkId}/core-network-change-sets/{policyVersionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::GetCoreNetworkChangeSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetCoreNetworkChangeSet - Arguments for method GetCoreNetworkChangeSet on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCoreNetworkChangeSet on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method GetCoreNetworkChangeSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCoreNetworkChangeSet.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $GetCoreNetworkChangeSetResponse =
      $networkmanager->GetCoreNetworkChangeSet(
      CoreNetworkId   => 'MyCoreNetworkId',
      PolicyVersionId => 1,
      MaxResults      => 1,                   # OPTIONAL
      NextToken       => 'MyNextToken',       # OPTIONAL
      );

    # Results:
    my $CoreNetworkChanges =
      $GetCoreNetworkChangeSetResponse->CoreNetworkChanges;
    my $NextToken = $GetCoreNetworkChangeSetResponse->NextToken;

    # Returns a L<Paws::NetworkManager::GetCoreNetworkChangeSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/GetCoreNetworkChangeSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CoreNetworkId => Str

The ID of a core network.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The token for the next page of results.



=head2 B<REQUIRED> PolicyVersionId => Int

The ID of the policy version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCoreNetworkChangeSet in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

