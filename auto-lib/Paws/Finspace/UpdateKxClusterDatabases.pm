
package Paws::Finspace::UpdateKxClusterDatabases;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterName', required => 1);
  has Databases => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxDatabaseConfiguration]', traits => ['NameInRequest'], request_name => 'databases', required => 1);
  has DeploymentConfiguration => (is => 'ro', isa => 'Paws::Finspace::KxDeploymentConfiguration', traits => ['NameInRequest'], request_name => 'deploymentConfiguration');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateKxClusterDatabases');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/clusters/{clusterName}/configuration/databases');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::UpdateKxClusterDatabasesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::UpdateKxClusterDatabases - Arguments for method UpdateKxClusterDatabases on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateKxClusterDatabases on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method UpdateKxClusterDatabases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateKxClusterDatabases.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $UpdateKxClusterDatabasesResponse = $finspace->UpdateKxClusterDatabases(
      ClusterName => 'MyKxClusterName',
      Databases   => [
        {
          DatabaseName        => 'MyDatabaseName',    # min: 3, max: 63
          CacheConfigurations => [
            {
              CacheType => 'MyKxCacheStorageType',    # min: 8, max: 10
              DbPaths   => [
                'MyDbPath', ...                       # min: 1, max: 1025
              ],
              DataviewName => 'MyKxDataviewName',    # min: 3, max: 63; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          ChangesetId           => 'MyChangesetId',  # min: 1, max: 26; OPTIONAL
          DataviewConfiguration => {
            ChangesetId       => 'MyChangesetId',    # min: 1, max: 26; OPTIONAL
            DataviewName      => 'MyKxDataviewName', # min: 3, max: 63; OPTIONAL
            DataviewVersionId => 'MyVersionId',      # min: 1, max: 26; OPTIONAL
            SegmentConfigurations => [
              {
                DbPaths => [
                  'MyDbPath', ...    # min: 1, max: 1025
                ],    # min: 1, max: 30
                VolumeName => 'MyKxVolumeName',    # min: 3, max: 63
                OnDemand   => 1,                   # OPTIONAL
              },
              ...
            ],    # max: 50; OPTIONAL
          },    # OPTIONAL
          DataviewName => 'MyKxDataviewName',    # min: 3, max: 63; OPTIONAL
        },
        ...
      ],
      EnvironmentId           => 'MyKxEnvironmentId',
      ClientToken             => 'MyClientTokenString',    # OPTIONAL
      DeploymentConfiguration => {
        DeploymentStrategy => 'NO_RESTART',    # values: NO_RESTART, ROLLING

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/UpdateKxClusterDatabases>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> ClusterName => Str

A unique name for the cluster that you want to modify.



=head2 B<REQUIRED> Databases => ArrayRef[L<Paws::Finspace::KxDatabaseConfiguration>]

The structure of databases mounted on the cluster.



=head2 DeploymentConfiguration => L<Paws::Finspace::KxDeploymentConfiguration>

The configuration that allows you to choose how you want to update the
databases on a cluster.



=head2 B<REQUIRED> EnvironmentId => Str

The unique identifier of a kdb environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateKxClusterDatabases in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

