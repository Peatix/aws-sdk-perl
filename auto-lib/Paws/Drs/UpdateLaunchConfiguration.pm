
package Paws::Drs::UpdateLaunchConfiguration;
  use Moose;
  has CopyPrivateIp => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyPrivateIp');
  has CopyTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyTags');
  has LaunchDisposition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchDisposition');
  has LaunchIntoInstanceProperties => (is => 'ro', isa => 'Paws::Drs::LaunchIntoInstanceProperties', traits => ['NameInRequest'], request_name => 'launchIntoInstanceProperties');
  has Licensing => (is => 'ro', isa => 'Paws::Drs::Licensing', traits => ['NameInRequest'], request_name => 'licensing');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PostLaunchEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'postLaunchEnabled');
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID', required => 1);
  has TargetInstanceTypeRightSizingMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetInstanceTypeRightSizingMethod');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLaunchConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateLaunchConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::LaunchConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::UpdateLaunchConfiguration - Arguments for method UpdateLaunchConfiguration on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLaunchConfiguration on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method UpdateLaunchConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLaunchConfiguration.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $LaunchConfiguration = $drs->UpdateLaunchConfiguration(
      SourceServerID               => 'MySourceServerID',
      CopyPrivateIp                => 1,                    # OPTIONAL
      CopyTags                     => 1,                    # OPTIONAL
      LaunchDisposition            => 'STOPPED',            # OPTIONAL
      LaunchIntoInstanceProperties => {
        LaunchIntoEC2InstanceID => 'MyEC2InstanceID',       # max: 255; OPTIONAL
      },    # OPTIONAL
      Licensing                           => { OsByol => 1, },        # OPTIONAL
      Name                                => 'MySmallBoundedString',  # OPTIONAL
      PostLaunchEnabled                   => 1,                       # OPTIONAL
      TargetInstanceTypeRightSizingMethod => 'NONE',                  # OPTIONAL
    );

    # Results:
    my $CopyPrivateIp       = $LaunchConfiguration->CopyPrivateIp;
    my $CopyTags            = $LaunchConfiguration->CopyTags;
    my $Ec2LaunchTemplateID = $LaunchConfiguration->Ec2LaunchTemplateID;
    my $LaunchDisposition   = $LaunchConfiguration->LaunchDisposition;
    my $LaunchIntoInstanceProperties =
      $LaunchConfiguration->LaunchIntoInstanceProperties;
    my $Licensing         = $LaunchConfiguration->Licensing;
    my $Name              = $LaunchConfiguration->Name;
    my $PostLaunchEnabled = $LaunchConfiguration->PostLaunchEnabled;
    my $SourceServerID    = $LaunchConfiguration->SourceServerID;
    my $TargetInstanceTypeRightSizingMethod =
      $LaunchConfiguration->TargetInstanceTypeRightSizingMethod;

    # Returns a L<Paws::Drs::LaunchConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/UpdateLaunchConfiguration>

=head1 ATTRIBUTES


=head2 CopyPrivateIp => Bool

Whether we should copy the Private IP of the Source Server to the
Recovery Instance.



=head2 CopyTags => Bool

Whether we want to copy the tags of the Source Server to the EC2
machine of the Recovery Instance.



=head2 LaunchDisposition => Str

The state of the Recovery Instance in EC2 after the recovery operation.

Valid values are: C<"STOPPED">, C<"STARTED">

=head2 LaunchIntoInstanceProperties => L<Paws::Drs::LaunchIntoInstanceProperties>

Launch into existing instance properties.



=head2 Licensing => L<Paws::Drs::Licensing>

The licensing configuration to be used for this launch configuration.



=head2 Name => Str

The name of the launch configuration.



=head2 PostLaunchEnabled => Bool

Whether we want to enable post-launch actions for the Source Server.



=head2 B<REQUIRED> SourceServerID => Str

The ID of the Source Server that we want to retrieve a Launch
Configuration for.



=head2 TargetInstanceTypeRightSizingMethod => Str

Whether Elastic Disaster Recovery should try to automatically choose
the instance type that best matches the OS, CPU, and RAM of your Source
Server.

Valid values are: C<"NONE">, C<"BASIC">, C<"IN_AWS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLaunchConfiguration in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

