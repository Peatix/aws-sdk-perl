
package Paws::PCS::CreateCluster;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterName' , required => 1);
  has Networking => (is => 'ro', isa => 'Paws::PCS::NetworkingRequest', traits => ['NameInRequest'], request_name => 'networking' , required => 1);
  has Scheduler => (is => 'ro', isa => 'Paws::PCS::SchedulerRequest', traits => ['NameInRequest'], request_name => 'scheduler' , required => 1);
  has Size => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'size' , required => 1);
  has SlurmConfiguration => (is => 'ro', isa => 'Paws::PCS::ClusterSlurmConfigurationRequest', traits => ['NameInRequest'], request_name => 'slurmConfiguration' );
  has Tags => (is => 'ro', isa => 'Paws::PCS::RequestTagMap', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PCS::CreateClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PCS::CreateCluster - Arguments for method CreateCluster on L<Paws::PCS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<AWS Parallel Computing Service|Paws::PCS> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $pcs = Paws->service('PCS');
    my $CreateClusterResponse = $pcs->CreateCluster(
      ClusterName => 'MyClusterName',
      Networking  => {
        SecurityGroupIds => [ 'MySecurityGroupId', ... ],    # OPTIONAL
        SubnetIds        => [ 'MySubnetId',        ... ],    # min: 1; OPTIONAL
      },
      Scheduler => {
        Type    => 'SLURM',                                  # values: SLURM
        Version => 'MyString',

      },
      Size               => 'SMALL',
      ClientToken        => 'MySBClientToken',               # OPTIONAL
      SlurmConfiguration => {
        Accounting => {
          Mode                   => 'STANDARD',  # values: STANDARD, NONE
          DefaultPurgeTimeInDays => 1,           # min: -1, max: 10000; OPTIONAL
        },    # OPTIONAL
        ScaleDownIdleTimeInSeconds => 1,    # min: 1; OPTIONAL
        SlurmCustomSettings        => [
          {
            ParameterName  => 'MyString',
            ParameterValue => 'MyString',

          },
          ...
        ],                                  # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Cluster = $CreateClusterResponse->Cluster;

    # Returns a L<Paws::PCS::CreateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pcs/CreateCluster>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original
request completes successfully, the subsequent retries with the same
client token return the result from the original successful request and
they have no additional effect. If you don't specify a client token,
the CLI and SDK automatically generate 1 for you.



=head2 B<REQUIRED> ClusterName => Str

A name to identify the cluster. Example: C<MyCluster>



=head2 B<REQUIRED> Networking => L<Paws::PCS::NetworkingRequest>

The networking configuration used to set up the cluster's control
plane.



=head2 B<REQUIRED> Scheduler => L<Paws::PCS::SchedulerRequest>

The cluster management and job scheduling software associated with the
cluster.



=head2 B<REQUIRED> Size => Str

A value that determines the maximum number of compute nodes in the
cluster and the maximum number of jobs (active and queued).

=over

=item *

C<SMALL>: 32 compute nodes and 256 jobs

=item *

C<MEDIUM>: 512 compute nodes and 8192 jobs

=item *

C<LARGE>: 2048 compute nodes and 16,384 jobs

=back


Valid values are: C<"SMALL">, C<"MEDIUM">, C<"LARGE">

=head2 SlurmConfiguration => L<Paws::PCS::ClusterSlurmConfigurationRequest>

Additional options related to the Slurm scheduler.



=head2 Tags => L<Paws::PCS::RequestTagMap>

1 or more tags added to the resource. Each tag consists of a tag key
and tag value. The tag value is optional and can be an empty string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::PCS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

