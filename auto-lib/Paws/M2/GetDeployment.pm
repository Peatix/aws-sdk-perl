
package Paws::M2::GetDeployment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deploymentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/deployments/{deploymentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::GetDeploymentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetDeployment - Arguments for method GetDeployment on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeployment on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method GetDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeployment.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $GetDeploymentResponse = $m2->GetDeployment(
      ApplicationId => 'MyIdentifier',
      DeploymentId  => 'MyIdentifier',

    );

    # Results:
    my $ApplicationId      = $GetDeploymentResponse->ApplicationId;
    my $ApplicationVersion = $GetDeploymentResponse->ApplicationVersion;
    my $CreationTime       = $GetDeploymentResponse->CreationTime;
    my $DeploymentId       = $GetDeploymentResponse->DeploymentId;
    my $EnvironmentId      = $GetDeploymentResponse->EnvironmentId;
    my $Status             = $GetDeploymentResponse->Status;
    my $StatusReason       = $GetDeploymentResponse->StatusReason;

    # Returns a L<Paws::M2::GetDeploymentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/GetDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the application.



=head2 B<REQUIRED> DeploymentId => Str

The unique identifier for the deployment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeployment in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

