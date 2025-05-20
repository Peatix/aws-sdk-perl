
package Paws::SESv2::GetMultiRegionEndpoint;
  use Moose;
  has EndpointName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EndpointName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMultiRegionEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/multi-region-endpoints/{EndpointName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::GetMultiRegionEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetMultiRegionEndpoint - Arguments for method GetMultiRegionEndpoint on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMultiRegionEndpoint on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method GetMultiRegionEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMultiRegionEndpoint.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $GetMultiRegionEndpointResponse = $email->GetMultiRegionEndpoint(
      EndpointName => 'MyEndpointName',

    );

    # Results:
    my $CreatedTimestamp = $GetMultiRegionEndpointResponse->CreatedTimestamp;
    my $EndpointId       = $GetMultiRegionEndpointResponse->EndpointId;
    my $EndpointName     = $GetMultiRegionEndpointResponse->EndpointName;
    my $LastUpdatedTimestamp =
      $GetMultiRegionEndpointResponse->LastUpdatedTimestamp;
    my $Routes = $GetMultiRegionEndpointResponse->Routes;
    my $Status = $GetMultiRegionEndpointResponse->Status;

    # Returns a L<Paws::SESv2::GetMultiRegionEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetMultiRegionEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointName => Str

The name of the multi-region endpoint (global-endpoint).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMultiRegionEndpoint in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

