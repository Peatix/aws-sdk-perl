
package Paws::EC2::CreateLaunchTemplateVersion;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has LaunchTemplateData => (is => 'ro', isa => 'Paws::EC2::RequestLaunchTemplateData', required => 1);
  has LaunchTemplateId => (is => 'ro', isa => 'Str');
  has LaunchTemplateName => (is => 'ro', isa => 'Str');
  has ResolveAlias => (is => 'ro', isa => 'Bool');
  has SourceVersion => (is => 'ro', isa => 'Str');
  has VersionDescription => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLaunchTemplateVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateLaunchTemplateVersionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateLaunchTemplateVersion - Arguments for method CreateLaunchTemplateVersion on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLaunchTemplateVersion on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateLaunchTemplateVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLaunchTemplateVersion.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
  # To create a launch template version
  # This example creates a new launch template version based on version 1 of the
  # specified launch template and specifies a different AMI ID.
    my $CreateLaunchTemplateVersionResult = $ec2->CreateLaunchTemplateVersion(
      'LaunchTemplateData' => {
        'ImageId' => 'ami-c998b6b2'
      },
      'LaunchTemplateId'   => 'lt-0abcd290751193123',
      'SourceVersion'      => 1,
      'VersionDescription' => 'WebVersion2'
    );

    # Results:
    my $LaunchTemplateVersion =
      $CreateLaunchTemplateVersionResult->LaunchTemplateVersion;

    # Returns a L<Paws::EC2::CreateLaunchTemplateVersionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateLaunchTemplateVersion>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. If a client token isn't specified, a randomly generated
token is used in the request to ensure idempotency.

For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).

Constraint: Maximum 128 ASCII characters.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> LaunchTemplateData => L<Paws::EC2::RequestLaunchTemplateData>

The information for the launch template.



=head2 LaunchTemplateId => Str

The ID of the launch template.

You must specify either the launch template ID or the launch template
name, but not both.



=head2 LaunchTemplateName => Str

The name of the launch template.

You must specify either the launch template ID or the launch template
name, but not both.



=head2 ResolveAlias => Bool

If C<true>, and if a Systems Manager parameter is specified for
C<ImageId>, the AMI ID is displayed in the response for C<imageID>. For
more information, see Use a Systems Manager parameter instead of an AMI
ID
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-launch-template.html#use-an-ssm-parameter-instead-of-an-ami-id)
in the I<Amazon EC2 User Guide>.

Default: C<false>



=head2 SourceVersion => Str

The version of the launch template on which to base the new version.
Snapshots applied to the block device mapping are ignored when creating
a new version unless they are explicitly included.

If you specify this parameter, the new version inherits the launch
parameters from the source version. If you specify additional launch
parameters for the new version, they overwrite any corresponding launch
parameters inherited from the source version.

If you omit this parameter, the new version contains only the launch
parameters that you specify for the new version.



=head2 VersionDescription => Str

A description for the version of the launch template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLaunchTemplateVersion in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

