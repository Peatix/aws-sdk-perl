
package Paws::NetworkManager::UpdateNetworkResourceMetadata;
  use Moose;
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::NetworkManager::NetworkResourceMetadataMap', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNetworkResourceMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/network-resources/{resourceArn}/metadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::UpdateNetworkResourceMetadataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::UpdateNetworkResourceMetadata - Arguments for method UpdateNetworkResourceMetadata on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNetworkResourceMetadata on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method UpdateNetworkResourceMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNetworkResourceMetadata.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $UpdateNetworkResourceMetadataResponse =
      $networkmanager->UpdateNetworkResourceMetadata(
      GlobalNetworkId => 'MyGlobalNetworkId',
      Metadata        => {
        'MyConstrainedString' =>
          'MyConstrainedString',    # key: max: 256, value: max: 256
      },
      ResourceArn => 'MyResourceArn',

      );

    # Results:
    my $Metadata    = $UpdateNetworkResourceMetadataResponse->Metadata;
    my $ResourceArn = $UpdateNetworkResourceMetadataResponse->ResourceArn;

# Returns a L<Paws::NetworkManager::UpdateNetworkResourceMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/UpdateNetworkResourceMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 B<REQUIRED> Metadata => L<Paws::NetworkManager::NetworkResourceMetadataMap>

The resource metadata.



=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNetworkResourceMetadata in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

