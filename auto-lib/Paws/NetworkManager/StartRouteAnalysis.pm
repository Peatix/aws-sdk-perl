
package Paws::NetworkManager::StartRouteAnalysis;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::NetworkManager::RouteAnalysisEndpointOptionsSpecification', required => 1);
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has IncludeReturnPath => (is => 'ro', isa => 'Bool');
  has Source => (is => 'ro', isa => 'Paws::NetworkManager::RouteAnalysisEndpointOptionsSpecification', required => 1);
  has UseMiddleboxes => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartRouteAnalysis');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/route-analyses');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::StartRouteAnalysisResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::StartRouteAnalysis - Arguments for method StartRouteAnalysis on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartRouteAnalysis on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method StartRouteAnalysis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartRouteAnalysis.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $StartRouteAnalysisResponse = $networkmanager->StartRouteAnalysis(
      Destination => {
        IpAddress => 'MyIPAddress',           # min: 1, max: 50; OPTIONAL
        TransitGatewayAttachmentArn =>
          'MyTransitGatewayAttachmentArn',    # max: 500; OPTIONAL
      },
      GlobalNetworkId => 'MyGlobalNetworkId',
      Source          => {
        IpAddress => 'MyIPAddress',           # min: 1, max: 50; OPTIONAL
        TransitGatewayAttachmentArn =>
          'MyTransitGatewayAttachmentArn',    # max: 500; OPTIONAL
      },
      IncludeReturnPath => 1,                 # OPTIONAL
      UseMiddleboxes    => 1,                 # OPTIONAL
    );

    # Results:
    my $RouteAnalysis = $StartRouteAnalysisResponse->RouteAnalysis;

    # Returns a L<Paws::NetworkManager::StartRouteAnalysisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/StartRouteAnalysis>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => L<Paws::NetworkManager::RouteAnalysisEndpointOptionsSpecification>

The destination.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 IncludeReturnPath => Bool

Indicates whether to analyze the return path. The default is C<false>.



=head2 B<REQUIRED> Source => L<Paws::NetworkManager::RouteAnalysisEndpointOptionsSpecification>

The source from which traffic originates.



=head2 UseMiddleboxes => Bool

Indicates whether to include the location of middlebox appliances in
the route analysis. The default is C<false>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartRouteAnalysis in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

