
package Paws::M2::GetEnvironmentResponse;
  use Moose;
  has ActualCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'actualCapacity');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EngineType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineType', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineVersion', required => 1);
  has EnvironmentArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentArn', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId', required => 1);
  has HighAvailabilityConfig => (is => 'ro', isa => 'Paws::M2::HighAvailabilityConfig', traits => ['NameInRequest'], request_name => 'highAvailabilityConfig');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');
  has LoadBalancerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loadBalancerArn');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has NetworkType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkType');
  has PendingMaintenance => (is => 'ro', isa => 'Paws::M2::PendingMaintenance', traits => ['NameInRequest'], request_name => 'pendingMaintenance');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'preferredMaintenanceWindow');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publiclyAccessible');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');
  has StorageConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::M2::StorageConfiguration]', traits => ['NameInRequest'], request_name => 'storageConfigurations');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::M2::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetEnvironmentResponse

=head1 ATTRIBUTES


=head2 ActualCapacity => Int

The number of instances included in the runtime environment. A
standalone runtime environment has a maximum of one instance.
Currently, a high availability runtime environment has a maximum of two
instances.


=head2 B<REQUIRED> CreationTime => Str

The timestamp when the runtime environment was created.


=head2 Description => Str

The description of the runtime environment.


=head2 B<REQUIRED> EngineType => Str

The target platform for the runtime environment.

Valid values are: C<"microfocus">, C<"bluage">
=head2 B<REQUIRED> EngineVersion => Str

The version of the runtime engine.


=head2 B<REQUIRED> EnvironmentArn => Str

The Amazon Resource Name (ARN) of the runtime environment.


=head2 B<REQUIRED> EnvironmentId => Str

The unique identifier of the runtime environment.


=head2 HighAvailabilityConfig => L<Paws::M2::HighAvailabilityConfig>

The desired capacity of the high availability configuration for the
runtime environment.


=head2 B<REQUIRED> InstanceType => Str

The type of instance underlying the runtime environment.


=head2 KmsKeyId => Str

The identifier of a customer managed key.


=head2 LoadBalancerArn => Str

The Amazon Resource Name (ARN) for the load balancer used with the
runtime environment.


=head2 B<REQUIRED> Name => Str

The name of the runtime environment. Must be unique within the account.


=head2 NetworkType => Str

The network type supported by the runtime environment.

Valid values are: C<"ipv4">, C<"dual">
=head2 PendingMaintenance => L<Paws::M2::PendingMaintenance>

Indicates the pending maintenance scheduled on this environment.


=head2 PreferredMaintenanceWindow => Str

The maintenance window for the runtime environment. If you don't
provide a value for the maintenance window, the service assigns a
random value.


=head2 PubliclyAccessible => Bool

Whether applications running in this runtime environment are publicly
accessible.


=head2 B<REQUIRED> SecurityGroupIds => ArrayRef[Str|Undef]

The unique identifiers of the security groups assigned to this runtime
environment.


=head2 B<REQUIRED> Status => Str

The status of the runtime environment. If the Amazon Web Services
Mainframe Modernization environment is missing a connection to the
customer owned dependent resource, the status will be C<Unhealthy>.

Valid values are: C<"Creating">, C<"Available">, C<"Updating">, C<"Deleting">, C<"Failed">, C<"UnHealthy">
=head2 StatusReason => Str

The reason for the reported status.


=head2 StorageConfigurations => ArrayRef[L<Paws::M2::StorageConfiguration>]

The storage configurations defined for the runtime environment.


=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The unique identifiers of the subnets assigned to this runtime
environment.


=head2 Tags => L<Paws::M2::TagMap>

The tags defined for this runtime environment.


=head2 B<REQUIRED> VpcId => Str

The unique identifier for the VPC used with this runtime environment.


=head2 _request_id => Str


=cut

