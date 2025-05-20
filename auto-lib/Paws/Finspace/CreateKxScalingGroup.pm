
package Paws::Finspace::CreateKxScalingGroup;
  use Moose;
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZoneId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has HostType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hostType', required => 1);
  has ScalingGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scalingGroupName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Finspace::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKxScalingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/scalingGroups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::CreateKxScalingGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::CreateKxScalingGroup - Arguments for method CreateKxScalingGroup on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKxScalingGroup on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method CreateKxScalingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKxScalingGroup.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $CreateKxScalingGroupResponse = $finspace->CreateKxScalingGroup(
      AvailabilityZoneId => 'MyAvailabilityZoneId',
      ClientToken        => 'MyClientToken',
      EnvironmentId      => 'MyKxEnvironmentId',
      HostType           => 'MyKxHostType',
      ScalingGroupName   => 'MyKxScalingGroupName',
      Tags               => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AvailabilityZoneId = $CreateKxScalingGroupResponse->AvailabilityZoneId;
    my $CreatedTimestamp   = $CreateKxScalingGroupResponse->CreatedTimestamp;
    my $EnvironmentId      = $CreateKxScalingGroupResponse->EnvironmentId;
    my $HostType           = $CreateKxScalingGroupResponse->HostType;
    my $LastModifiedTimestamp =
      $CreateKxScalingGroupResponse->LastModifiedTimestamp;
    my $ScalingGroupName = $CreateKxScalingGroupResponse->ScalingGroupName;
    my $Status           = $CreateKxScalingGroupResponse->Status;

    # Returns a L<Paws::Finspace::CreateKxScalingGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/CreateKxScalingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZoneId => Str

The identifier of the availability zones.



=head2 B<REQUIRED> ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment, where you want to create
the scaling group.



=head2 B<REQUIRED> HostType => Str

The memory and CPU capabilities of the scaling group host on which
FinSpace Managed kdb clusters will be placed.

You can add one of the following values:

=over

=item *

C<kx.sg.large> E<ndash> The host type with a configuration of 16 GiB
memory and 2 vCPUs.

=item *

C<kx.sg.xlarge> E<ndash> The host type with a configuration of 32 GiB
memory and 4 vCPUs.

=item *

C<kx.sg.2xlarge> E<ndash> The host type with a configuration of 64 GiB
memory and 8 vCPUs.

=item *

C<kx.sg.4xlarge> E<ndash> The host type with a configuration of 108 GiB
memory and 16 vCPUs.

=item *

C<kx.sg.8xlarge> E<ndash> The host type with a configuration of 216 GiB
memory and 32 vCPUs.

=item *

C<kx.sg.16xlarge> E<ndash> The host type with a configuration of 432
GiB memory and 64 vCPUs.

=item *

C<kx.sg.32xlarge> E<ndash> The host type with a configuration of 864
GiB memory and 128 vCPUs.

=item *

C<kx.sg1.16xlarge> E<ndash> The host type with a configuration of 1949
GiB memory and 64 vCPUs.

=item *

C<kx.sg1.24xlarge> E<ndash> The host type with a configuration of 2948
GiB memory and 96 vCPUs.

=back




=head2 B<REQUIRED> ScalingGroupName => Str

A unique identifier for the kdb scaling group.



=head2 Tags => L<Paws::Finspace::TagMap>

A list of key-value pairs to label the scaling group. You can add up to
50 tags to a scaling group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKxScalingGroup in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

