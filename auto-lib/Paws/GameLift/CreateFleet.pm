
package Paws::GameLift::CreateFleet;
  use Moose;
  has AnywhereConfiguration => (is => 'ro', isa => 'Paws::GameLift::AnywhereConfiguration');
  has BuildId => (is => 'ro', isa => 'Str');
  has CertificateConfiguration => (is => 'ro', isa => 'Paws::GameLift::CertificateConfiguration');
  has ComputeType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EC2InboundPermissions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::IpPermission]');
  has EC2InstanceType => (is => 'ro', isa => 'Str');
  has FleetType => (is => 'ro', isa => 'Str');
  has InstanceRoleArn => (is => 'ro', isa => 'Str');
  has InstanceRoleCredentialsProvider => (is => 'ro', isa => 'Str');
  has Locations => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::LocationConfiguration]');
  has LogPaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MetricGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NewGameSessionProtectionPolicy => (is => 'ro', isa => 'Str');
  has PeerVpcAwsAccountId => (is => 'ro', isa => 'Str');
  has PeerVpcId => (is => 'ro', isa => 'Str');
  has ResourceCreationLimitPolicy => (is => 'ro', isa => 'Paws::GameLift::ResourceCreationLimitPolicy');
  has RuntimeConfiguration => (is => 'ro', isa => 'Paws::GameLift::RuntimeConfiguration');
  has ScriptId => (is => 'ro', isa => 'Str');
  has ServerLaunchParameters => (is => 'ro', isa => 'Str');
  has ServerLaunchPath => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateFleetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateFleet - Arguments for method CreateFleet on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFleet on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreateFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFleet.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $CreateFleetOutput = $gamelift->CreateFleet(
      Name                  => 'MyNonZeroAndMaxString',
      AnywhereConfiguration => {
        Cost => 'MyNonNegativeLimitedLengthDouble',    # min: 1, max: 11

      },    # OPTIONAL
      BuildId                  => 'MyBuildIdOrArn',    # OPTIONAL
      CertificateConfiguration => {
        CertificateType => 'DISABLED',    # values: DISABLED, GENERATED

      },    # OPTIONAL
      ComputeType           => 'EC2',                      # OPTIONAL
      Description           => 'MyNonZeroAndMaxString',    # OPTIONAL
      EC2InboundPermissions => [
        {
          FromPort => 1,             # min: 1, max: 60000
          IpRange  => 'MyIpRange',
          Protocol => 'TCP',         # values: TCP, UDP
          ToPort   => 1,             # min: 1, max: 60000

        },
        ...
      ],    # OPTIONAL
      EC2InstanceType                 => 't2.micro',                  # OPTIONAL
      FleetType                       => 'ON_DEMAND',                 # OPTIONAL
      InstanceRoleArn                 => 'MyNonEmptyString',          # OPTIONAL
      InstanceRoleCredentialsProvider => 'SHARED_CREDENTIAL_FILE',    # OPTIONAL
      Locations                       => [
        {
          Location => 'MyLocationStringModel',    # min: 1, max: 64

        },
        ...
      ],    # OPTIONAL
      LogPaths => [
        'MyNonZeroAndMaxString', ...    # min: 1, max: 1024
      ],    # OPTIONAL
      MetricGroups => [
        'MyMetricGroup', ...    # min: 1, max: 255
      ],    # OPTIONAL
      NewGameSessionProtectionPolicy => 'NoProtection',             # OPTIONAL
      PeerVpcAwsAccountId            => 'MyNonZeroAndMaxString',    # OPTIONAL
      PeerVpcId                      => 'MyNonZeroAndMaxString',    # OPTIONAL
      ResourceCreationLimitPolicy    => {
        NewGameSessionsPerCreator => 1,                             # OPTIONAL
        PolicyPeriodInMinutes     => 1,                             # OPTIONAL
      },    # OPTIONAL
      RuntimeConfiguration => {
        GameSessionActivationTimeoutSeconds => 1,   # min: 1, max: 600; OPTIONAL
        MaxConcurrentGameSessionActivations =>
          1,    # min: 1, max: 2147483647; OPTIONAL
        ServerProcesses => [
          {
            ConcurrentExecutions => 1,                  # min: 1
            LaunchPath => 'MyLaunchPathStringModel',    # min: 1, max: 1024
            Parameters =>
              'MyLaunchParametersStringModel',    # min: 1, max: 1024; OPTIONAL
          },
          ...
        ],    # min: 1, max: 50; OPTIONAL
      },    # OPTIONAL
      ScriptId               => 'MyScriptIdOrArn',                  # OPTIONAL
      ServerLaunchParameters => 'MyLaunchParametersStringModel',    # OPTIONAL
      ServerLaunchPath       => 'MyLaunchPathStringModel',          # OPTIONAL
      Tags                   => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $FleetAttributes = $CreateFleetOutput->FleetAttributes;
    my $LocationStates  = $CreateFleetOutput->LocationStates;

    # Returns a L<Paws::GameLift::CreateFleetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreateFleet>

=head1 ATTRIBUTES


=head2 AnywhereConfiguration => L<Paws::GameLift::AnywhereConfiguration>

Amazon GameLift Anywhere configuration options.



=head2 BuildId => Str

The unique identifier for a custom game server build to be deployed to
a fleet with compute type C<EC2>. You can use either the build ID or
ARN. The build must be uploaded to Amazon GameLift and in C<READY>
status. This fleet property can't be changed after the fleet is
created.



=head2 CertificateConfiguration => L<Paws::GameLift::CertificateConfiguration>

Prompts Amazon GameLift to generate a TLS/SSL certificate for the
fleet. Amazon GameLift uses the certificates to encrypt traffic between
game clients and the game servers running on Amazon GameLift. By
default, the C<CertificateConfiguration> is C<DISABLED>. You can't
change this property after you create the fleet.

Certificate Manager (ACM) certificates expire after 13 months.
Certificate expiration can cause fleets to fail, preventing players
from connecting to instances in the fleet. We recommend you replace
fleets before 13 months, consider using fleet aliases for a smooth
transition.

ACM isn't available in all Amazon Web Services regions. A fleet
creation request with certificate generation enabled in an unsupported
Region, fails with a 4xx error. For more information about the
supported Regions, see Supported Regions
(https://docs.aws.amazon.com/acm/latest/userguide/acm-regions.html) in
the I<Certificate Manager User Guide>.



=head2 ComputeType => Str

The type of compute resource used to host your game servers.

=over

=item *

C<EC2> E<ndash> The game server build is deployed to Amazon EC2
instances for cloud hosting. This is the default setting.

=item *

C<ANYWHERE> E<ndash> Game servers and supporting software are deployed
to compute resources that you provide and manage. With this compute
type, you can also set the C<AnywhereConfiguration> parameter.

=back


Valid values are: C<"EC2">, C<"ANYWHERE">

=head2 Description => Str

A description for the fleet.



=head2 EC2InboundPermissions => ArrayRef[L<Paws::GameLift::IpPermission>]

The IP address ranges and port settings that allow inbound traffic to
access game server processes and other processes on this fleet. Set
this parameter for managed EC2 fleets. You can leave this parameter
empty when creating the fleet, but you must call
https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetPortSettings
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetPortSettings)
to set it before players can connect to game sessions. As a best
practice, we recommend opening ports for remote access only when you
need them and closing them when you're finished. For Amazon GameLift
Realtime fleets, Amazon GameLift automatically sets TCP and UDP ranges.



=head2 EC2InstanceType => Str

The Amazon GameLift-supported Amazon EC2 instance type to use with
managed EC2 fleets. Instance type determines the computing resources
that will be used to host your game servers, including CPU, memory,
storage, and networking capacity. See Amazon Elastic Compute Cloud
Instance Types (http://aws.amazon.com/ec2/instance-types/) for detailed
descriptions of Amazon EC2 instance types.

Valid values are: C<"t2.micro">, C<"t2.small">, C<"t2.medium">, C<"t2.large">, C<"c3.large">, C<"c3.xlarge">, C<"c3.2xlarge">, C<"c3.4xlarge">, C<"c3.8xlarge">, C<"c4.large">, C<"c4.xlarge">, C<"c4.2xlarge">, C<"c4.4xlarge">, C<"c4.8xlarge">, C<"c5.large">, C<"c5.xlarge">, C<"c5.2xlarge">, C<"c5.4xlarge">, C<"c5.9xlarge">, C<"c5.12xlarge">, C<"c5.18xlarge">, C<"c5.24xlarge">, C<"c5a.large">, C<"c5a.xlarge">, C<"c5a.2xlarge">, C<"c5a.4xlarge">, C<"c5a.8xlarge">, C<"c5a.12xlarge">, C<"c5a.16xlarge">, C<"c5a.24xlarge">, C<"r3.large">, C<"r3.xlarge">, C<"r3.2xlarge">, C<"r3.4xlarge">, C<"r3.8xlarge">, C<"r4.large">, C<"r4.xlarge">, C<"r4.2xlarge">, C<"r4.4xlarge">, C<"r4.8xlarge">, C<"r4.16xlarge">, C<"r5.large">, C<"r5.xlarge">, C<"r5.2xlarge">, C<"r5.4xlarge">, C<"r5.8xlarge">, C<"r5.12xlarge">, C<"r5.16xlarge">, C<"r5.24xlarge">, C<"r5a.large">, C<"r5a.xlarge">, C<"r5a.2xlarge">, C<"r5a.4xlarge">, C<"r5a.8xlarge">, C<"r5a.12xlarge">, C<"r5a.16xlarge">, C<"r5a.24xlarge">, C<"m3.medium">, C<"m3.large">, C<"m3.xlarge">, C<"m3.2xlarge">, C<"m4.large">, C<"m4.xlarge">, C<"m4.2xlarge">, C<"m4.4xlarge">, C<"m4.10xlarge">, C<"m5.large">, C<"m5.xlarge">, C<"m5.2xlarge">, C<"m5.4xlarge">, C<"m5.8xlarge">, C<"m5.12xlarge">, C<"m5.16xlarge">, C<"m5.24xlarge">, C<"m5a.large">, C<"m5a.xlarge">, C<"m5a.2xlarge">, C<"m5a.4xlarge">, C<"m5a.8xlarge">, C<"m5a.12xlarge">, C<"m5a.16xlarge">, C<"m5a.24xlarge">, C<"c5d.large">, C<"c5d.xlarge">, C<"c5d.2xlarge">, C<"c5d.4xlarge">, C<"c5d.9xlarge">, C<"c5d.12xlarge">, C<"c5d.18xlarge">, C<"c5d.24xlarge">, C<"c6a.large">, C<"c6a.xlarge">, C<"c6a.2xlarge">, C<"c6a.4xlarge">, C<"c6a.8xlarge">, C<"c6a.12xlarge">, C<"c6a.16xlarge">, C<"c6a.24xlarge">, C<"c6i.large">, C<"c6i.xlarge">, C<"c6i.2xlarge">, C<"c6i.4xlarge">, C<"c6i.8xlarge">, C<"c6i.12xlarge">, C<"c6i.16xlarge">, C<"c6i.24xlarge">, C<"r5d.large">, C<"r5d.xlarge">, C<"r5d.2xlarge">, C<"r5d.4xlarge">, C<"r5d.8xlarge">, C<"r5d.12xlarge">, C<"r5d.16xlarge">, C<"r5d.24xlarge">, C<"m6g.medium">, C<"m6g.large">, C<"m6g.xlarge">, C<"m6g.2xlarge">, C<"m6g.4xlarge">, C<"m6g.8xlarge">, C<"m6g.12xlarge">, C<"m6g.16xlarge">, C<"c6g.medium">, C<"c6g.large">, C<"c6g.xlarge">, C<"c6g.2xlarge">, C<"c6g.4xlarge">, C<"c6g.8xlarge">, C<"c6g.12xlarge">, C<"c6g.16xlarge">, C<"r6g.medium">, C<"r6g.large">, C<"r6g.xlarge">, C<"r6g.2xlarge">, C<"r6g.4xlarge">, C<"r6g.8xlarge">, C<"r6g.12xlarge">, C<"r6g.16xlarge">, C<"c6gn.medium">, C<"c6gn.large">, C<"c6gn.xlarge">, C<"c6gn.2xlarge">, C<"c6gn.4xlarge">, C<"c6gn.8xlarge">, C<"c6gn.12xlarge">, C<"c6gn.16xlarge">, C<"c7g.medium">, C<"c7g.large">, C<"c7g.xlarge">, C<"c7g.2xlarge">, C<"c7g.4xlarge">, C<"c7g.8xlarge">, C<"c7g.12xlarge">, C<"c7g.16xlarge">, C<"r7g.medium">, C<"r7g.large">, C<"r7g.xlarge">, C<"r7g.2xlarge">, C<"r7g.4xlarge">, C<"r7g.8xlarge">, C<"r7g.12xlarge">, C<"r7g.16xlarge">, C<"m7g.medium">, C<"m7g.large">, C<"m7g.xlarge">, C<"m7g.2xlarge">, C<"m7g.4xlarge">, C<"m7g.8xlarge">, C<"m7g.12xlarge">, C<"m7g.16xlarge">, C<"g5g.xlarge">, C<"g5g.2xlarge">, C<"g5g.4xlarge">, C<"g5g.8xlarge">, C<"g5g.16xlarge">, C<"r6i.large">, C<"r6i.xlarge">, C<"r6i.2xlarge">, C<"r6i.4xlarge">, C<"r6i.8xlarge">, C<"r6i.12xlarge">, C<"r6i.16xlarge">, C<"c6gd.medium">, C<"c6gd.large">, C<"c6gd.xlarge">, C<"c6gd.2xlarge">, C<"c6gd.4xlarge">, C<"c6gd.8xlarge">, C<"c6gd.12xlarge">, C<"c6gd.16xlarge">, C<"c6in.large">, C<"c6in.xlarge">, C<"c6in.2xlarge">, C<"c6in.4xlarge">, C<"c6in.8xlarge">, C<"c6in.12xlarge">, C<"c6in.16xlarge">, C<"c7a.medium">, C<"c7a.large">, C<"c7a.xlarge">, C<"c7a.2xlarge">, C<"c7a.4xlarge">, C<"c7a.8xlarge">, C<"c7a.12xlarge">, C<"c7a.16xlarge">, C<"c7gd.medium">, C<"c7gd.large">, C<"c7gd.xlarge">, C<"c7gd.2xlarge">, C<"c7gd.4xlarge">, C<"c7gd.8xlarge">, C<"c7gd.12xlarge">, C<"c7gd.16xlarge">, C<"c7gn.medium">, C<"c7gn.large">, C<"c7gn.xlarge">, C<"c7gn.2xlarge">, C<"c7gn.4xlarge">, C<"c7gn.8xlarge">, C<"c7gn.12xlarge">, C<"c7gn.16xlarge">, C<"c7i.large">, C<"c7i.xlarge">, C<"c7i.2xlarge">, C<"c7i.4xlarge">, C<"c7i.8xlarge">, C<"c7i.12xlarge">, C<"c7i.16xlarge">, C<"m6a.large">, C<"m6a.xlarge">, C<"m6a.2xlarge">, C<"m6a.4xlarge">, C<"m6a.8xlarge">, C<"m6a.12xlarge">, C<"m6a.16xlarge">, C<"m6gd.medium">, C<"m6gd.large">, C<"m6gd.xlarge">, C<"m6gd.2xlarge">, C<"m6gd.4xlarge">, C<"m6gd.8xlarge">, C<"m6gd.12xlarge">, C<"m6gd.16xlarge">, C<"m6i.large">, C<"m6i.xlarge">, C<"m6i.2xlarge">, C<"m6i.4xlarge">, C<"m6i.8xlarge">, C<"m6i.12xlarge">, C<"m6i.16xlarge">, C<"m7a.medium">, C<"m7a.large">, C<"m7a.xlarge">, C<"m7a.2xlarge">, C<"m7a.4xlarge">, C<"m7a.8xlarge">, C<"m7a.12xlarge">, C<"m7a.16xlarge">, C<"m7gd.medium">, C<"m7gd.large">, C<"m7gd.xlarge">, C<"m7gd.2xlarge">, C<"m7gd.4xlarge">, C<"m7gd.8xlarge">, C<"m7gd.12xlarge">, C<"m7gd.16xlarge">, C<"m7i.large">, C<"m7i.xlarge">, C<"m7i.2xlarge">, C<"m7i.4xlarge">, C<"m7i.8xlarge">, C<"m7i.12xlarge">, C<"m7i.16xlarge">, C<"r6gd.medium">, C<"r6gd.large">, C<"r6gd.xlarge">, C<"r6gd.2xlarge">, C<"r6gd.4xlarge">, C<"r6gd.8xlarge">, C<"r6gd.12xlarge">, C<"r6gd.16xlarge">, C<"r7a.medium">, C<"r7a.large">, C<"r7a.xlarge">, C<"r7a.2xlarge">, C<"r7a.4xlarge">, C<"r7a.8xlarge">, C<"r7a.12xlarge">, C<"r7a.16xlarge">, C<"r7gd.medium">, C<"r7gd.large">, C<"r7gd.xlarge">, C<"r7gd.2xlarge">, C<"r7gd.4xlarge">, C<"r7gd.8xlarge">, C<"r7gd.12xlarge">, C<"r7gd.16xlarge">, C<"r7i.large">, C<"r7i.xlarge">, C<"r7i.2xlarge">, C<"r7i.4xlarge">, C<"r7i.8xlarge">, C<"r7i.12xlarge">, C<"r7i.16xlarge">, C<"r7i.24xlarge">, C<"r7i.48xlarge">, C<"c5ad.large">, C<"c5ad.xlarge">, C<"c5ad.2xlarge">, C<"c5ad.4xlarge">, C<"c5ad.8xlarge">, C<"c5ad.12xlarge">, C<"c5ad.16xlarge">, C<"c5ad.24xlarge">, C<"c5n.large">, C<"c5n.xlarge">, C<"c5n.2xlarge">, C<"c5n.4xlarge">, C<"c5n.9xlarge">, C<"c5n.18xlarge">, C<"r5ad.large">, C<"r5ad.xlarge">, C<"r5ad.2xlarge">, C<"r5ad.4xlarge">, C<"r5ad.8xlarge">, C<"r5ad.12xlarge">, C<"r5ad.16xlarge">, C<"r5ad.24xlarge">, C<"c6id.large">, C<"c6id.xlarge">, C<"c6id.2xlarge">, C<"c6id.4xlarge">, C<"c6id.8xlarge">, C<"c6id.12xlarge">, C<"c6id.16xlarge">, C<"c6id.24xlarge">, C<"c6id.32xlarge">, C<"c8g.medium">, C<"c8g.large">, C<"c8g.xlarge">, C<"c8g.2xlarge">, C<"c8g.4xlarge">, C<"c8g.8xlarge">, C<"c8g.12xlarge">, C<"c8g.16xlarge">, C<"c8g.24xlarge">, C<"c8g.48xlarge">, C<"m5ad.large">, C<"m5ad.xlarge">, C<"m5ad.2xlarge">, C<"m5ad.4xlarge">, C<"m5ad.8xlarge">, C<"m5ad.12xlarge">, C<"m5ad.16xlarge">, C<"m5ad.24xlarge">, C<"m5d.large">, C<"m5d.xlarge">, C<"m5d.2xlarge">, C<"m5d.4xlarge">, C<"m5d.8xlarge">, C<"m5d.12xlarge">, C<"m5d.16xlarge">, C<"m5d.24xlarge">, C<"m5dn.large">, C<"m5dn.xlarge">, C<"m5dn.2xlarge">, C<"m5dn.4xlarge">, C<"m5dn.8xlarge">, C<"m5dn.12xlarge">, C<"m5dn.16xlarge">, C<"m5dn.24xlarge">, C<"m5n.large">, C<"m5n.xlarge">, C<"m5n.2xlarge">, C<"m5n.4xlarge">, C<"m5n.8xlarge">, C<"m5n.12xlarge">, C<"m5n.16xlarge">, C<"m5n.24xlarge">, C<"m6id.large">, C<"m6id.xlarge">, C<"m6id.2xlarge">, C<"m6id.4xlarge">, C<"m6id.8xlarge">, C<"m6id.12xlarge">, C<"m6id.16xlarge">, C<"m6id.24xlarge">, C<"m6id.32xlarge">, C<"m6idn.large">, C<"m6idn.xlarge">, C<"m6idn.2xlarge">, C<"m6idn.4xlarge">, C<"m6idn.8xlarge">, C<"m6idn.12xlarge">, C<"m6idn.16xlarge">, C<"m6idn.24xlarge">, C<"m6idn.32xlarge">, C<"m6in.large">, C<"m6in.xlarge">, C<"m6in.2xlarge">, C<"m6in.4xlarge">, C<"m6in.8xlarge">, C<"m6in.12xlarge">, C<"m6in.16xlarge">, C<"m6in.24xlarge">, C<"m6in.32xlarge">, C<"m8g.medium">, C<"m8g.large">, C<"m8g.xlarge">, C<"m8g.2xlarge">, C<"m8g.4xlarge">, C<"m8g.8xlarge">, C<"m8g.12xlarge">, C<"m8g.16xlarge">, C<"m8g.24xlarge">, C<"m8g.48xlarge">, C<"r5dn.large">, C<"r5dn.xlarge">, C<"r5dn.2xlarge">, C<"r5dn.4xlarge">, C<"r5dn.8xlarge">, C<"r5dn.12xlarge">, C<"r5dn.16xlarge">, C<"r5dn.24xlarge">, C<"r5n.large">, C<"r5n.xlarge">, C<"r5n.2xlarge">, C<"r5n.4xlarge">, C<"r5n.8xlarge">, C<"r5n.12xlarge">, C<"r5n.16xlarge">, C<"r5n.24xlarge">, C<"r6a.large">, C<"r6a.xlarge">, C<"r6a.2xlarge">, C<"r6a.4xlarge">, C<"r6a.8xlarge">, C<"r6a.12xlarge">, C<"r6a.16xlarge">, C<"r6a.24xlarge">, C<"r6a.32xlarge">, C<"r6a.48xlarge">, C<"r6id.large">, C<"r6id.xlarge">, C<"r6id.2xlarge">, C<"r6id.4xlarge">, C<"r6id.8xlarge">, C<"r6id.12xlarge">, C<"r6id.16xlarge">, C<"r6id.24xlarge">, C<"r6id.32xlarge">, C<"r6idn.large">, C<"r6idn.xlarge">, C<"r6idn.2xlarge">, C<"r6idn.4xlarge">, C<"r6idn.8xlarge">, C<"r6idn.12xlarge">, C<"r6idn.16xlarge">, C<"r6idn.24xlarge">, C<"r6idn.32xlarge">, C<"r6in.large">, C<"r6in.xlarge">, C<"r6in.2xlarge">, C<"r6in.4xlarge">, C<"r6in.8xlarge">, C<"r6in.12xlarge">, C<"r6in.16xlarge">, C<"r6in.24xlarge">, C<"r6in.32xlarge">, C<"r8g.medium">, C<"r8g.large">, C<"r8g.xlarge">, C<"r8g.2xlarge">, C<"r8g.4xlarge">, C<"r8g.8xlarge">, C<"r8g.12xlarge">, C<"r8g.16xlarge">, C<"r8g.24xlarge">, C<"r8g.48xlarge">, C<"m4.16xlarge">, C<"c6a.32xlarge">, C<"c6a.48xlarge">, C<"c6i.32xlarge">, C<"r6i.24xlarge">, C<"r6i.32xlarge">, C<"c6in.24xlarge">, C<"c6in.32xlarge">, C<"c7a.24xlarge">, C<"c7a.32xlarge">, C<"c7a.48xlarge">, C<"c7i.24xlarge">, C<"c7i.48xlarge">, C<"m6a.24xlarge">, C<"m6a.32xlarge">, C<"m6a.48xlarge">, C<"m6i.24xlarge">, C<"m6i.32xlarge">, C<"m7a.24xlarge">, C<"m7a.32xlarge">, C<"m7a.48xlarge">, C<"m7i.24xlarge">, C<"m7i.48xlarge">, C<"r7a.24xlarge">, C<"r7a.32xlarge">, C<"r7a.48xlarge">

=head2 FleetType => Str

Indicates whether to use On-Demand or Spot instances for this fleet. By
default, this property is set to C<ON_DEMAND>. Learn more about when to
use On-Demand versus Spot Instances
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot).
This fleet property can't be changed after the fleet is created.

Valid values are: C<"ON_DEMAND">, C<"SPOT">

=head2 InstanceRoleArn => Str

A unique identifier for an IAM role that manages access to your Amazon
Web Services services. With an instance role ARN set, any application
that runs on an instance in this fleet can assume the role, including
install scripts, server processes, and daemons (background processes).
Create a role or look up a role's ARN by using the IAM dashboard
(https://console.aws.amazon.com/iam/) in the Amazon Web Services
Management Console. Learn more about using on-box credentials for your
game servers at Access external resources from a game server
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html).
This fleet property can't be changed after the fleet is created.



=head2 InstanceRoleCredentialsProvider => Str

Prompts Amazon GameLift to generate a shared credentials file for the
IAM role that's defined in C<InstanceRoleArn>. The shared credentials
file is stored on each fleet instance and refreshed as needed. Use
shared credentials for applications that are deployed along with the
game server executable, if the game server is integrated with server
SDK version 5.x. For more information about using shared credentials,
see Communicate with other Amazon Web Services resources from your
fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html).

