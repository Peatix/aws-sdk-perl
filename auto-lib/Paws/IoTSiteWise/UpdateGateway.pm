
package Paws::IoTSiteWise::UpdateGateway;
  use Moose;
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'gatewayId', required => 1);
  has GatewayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gatewayName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGateway');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/20200301/gateways/{gatewayId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::UpdateGateway - Arguments for method UpdateGateway on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGateway on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method UpdateGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGateway.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    $iotsitewise->UpdateGateway(
      GatewayId   => 'MyID',
      GatewayName => 'MyGatewayName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/UpdateGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayId => Str

The ID of the gateway to update.



=head2 B<REQUIRED> GatewayName => Str

A unique name for the gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGateway in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

