
package Paws::PrivateNetworks::DeleteNetworkSite;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has NetworkSiteArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'networkSiteArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNetworkSite');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/network-sites/{networkSiteArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PrivateNetworks::DeleteNetworkSiteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::DeleteNetworkSite - Arguments for method DeleteNetworkSite on L<Paws::PrivateNetworks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteNetworkSite on the
L<AWS Private 5G|Paws::PrivateNetworks> service. Use the attributes of this class
as arguments to method DeleteNetworkSite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteNetworkSite.

=head1 SYNOPSIS

    my $private-networks = Paws->service('PrivateNetworks');
    my $DeleteNetworkSiteResponse = $private -networks->DeleteNetworkSite(
      NetworkSiteArn => 'MyArn',
      ClientToken    => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $NetworkSite = $DeleteNetworkSiteResponse->NetworkSite;

    # Returns a L<Paws::PrivateNetworks::DeleteNetworkSiteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/private-networks/DeleteNetworkSite>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to ensure
idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).



=head2 B<REQUIRED> NetworkSiteArn => Str

The Amazon Resource Name (ARN) of the network site.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteNetworkSite in L<Paws::PrivateNetworks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