Valid values are: C<"SHARED_CREDENTIAL_FILE">

=head2 Locations => ArrayRef[L<Paws::GameLift::LocationConfiguration>]

A set of remote locations to deploy additional instances to and manage
as a multi-location fleet. Use this parameter when creating a fleet in
Amazon Web Services Regions that support multiple locations. You can
add any Amazon Web Services Region or Local Zone that's supported by
Amazon GameLift. Provide a list of one or more Amazon Web Services
Region codes, such as C<us-west-2>, or Local Zone names. When using
this parameter, Amazon GameLift requires you to include your home
location in the request. For a list of supported Regions and Local
Zones, see Amazon GameLift service locations
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html)
for managed hosting.



=head2 LogPaths => ArrayRef[Str|Undef]

B<This parameter is no longer used.> To specify where Amazon GameLift
should store log files once a server process shuts down, use the Amazon
GameLift server API C<ProcessReady()> and specify one or more directory
paths in C<logParameters>. For more information, see Initialize the
server process
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-initialize)
in the I<Amazon GameLift Developer Guide>.



=head2 MetricGroups => ArrayRef[Str|Undef]

The name of an Amazon Web Services CloudWatch metric group to add this
fleet to. A metric group is used to aggregate the metrics for multiple
fleets. You can specify an existing metric group name or set a new name
to create a new metric group. A fleet can be included in only one
metric group at a time.



