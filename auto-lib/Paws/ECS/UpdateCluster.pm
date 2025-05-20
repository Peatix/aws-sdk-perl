
package Paws::ECS::UpdateCluster;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' , required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::ECS::ClusterConfiguration', traits => ['NameInRequest'], request_name => 'configuration' );
  has ServiceConnectDefaults => (is => 'ro', isa => 'Paws::ECS::ClusterServiceConnectDefaultsRequest', traits => ['NameInRequest'], request_name => 'serviceConnectDefaults' );
  has Settings => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ClusterSetting]', traits => ['NameInRequest'], request_name => 'settings' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::UpdateClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateCluster - Arguments for method UpdateCluster on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCluster on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method UpdateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCluster.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $UpdateClusterResponse = $ecs->UpdateCluster(
      Cluster       => 'MyString',
      Configuration => {
        ExecuteCommandConfiguration => {
          KmsKeyId         => 'MyString',
          LogConfiguration => {
            CloudWatchEncryptionEnabled => 1,            # OPTIONAL
            CloudWatchLogGroupName      => 'MyString',
            S3BucketName                => 'MyString',
            S3EncryptionEnabled         => 1,            # OPTIONAL
            S3KeyPrefix                 => 'MyString',
          },    # OPTIONAL
          Logging => 'NONE',    # values: NONE, DEFAULT, OVERRIDE; OPTIONAL
        },    # OPTIONAL
        ManagedStorageConfiguration => {
          FargateEphemeralStorageKmsKeyId => 'MyString',
          KmsKeyId                        => 'MyString',
        },    # OPTIONAL
      },    # OPTIONAL
      ServiceConnectDefaults => {
        Namespace => 'MyString',

      },    # OPTIONAL
      Settings => [
        {
          Name  => 'containerInsights',    # values: containerInsights; OPTIONAL
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Cluster = $UpdateClusterResponse->Cluster;

    # Returns a L<Paws::ECS::UpdateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/UpdateCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cluster => Str

The name of the cluster to modify the settings for.



=head2 Configuration => L<Paws::ECS::ClusterConfiguration>

The execute command configuration for the cluster.



=head2 ServiceConnectDefaults => L<Paws::ECS::ClusterServiceConnectDefaultsRequest>

Use this parameter to set a default Service Connect namespace. After
you set a default Service Connect namespace, any new services with
Service Connect turned on that are created in the cluster are added as
client services in the namespace. This setting only applies to new
services that set the C<enabled> parameter to C<true> in the
C<ServiceConnectConfiguration>. You can set the namespace of each
service individually in the C<ServiceConnectConfiguration> to override
this default parameter.

Tasks that run in a namespace can use short names to connect to
services in the namespace. Tasks can connect to services across all of
the clusters in the namespace. Tasks connect through a managed proxy
container that collects logs and metrics for increased visibility. Only
the tasks that Amazon ECS services create are supported with Service
Connect. For more information, see Service Connect
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 Settings => ArrayRef[L<Paws::ECS::ClusterSetting>]

The cluster settings for your cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCluster in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

