
package Paws::SageMakerEdge::GetDeployments;
  use Moose;
  has DeviceFleetName => (is => 'ro', isa => 'Str', required => 1);
  has DeviceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeployments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetDeployments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerEdge::GetDeploymentsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerEdge::GetDeployments - Arguments for method GetDeployments on L<Paws::SageMakerEdge>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeployments on the
L<Amazon Sagemaker Edge Manager|Paws::SageMakerEdge> service. Use the attributes of this class
as arguments to method GetDeployments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeployments.

=head1 SYNOPSIS

    my $edge.sagemaker = Paws->service('SageMakerEdge');
    my $GetDeploymentsResult = $edge . sagemaker->GetDeployments(
      DeviceFleetName => 'MyDeviceFleetName',
      DeviceName      => 'MyDeviceName',

    );

    # Results:
    my $Deployments = $GetDeploymentsResult->Deployments;

    # Returns a L<Paws::SageMakerEdge::GetDeploymentsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/edge.sagemaker/GetDeployments>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceFleetName => Str

The name of the fleet that the device belongs to.



=head2 B<REQUIRED> DeviceName => Str

The unique name of the device you want to get the configuration of
active deployments from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeployments in L<Paws::SageMakerEdge>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