=head2 B<REQUIRED> Name => Str

A descriptive label that is associated with a fleet. Fleet names do not
need to be unique.



=head2 NewGameSessionProtectionPolicy => Str

The status of termination protection for active game sessions on the
fleet. By default, this property is set to C<NoProtection>. You can
also set game session protection for an individual game session by
calling UpdateGameSession.

=over

=item *

B<NoProtection> - Game sessions can be terminated during active
gameplay as a result of a scale-down event.

=item *

B<FullProtection> - Game sessions in C<ACTIVE> status cannot be
terminated during a scale-down event.

=back


Valid values are: C<"NoProtection">, C<"FullProtection">

=head2 PeerVpcAwsAccountId => Str

Used when peering your Amazon GameLift fleet with a VPC, the unique
identifier for the Amazon Web Services account that owns the VPC. You
can find your account ID in the Amazon Web Services Management Console
under account settings.



=head2 PeerVpcId => Str

A unique identifier for a VPC with resources to be accessed by your
Amazon GameLift fleet. The VPC must be in the same Region as your
fleet. To look up a VPC ID, use the VPC Dashboard
(https://console.aws.amazon.com/vpc/) in the Amazon Web Services
Management Console. Learn more about VPC peering in VPC Peering with
Amazon GameLift Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).



=head2 ResourceCreationLimitPolicy => L<Paws::GameLift::ResourceCreationLimitPolicy>

