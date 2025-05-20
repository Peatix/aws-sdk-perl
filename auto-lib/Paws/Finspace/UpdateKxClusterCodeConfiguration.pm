
package Paws::Finspace::UpdateKxClusterCodeConfiguration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterName', required => 1);
  has Code => (is => 'ro', isa => 'Paws::Finspace::CodeConfiguration', traits => ['NameInRequest'], request_name => 'code', required => 1);
  has CommandLineArguments => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxCommandLineArgument]', traits => ['NameInRequest'], request_name => 'commandLineArguments');
  has DeploymentConfiguration => (is => 'ro', isa => 'Paws::Finspace::KxClusterCodeDeploymentConfiguration', traits => ['NameInRequest'], request_name => 'deploymentConfiguration');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has InitializationScript => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'initializationScript');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateKxClusterCodeConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/clusters/{clusterName}/configuration/code');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::UpdateKxClusterCodeConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::UpdateKxClusterCodeConfiguration - Arguments for method UpdateKxClusterCodeConfiguration on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateKxClusterCodeConfiguration on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method UpdateKxClusterCodeConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateKxClusterCodeConfiguration.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $UpdateKxClusterCodeConfigurationResponse =
      $finspace->UpdateKxClusterCodeConfiguration(
      ClusterName => 'MyKxClusterName',
      Code        => {
        S3Bucket        => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
        S3Key           => 'MyS3Key',              # min: 1, max: 1024; OPTIONAL
        S3ObjectVersion => 'MyS3ObjectVersion',    # min: 1, max: 1000; OPTIONAL
      },
      EnvironmentId        => 'MyKxEnvironmentId',
      ClientToken          => 'MyClientTokenString',    # OPTIONAL
      CommandLineArguments => [
        {
          Key   => 'MyKxCommandLineArgumentKey',   # min: 1, max: 1024; OPTIONAL
          Value => 'MyKxCommandLineArgumentValue', # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      DeploymentConfiguration => {
        DeploymentStrategy => 'NO_RESTART', # values: NO_RESTART, ROLLING, FORCE

      },    # OPTIONAL
      InitializationScript => 'MyInitializationScriptFilePath',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/UpdateKxClusterCodeConfiguration>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> ClusterName => Str

The name of the cluster.



=head2 B<REQUIRED> Code => L<Paws::Finspace::CodeConfiguration>





=head2 CommandLineArguments => ArrayRef[L<Paws::Finspace::KxCommandLineArgument>]

Specifies the key-value pairs to make them available inside the
cluster.

You cannot update this parameter for a C<NO_RESTART> deployment.



=head2 DeploymentConfiguration => L<Paws::Finspace::KxClusterCodeDeploymentConfiguration>

The configuration that allows you to choose how you want to update the
code on a cluster.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier of the kdb environment.



=head2 InitializationScript => Str

Specifies a Q program that will be run at launch of a cluster. It is a
relative path within I<.zip> file that contains the custom code, which
will be loaded on the cluster. It must include the file name itself.
For example, C<somedir/init.q>.

You cannot update this parameter for a C<NO_RESTART> deployment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateKxClusterCodeConfiguration in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

