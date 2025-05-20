package Paws::EC2::DescribeFastLaunchImagesSuccessItem;
  use Moose;
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest']);
  has LaunchTemplate => (is => 'ro', isa => 'Paws::EC2::FastLaunchLaunchTemplateSpecificationResponse', request_name => 'launchTemplate', traits => ['NameInRequest']);
  has MaxParallelLaunches => (is => 'ro', isa => 'Int', request_name => 'maxParallelLaunches', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has SnapshotConfiguration => (is => 'ro', isa => 'Paws::EC2::FastLaunchSnapshotConfigurationResponse', request_name => 'snapshotConfiguration', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has StateTransitionReason => (is => 'ro', isa => 'Str', request_name => 'stateTransitionReason', traits => ['NameInRequest']);
  has StateTransitionTime => (is => 'ro', isa => 'Str', request_name => 'stateTransitionTime', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFastLaunchImagesSuccessItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DescribeFastLaunchImagesSuccessItem object:

  $service_obj->Method(Att1 => { ImageId => $value, ..., StateTransitionTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DescribeFastLaunchImagesSuccessItem object:

  $result = $service_obj->Method(...);
  $result->Att1->ImageId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ImageId => Str

The image ID that identifies the Windows fast launch enabled image.


=head2 LaunchTemplate => L<Paws::EC2::FastLaunchLaunchTemplateSpecificationResponse>

The launch template that the Windows fast launch enabled AMI uses when
it launches Windows instances from pre-provisioned snapshots.


=head2 MaxParallelLaunches => Int

The maximum number of instances that Amazon EC2 can launch at the same
time to create pre-provisioned snapshots for Windows fast launch.


=head2 OwnerId => Str

The owner ID for the Windows fast launch enabled AMI.


=head2 ResourceType => Str

The resource type that Amazon EC2 uses for pre-provisioning the Windows
AMI. Supported values include: C<snapshot>.


=head2 SnapshotConfiguration => L<Paws::EC2::FastLaunchSnapshotConfigurationResponse>

A group of parameters that are used for pre-provisioning the associated
Windows AMI using snapshots.


=head2 State => Str

The current state of Windows fast launch for the specified Windows AMI.


=head2 StateTransitionReason => Str

The reason that Windows fast launch for the AMI changed to the current
state.


=head2 StateTransitionTime => Str

The time that Windows fast launch for the AMI changed to the current
state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
