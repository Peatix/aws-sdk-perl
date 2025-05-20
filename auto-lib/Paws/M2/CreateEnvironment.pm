
package Paws::M2::CreateEnvironment;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EngineType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineType', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineVersion');
  has HighAvailabilityConfig => (is => 'ro', isa => 'Paws::M2::HighAvailabilityConfig', traits => ['NameInRequest'], request_name => 'highAvailabilityConfig');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has NetworkType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkType');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'preferredMaintenanceWindow');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publiclyAccessible');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds');
  has StorageConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::M2::StorageConfiguration]', traits => ['NameInRequest'], request_name => 'storageConfigurations');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds');
  has Tags => (is => 'ro', isa => 'Paws::M2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::CreateEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::CreateEnvironment - Arguments for method CreateEnvironment on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEnvironment on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method CreateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEnvironment.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $CreateEnvironmentResponse = $m2->CreateEnvironment(
      EngineType             => 'microfocus',
      InstanceType           => 'MyString20',
      Name                   => 'MyEntityName',
      ClientToken            => 'MyClientToken',          # OPTIONAL
      Description            => 'MyEntityDescription',    # OPTIONAL
      EngineVersion          => 'MyEngineVersion',        # OPTIONAL
      HighAvailabilityConfig => {
        DesiredCapacity => 1,

      },                                                  # OPTIONAL
      KmsKeyId                   => 'MyString',               # OPTIONAL
      NetworkType                => 'ipv4',                   # OPTIONAL
      PreferredMaintenanceWindow => 'MyString50',             # OPTIONAL
      PubliclyAccessible         => 1,                        # OPTIONAL
      SecurityGroupIds           => [ 'MyString50', ... ],    # OPTIONAL
      StorageConfigurations      => [
        {
          Efs => {
            FileSystemId => 'MyString200',
            MountPoint   => 'MyString200',

          },    # OPTIONAL
          Fsx => {
            FileSystemId => 'MyString200',
            MountPoint   => 'MyString200',

          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SubnetIds => [ 'MyString50', ... ],    # OPTIONAL
      Tags      => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $EnvironmentId = $CreateEnvironmentResponse->EnvironmentId;

    # Returns a L<Paws::M2::CreateEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/CreateEnvironment>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request to create an environment. The service generates the
clientToken when the API call is triggered. The token expires after one
hour, so if you retry the API within this timeframe with the same
clientToken, you will get the same response. The service also handles
deleting the clientToken after it expires.



=head2 Description => Str

The description of the runtime environment.



=head2 B<REQUIRED> EngineType => Str

The engine type for the runtime environment.

Valid values are: C<"microfocus">, C<"bluage">

=head2 EngineVersion => Str

The version of the engine type for the runtime environment.



=head2 HighAvailabilityConfig => L<Paws::M2::HighAvailabilityConfig>

The details of a high availability configuration for this runtime
environment.



=head2 B<REQUIRED> InstanceType => Str

The type of instance for the runtime environment.



=head2 KmsKeyId => Str

The identifier of a customer managed key.



=head2 B<REQUIRED> Name => Str

The name of the runtime environment. Must be unique within the account.



=head2 NetworkType => Str

The network type required for the runtime environment.

Valid values are: C<"ipv4">, C<"dual">

=head2 PreferredMaintenanceWindow => Str

Configures the maintenance window that you want for the runtime
environment. The maintenance window must have the format
C<ddd:hh24:mi-ddd:hh24:mi> and must be less than 24 hours. The
following two examples are valid maintenance windows:
C<sun:23:45-mon:00:15> or C<sat:01:00-sat:03:00>.

If you do not provide a value, a random system-generated value will be
assigned.



=head2 PubliclyAccessible => Bool

Specifies whether the runtime environment is publicly accessible.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The list of security groups for the VPC associated with this runtime
environment.



=head2 StorageConfigurations => ArrayRef[L<Paws::M2::StorageConfiguration>]

Optional. The storage configurations for this runtime environment.



=head2 SubnetIds => ArrayRef[Str|Undef]

The list of subnets associated with the VPC for this runtime
environment.



=head2 Tags => L<Paws::M2::TagMap>

The tags for the runtime environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironment in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

