
package Paws::Drs::CreateLaunchConfigurationTemplate;
  use Moose;
  has CopyPrivateIp => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyPrivateIp');
  has CopyTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyTags');
  has ExportBucketArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportBucketArn');
  has LaunchDisposition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchDisposition');
  has LaunchIntoSourceInstance => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'launchIntoSourceInstance');
  has Licensing => (is => 'ro', isa => 'Paws::Drs::Licensing', traits => ['NameInRequest'], request_name => 'licensing');
  has PostLaunchEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'postLaunchEnabled');
  has Tags => (is => 'ro', isa => 'Paws::Drs::TagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has TargetInstanceTypeRightSizingMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetInstanceTypeRightSizingMethod');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLaunchConfigurationTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateLaunchConfigurationTemplate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::CreateLaunchConfigurationTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::CreateLaunchConfigurationTemplate - Arguments for method CreateLaunchConfigurationTemplate on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLaunchConfigurationTemplate on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method CreateLaunchConfigurationTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLaunchConfigurationTemplate.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $CreateLaunchConfigurationTemplateResponse =
      $drs->CreateLaunchConfigurationTemplate(
      CopyPrivateIp            => 1,                   # OPTIONAL
      CopyTags                 => 1,                   # OPTIONAL
      ExportBucketArn          => 'MyARN',             # OPTIONAL
      LaunchDisposition        => 'STOPPED',           # OPTIONAL
      LaunchIntoSourceInstance => 1,                   # OPTIONAL
      Licensing                => { OsByol => 1, },    # OPTIONAL
      PostLaunchEnabled        => 1,                   # OPTIONAL
      Tags                     => {
        'MyTagKey' => 'MyTagValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
      TargetInstanceTypeRightSizingMethod => 'NONE',    # OPTIONAL
      );

    # Results:
    my $LaunchConfigurationTemplate =
      $CreateLaunchConfigurationTemplateResponse->LaunchConfigurationTemplate;

    # Returns a L<Paws::Drs::CreateLaunchConfigurationTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/CreateLaunchConfigurationTemplate>

=head1 ATTRIBUTES


=head2 CopyPrivateIp => Bool

Copy private IP.



=head2 CopyTags => Bool

Copy tags.



=head2 ExportBucketArn => Str

S3 bucket ARN to export Source Network templates.



=head2 LaunchDisposition => Str

Launch disposition.

Valid values are: C<"STOPPED">, C<"STARTED">

=head2 LaunchIntoSourceInstance => Bool

DRS will set the 'launch into instance ID' of any source server when
performing a drill, recovery or failback to the previous region or
availability zone, using the instance ID of the source instance.



=head2 Licensing => L<Paws::Drs::Licensing>

Licensing.



=head2 PostLaunchEnabled => Bool

Whether we want to activate post-launch actions.



=head2 Tags => L<Paws::Drs::TagsMap>

Request to associate tags during creation of a Launch Configuration
Template.



=head2 TargetInstanceTypeRightSizingMethod => Str

Target instance type right-sizing method.

Valid values are: C<"NONE">, C<"BASIC">, C<"IN_AWS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLaunchConfigurationTemplate in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

