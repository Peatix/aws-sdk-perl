
package Paws::Panorama::DescribeApplicationInstanceDetails;
  use Moose;
  has ApplicationInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationInstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplicationInstanceDetails');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/application-instances/{ApplicationInstanceId}/details');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::DescribeApplicationInstanceDetailsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribeApplicationInstanceDetails - Arguments for method DescribeApplicationInstanceDetails on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeApplicationInstanceDetails on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method DescribeApplicationInstanceDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeApplicationInstanceDetails.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $DescribeApplicationInstanceDetailsResponse =
      $panorama->DescribeApplicationInstanceDetails(
      ApplicationInstanceId => 'MyApplicationInstanceId',

      );

    # Results:
    my $ApplicationInstanceId =
      $DescribeApplicationInstanceDetailsResponse->ApplicationInstanceId;
    my $ApplicationInstanceIdToReplace =
      $DescribeApplicationInstanceDetailsResponse
      ->ApplicationInstanceIdToReplace;
    my $CreatedTime = $DescribeApplicationInstanceDetailsResponse->CreatedTime;
    my $DefaultRuntimeContextDevice =
      $DescribeApplicationInstanceDetailsResponse->DefaultRuntimeContextDevice;
    my $Description = $DescribeApplicationInstanceDetailsResponse->Description;
    my $ManifestOverridesPayload =
      $DescribeApplicationInstanceDetailsResponse->ManifestOverridesPayload;
    my $ManifestPayload =
      $DescribeApplicationInstanceDetailsResponse->ManifestPayload;
    my $Name = $DescribeApplicationInstanceDetailsResponse->Name;

# Returns a L<Paws::Panorama::DescribeApplicationInstanceDetailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/DescribeApplicationInstanceDetails>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationInstanceId => Str

The application instance's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeApplicationInstanceDetails in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

