
package Paws::EC2::EnableFastLaunch;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has LaunchTemplate => (is => 'ro', isa => 'Paws::EC2::FastLaunchLaunchTemplateSpecificationRequest');
  has MaxParallelLaunches => (is => 'ro', isa => 'Int');
  has ResourceType => (is => 'ro', isa => 'Str');
  has SnapshotConfiguration => (is => 'ro', isa => 'Paws::EC2::FastLaunchSnapshotConfigurationRequest');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableFastLaunch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::EnableFastLaunchResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableFastLaunch - Arguments for method EnableFastLaunch on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableFastLaunch on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method EnableFastLaunch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableFastLaunch.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $EnableFastLaunchResult = $ec2->EnableFastLaunch(
      ImageId        => 'MyImageId',
      DryRun         => 1,             # OPTIONAL
      LaunchTemplate => {
        Version            => 'MyString',
        LaunchTemplateId   => 'MyLaunchTemplateId',    # OPTIONAL
        LaunchTemplateName => 'MyString',
      },    # OPTIONAL
      MaxParallelLaunches   => 1,                                # OPTIONAL
      ResourceType          => 'MyString',                       # OPTIONAL
      SnapshotConfiguration => { TargetResourceCount => 1, },    # OPTIONAL
    );

    # Results:
    my $ImageId               = $EnableFastLaunchResult->ImageId;
    my $LaunchTemplate        = $EnableFastLaunchResult->LaunchTemplate;
    my $MaxParallelLaunches   = $EnableFastLaunchResult->MaxParallelLaunches;
    my $OwnerId               = $EnableFastLaunchResult->OwnerId;
    my $ResourceType          = $EnableFastLaunchResult->ResourceType;
    my $SnapshotConfiguration = $EnableFastLaunchResult->SnapshotConfiguration;
    my $State                 = $EnableFastLaunchResult->State;
    my $StateTransitionReason = $EnableFastLaunchResult->StateTransitionReason;
    my $StateTransitionTime   = $EnableFastLaunchResult->StateTransitionTime;

    # Returns a L<Paws::EC2::EnableFastLaunchResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/EnableFastLaunch>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> ImageId => Str

Specify the ID of the image for which to enable Windows fast launch.



=head2 LaunchTemplate => L<Paws::EC2::FastLaunchLaunchTemplateSpecificationRequest>

The launch template to use when launching Windows instances from
pre-provisioned snapshots. Launch template parameters can include
either the name or ID of the launch template, but not both.



=head2 MaxParallelLaunches => Int

The maximum number of instances that Amazon EC2 can launch at the same
time to create pre-provisioned snapshots for Windows fast launch. Value
must be C<6> or greater.



=head2 ResourceType => Str

The type of resource to use for pre-provisioning the AMI for Windows
fast launch. Supported values include: C<snapshot>, which is the
default value.



=head2 SnapshotConfiguration => L<Paws::EC2::FastLaunchSnapshotConfigurationRequest>

Configuration settings for creating and managing the snapshots that are
used for pre-provisioning the AMI for Windows fast launch. The
associated C<ResourceType> must be C<snapshot>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableFastLaunch in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

