
package Paws::M2::CreateDeployment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ApplicationVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'applicationVersion', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/deployments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::CreateDeploymentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::CreateDeployment - Arguments for method CreateDeployment on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeployment on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method CreateDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeployment.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $CreateDeploymentResponse = $m2->CreateDeployment(
      ApplicationId      => 'MyIdentifier',
      ApplicationVersion => 1,
      EnvironmentId      => 'MyIdentifier',
      ClientToken        => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $DeploymentId = $CreateDeploymentResponse->DeploymentId;

    # Returns a L<Paws::M2::CreateDeploymentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/CreateDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The application identifier.



=head2 B<REQUIRED> ApplicationVersion => Int

The version of the application to deploy.



=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request to create a deployment. The service generates the
clientToken when the API call is triggered. The token expires after one
hour, so if you retry the API within this timeframe with the same
clientToken, you will get the same response. The service also handles
deleting the clientToken after it expires.



=head2 B<REQUIRED> EnvironmentId => Str

The identifier of the runtime environment where you want to deploy this
application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeployment in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

