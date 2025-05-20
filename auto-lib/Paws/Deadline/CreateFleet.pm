
package Paws::Deadline::CreateFleet;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has Configuration => (is => 'ro', isa => 'Paws::Deadline::FleetConfiguration', traits => ['NameInRequest'], request_name => 'configuration', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has HostConfiguration => (is => 'ro', isa => 'Paws::Deadline::HostConfiguration', traits => ['NameInRequest'], request_name => 'hostConfiguration');
  has MaxWorkerCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxWorkerCount', required => 1);
  has MinWorkerCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minWorkerCount');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Deadline::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFleet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/fleets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::CreateFleetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateFleet - Arguments for method CreateFleet on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFleet on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method CreateFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFleet.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $CreateFleetResponse = $deadline->CreateFleet(
      Configuration => {
        CustomerManaged => {
          Mode => 'NO_SCALING',   # values: NO_SCALING, EVENT_BASED_AUTO_SCALING
          WorkerCapabilities => {
            CpuArchitectureType => 'x86_64',    # values: x86_64, arm64
            MemoryMiB           => {
              Min => 1,                         # min: 512, max: 2147483647
              Max => 1,                         # min: 512, max: 2147483647
            },
            OsFamily  => 'WINDOWS',             # values: WINDOWS, LINUX, MACOS
            VCpuCount => {
              Min => 1,                         # min: 1, max: 10000
              Max => 1,                         # min: 1, max: 10000
            },
            AcceleratorCount => {
              Min => 1,                         # max: 2147483647
              Max => 1,                         # max: 2147483647
            },    # OPTIONAL
            AcceleratorTotalMemoryMiB => {
              Min => 1,    # max: 2147483647
              Max => 1,    # max: 2147483647
            },    # OPTIONAL
            AcceleratorTypes => [
              'gpu', ...    # values: gpu
            ],    # OPTIONAL
            CustomAmounts => [
              {
                Min  => 1.0,
                Name => 'MyAmountCapabilityName',    # min: 1, max: 100
                Max  => 1.0,
              },
              ...
            ],    # min: 1, max: 15; OPTIONAL
            CustomAttributes => [
              {
                Name   => 'MyAttributeCapabilityName',    # min: 1, max: 100
                Values => [
                  'MyAttributeCapabilityValue', ...       # min: 1, max: 100
                ],    # min: 1, max: 10

              },
              ...
            ],    # min: 1, max: 15; OPTIONAL
          },
          StorageProfileId   => 'MyStorageProfileId',    # OPTIONAL
          TagPropagationMode => 'NO_PROPAGATION'
          , # values: NO_PROPAGATION, PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH; OPTIONAL
        },    # OPTIONAL
        ServiceManagedEc2 => {
          InstanceCapabilities => {
            CpuArchitectureType => 'x86_64',    # values: x86_64, arm64
            MemoryMiB           => {
              Min => 1,                         # min: 512, max: 2147483647
              Max => 1,                         # min: 512, max: 2147483647
            },
            OsFamily  => 'WINDOWS',             # values: WINDOWS, LINUX
            VCpuCount => {
              Min => 1,                         # min: 1, max: 10000
              Max => 1,                         # min: 1, max: 10000
            },
            AcceleratorCapabilities => {
              Selections => [
                {
                  Name    => 't4',             # values: t4, a10g, l4, l40s
                  Runtime =>
                    'MyAcceleratorRuntime',    # min: 1, max: 100; OPTIONAL
                },
                ...
              ],
              Count => {
                Min => 1,    # max: 2147483647
                Max => 1,    # max: 2147483647
              },    # OPTIONAL
            },    # OPTIONAL
            AllowedInstanceTypes => [ 'MyInstanceType', ... ]
            ,     # min: 1, max: 100; OPTIONAL
            CustomAmounts => [
              {
                Min  => 1.0,
                Name => 'MyAmountCapabilityName',    # min: 1, max: 100
                Max  => 1.0,
              },
              ...
            ],    # min: 1, max: 15; OPTIONAL
            CustomAttributes => [
              {
                Name   => 'MyAttributeCapabilityName',    # min: 1, max: 100
                Values => [
                  'MyAttributeCapabilityValue', ...       # min: 1, max: 100
                ],    # min: 1, max: 10

              },
              ...
            ],    # min: 1, max: 15; OPTIONAL
            ExcludedInstanceTypes => [ 'MyInstanceType', ... ]
            ,     # min: 1, max: 100; OPTIONAL
            RootEbsVolume => {
              Iops          => 1,    # min: 3000, max: 16000; OPTIONAL
              SizeGiB       => 1,    # OPTIONAL
              ThroughputMiB => 1,    # min: 125, max: 1000; OPTIONAL
            },    # OPTIONAL
          },
          InstanceMarketOptions => {
            Type => 'on-demand',    # values: on-demand, spot

          },

        },    # OPTIONAL
      },
      DisplayName       => 'MyResourceName',
      FarmId            => 'MyFarmId',
      MaxWorkerCount    => 1,
      RoleArn           => 'MyIamRoleArn',
      ClientToken       => 'MyClientToken',    # OPTIONAL
      Description       => 'MyDescription',    # OPTIONAL
      HostConfiguration => {
        ScriptBody           => 'MyHostConfigurationScript',    # max: 15000
        ScriptTimeoutSeconds => 1,    # min: 300, max: 3600; OPTIONAL
      },    # OPTIONAL
      MinWorkerCount => 1,                                # OPTIONAL
      Tags           => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $FleetId = $CreateFleetResponse->FleetId;

    # Returns a L<Paws::Deadline::CreateFleetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/CreateFleet>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 B<REQUIRED> Configuration => L<Paws::Deadline::FleetConfiguration>

The configuration settings for the fleet. Customer managed fleets are
self-managed. Service managed Amazon EC2 fleets are managed by Deadline
Cloud.



=head2 Description => Str

The description of the fleet.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> DisplayName => Str

The display name of the fleet.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm to connect to the fleet.



=head2 HostConfiguration => L<Paws::Deadline::HostConfiguration>

Provides a script that runs as a worker is starting up that you can use
to provide additional configuration for workers in your fleet.



=head2 B<REQUIRED> MaxWorkerCount => Int

The maximum number of workers for the fleet.

Deadline Cloud limits the number of workers to less than or equal to
the fleet's maximum worker count. The service maintains eventual
consistency for the worker count. If you make multiple rapid calls to
C<CreateWorker> before the field updates, you might exceed your fleet's
maximum worker count. For example, if your C<maxWorkerCount> is 10 and
you currently have 9 workers, making two quick C<CreateWorker> calls
might successfully create 2 workers instead of 1, resulting in 11 total
workers.



=head2 MinWorkerCount => Int

The minimum number of workers for the fleet.



=head2 B<REQUIRED> RoleArn => Str

The IAM role ARN for the role that the fleet's workers will use.



=head2 Tags => L<Paws::Deadline::Tags>

Each tag consists of a tag key and a tag value. Tag keys and values are
both required, but tag values can be empty strings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFleet in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