A policy that limits the number of game sessions that an individual
player can create on instances in this fleet within a specified span of
time.



=head2 RuntimeConfiguration => L<Paws::GameLift::RuntimeConfiguration>

Instructions for how to launch and run server processes on the fleet.
Set runtime configuration for managed EC2 fleets. For an Anywhere
fleets, set this parameter only if the fleet is running the Amazon
GameLift Agent. The runtime configuration defines one or more server
process configurations. Each server process identifies a game
executable or Realtime script file and the number of processes to run
concurrently.

This parameter replaces the parameters C<ServerLaunchPath> and
C<ServerLaunchParameters>, which are still supported for backward
compatibility.



=head2 ScriptId => Str

The unique identifier for a Realtime configuration script to be
deployed to a fleet with compute type C<EC2>. You can use either the
script ID or ARN. Scripts must be uploaded to Amazon GameLift prior to
creating the fleet. This fleet property can't be changed after the
fleet is created.



=head2 ServerLaunchParameters => Str

B<This parameter is no longer used.> Specify server launch parameters
using the C<RuntimeConfiguration> parameter. Requests that use this
parameter instead continue to be valid.



=head2 ServerLaunchPath => Str

B<This parameter is no longer used.> Specify a server launch path using
the C<RuntimeConfiguration> parameter. Requests that use this parameter
instead continue to be valid.



=head2 Tags => ArrayRef[L<Paws::GameLift::Tag>]

A list of labels to assign to the new fleet resource. Tags are
developer-defined key-value pairs. Tagging Amazon Web Services
resources are useful for resource management, access management and
cost allocation. For more information, see Tagging Amazon Web Services
Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFleet in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

