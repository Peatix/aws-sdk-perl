
package Paws::EC2::DescribeLaunchTemplateVersions;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has LaunchTemplateId => (is => 'ro', isa => 'Str');
  has LaunchTemplateName => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has MaxVersion => (is => 'ro', isa => 'Str');
  has MinVersion => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResolveAlias => (is => 'ro', isa => 'Bool');
  has Versions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'LaunchTemplateVersion' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLaunchTemplateVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeLaunchTemplateVersionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeLaunchTemplateVersions - Arguments for method DescribeLaunchTemplateVersions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLaunchTemplateVersions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeLaunchTemplateVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLaunchTemplateVersions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe the versions for a launch template
    # This example describes the versions for the specified launch template.
    my $DescribeLaunchTemplateVersionsResult =
      $ec2->DescribeLaunchTemplateVersions(
      'LaunchTemplateId' => '068f72b72934aff71' );

    # Results:
    my $LaunchTemplateVersions =
      $DescribeLaunchTemplateVersionsResult->LaunchTemplateVersions;

    # Returns a L<Paws::EC2::DescribeLaunchTemplateVersionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeLaunchTemplateVersions>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<create-time> - The time the launch template version was created.

=item *

C<ebs-optimized> - A boolean that indicates whether the instance is
optimized for Amazon EBS I/O.

=item *

C<http-endpoint> - Indicates whether the HTTP metadata endpoint on your
instances is enabled (C<enabled> | C<disabled>).

=item *

C<http-protocol-ipv4> - Indicates whether the IPv4 endpoint for the
instance metadata service is enabled (C<enabled> | C<disabled>).

=item *

C<host-resource-group-arn> - The ARN of the host resource group in
which to launch the instances.

=item *

C<http-tokens> - The state of token usage for your instance metadata
requests (C<optional> | C<required>).

=item *

C<iam-instance-profile> - The ARN of the IAM instance profile.

=item *

C<image-id> - The ID of the AMI.

=item *

C<instance-type> - The instance type.

=item *

C<is-default-version> - A boolean that indicates whether the launch
template version is the default version.

=item *

C<kernel-id> - The kernel ID.

=item *

C<license-configuration-arn> - The ARN of the license configuration.

=item *

C<network-card-index> - The index of the network card.

=item *

C<ram-disk-id> - The RAM disk ID.

=back




=head2 LaunchTemplateId => Str

The ID of the launch template.

To describe one or more versions of a specified launch template, you
must specify either the launch template ID or the launch template name,
but not both.

To describe all the latest or default launch template versions in your
account, you must omit this parameter.



=head2 LaunchTemplateName => Str

The name of the launch template.

To describe one or more versions of a specified launch template, you
must specify either the launch template name or the launch template ID,
but not both.

To describe all the latest or default launch template versions in your
account, you must omit this parameter.



=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned C<NextToken>
value. This value can be between 1 and 200.



=head2 MaxVersion => Str

The version number up to which to describe launch template versions.



=head2 MinVersion => Str

The version number after which to describe launch template versions.



=head2 NextToken => Str

The token to request the next page of results.



=head2 ResolveAlias => Bool

If C<true>, and if a Systems Manager parameter is specified for
C<ImageId>, the AMI ID is displayed in the response for C<imageId>.

If C<false>, and if a Systems Manager parameter is specified for
C<ImageId>, the parameter is displayed in the response for C<imageId>.

For more information, see Use a Systems Manager parameter instead of an
AMI ID
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-launch-template.html#use-an-ssm-parameter-instead-of-an-ami-id)
in the I<Amazon EC2 User Guide>.

Default: C<false>



=head2 Versions => ArrayRef[Str|Undef]

One or more versions of the launch template. Valid values depend on
whether you are describing a specified launch template (by ID or name)
or all launch templates in your account.

To describe one or more versions of a specified launch template, valid
values are C<$Latest>, C<$Default>, and numbers.

To describe all launch templates in your account that are defined as
the latest version, the valid value is C<$Latest>. To describe all
launch templates in your account that are defined as the default
version, the valid value is C<$Default>. You can specify C<$Latest> and
C<$Default> in the same request. You cannot specify numbers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLaunchTemplateVersions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

