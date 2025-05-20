
package Paws::GreengrassV2::DeleteDeployment;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deploymentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/v2/deployments/{deploymentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::DeleteDeployment - Arguments for method DeleteDeployment on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDeployment on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method DeleteDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDeployment.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    $greengrass->DeleteDeployment(
      DeploymentId => 'MyNonEmptyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/DeleteDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentId => Str

The ID of the deployment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDeployment in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

