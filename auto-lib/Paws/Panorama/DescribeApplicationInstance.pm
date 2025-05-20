
package Paws::Panorama::DescribeApplicationInstance;
  use Moose;
  has ApplicationInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationInstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplicationInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/application-instances/{ApplicationInstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::DescribeApplicationInstanceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribeApplicationInstance - Arguments for method DescribeApplicationInstance on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeApplicationInstance on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method DescribeApplicationInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeApplicationInstance.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $DescribeApplicationInstanceResponse =
      $panorama->DescribeApplicationInstance(
      ApplicationInstanceId => 'MyApplicationInstanceId',

      );

    # Results:
    my $ApplicationInstanceId =
      $DescribeApplicationInstanceResponse->ApplicationInstanceId;
    my $ApplicationInstanceIdToReplace =
      $DescribeApplicationInstanceResponse->ApplicationInstanceIdToReplace;
    my $Arn         = $DescribeApplicationInstanceResponse->Arn;
    my $CreatedTime = $DescribeApplicationInstanceResponse->CreatedTime;
    my $DefaultRuntimeContextDevice =
      $DescribeApplicationInstanceResponse->DefaultRuntimeContextDevice;
    my $DefaultRuntimeContextDeviceName =
      $DescribeApplicationInstanceResponse->DefaultRuntimeContextDeviceName;
    my $Description     = $DescribeApplicationInstanceResponse->Description;
    my $HealthStatus    = $DescribeApplicationInstanceResponse->HealthStatus;
    my $LastUpdatedTime = $DescribeApplicationInstanceResponse->LastUpdatedTime;
    my $Name            = $DescribeApplicationInstanceResponse->Name;
    my $RuntimeContextStates =
      $DescribeApplicationInstanceResponse->RuntimeContextStates;
    my $RuntimeRoleArn = $DescribeApplicationInstanceResponse->RuntimeRoleArn;
    my $Status         = $DescribeApplicationInstanceResponse->Status;
    my $StatusDescription =
      $DescribeApplicationInstanceResponse->StatusDescription;
    my $Tags = $DescribeApplicationInstanceResponse->Tags;

    # Returns a L<Paws::Panorama::DescribeApplicationInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/DescribeApplicationInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationInstanceId => Str

The application instance's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeApplicationInstance in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

