
package Paws::SageMaker::DescribeDomainResponse;
  use Moose;
  has AppNetworkAccessType => (is => 'ro', isa => 'Str');
  has AppSecurityGroupManagement => (is => 'ro', isa => 'Str');
  has AuthMode => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DefaultSpaceSettings => (is => 'ro', isa => 'Paws::SageMaker::DefaultSpaceSettings');
  has DefaultUserSettings => (is => 'ro', isa => 'Paws::SageMaker::UserSettings');
  has DomainArn => (is => 'ro', isa => 'Str');
  has DomainId => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
  has DomainSettings => (is => 'ro', isa => 'Paws::SageMaker::DomainSettings');
  has FailureReason => (is => 'ro', isa => 'Str');
  has HomeEfsFileSystemId => (is => 'ro', isa => 'Str');
  has HomeEfsFileSystemKmsKeyId => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has SecurityGroupIdForDomainBoundary => (is => 'ro', isa => 'Str');
  has SingleSignOnApplicationArn => (is => 'ro', isa => 'Str');
  has SingleSignOnManagedApplicationInstanceId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TagPropagation => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeDomainResponse

=head1 ATTRIBUTES


=head2 AppNetworkAccessType => Str

Specifies the VPC used for non-EFS traffic. The default value is
C<PublicInternetOnly>.

=over

=item *

C<PublicInternetOnly> - Non-EFS traffic is through a VPC managed by
Amazon SageMaker AI, which allows direct internet access

=item *

C<VpcOnly> - All traffic is through the specified VPC and subnets

=back


Valid values are: C<"PublicInternetOnly">, C<"VpcOnly">
=head2 AppSecurityGroupManagement => Str

The entity that creates and manages the required security groups for
inter-app communication in C<VPCOnly> mode. Required when
C<CreateDomain.AppNetworkAccessType> is C<VPCOnly> and
C<DomainSettings.RStudioServerProDomainSettings.DomainExecutionRoleArn>
is provided.

Valid values are: C<"Service">, C<"Customer">
=head2 AuthMode => Str

The domain's authentication mode.

Valid values are: C<"SSO">, C<"IAM">
=head2 CreationTime => Str

The creation time.


=head2 DefaultSpaceSettings => L<Paws::SageMaker::DefaultSpaceSettings>

The default settings for shared spaces that users create in the domain.


=head2 DefaultUserSettings => L<Paws::SageMaker::UserSettings>

Settings which are applied to UserProfiles in this domain if settings
are not explicitly specified in a given UserProfile.


=head2 DomainArn => Str

The domain's Amazon Resource Name (ARN).


=head2 DomainId => Str

The domain ID.


=head2 DomainName => Str

The domain name.


=head2 DomainSettings => L<Paws::SageMaker::DomainSettings>

A collection of C<Domain> settings.


=head2 FailureReason => Str

The failure reason.


=head2 HomeEfsFileSystemId => Str

The ID of the Amazon Elastic File System managed by this Domain.


=head2 HomeEfsFileSystemKmsKeyId => Str

Use C<KmsKeyId>.


=head2 KmsKeyId => Str

The Amazon Web Services KMS customer managed key used to encrypt the
EFS volume attached to the domain.


=head2 LastModifiedTime => Str

The last modified time.


=head2 SecurityGroupIdForDomainBoundary => Str

The ID of the security group that authorizes traffic between the
C<RSessionGateway> apps and the C<RStudioServerPro> app.


=head2 SingleSignOnApplicationArn => Str

The ARN of the application managed by SageMaker AI in IAM Identity
Center. This value is only returned for domains created after October
1, 2023.


=head2 SingleSignOnManagedApplicationInstanceId => Str

The IAM Identity Center managed application instance ID.


=head2 Status => Str

The status.

Valid values are: C<"Deleting">, C<"Failed">, C<"InService">, C<"Pending">, C<"Updating">, C<"Update_Failed">, C<"Delete_Failed">
=head2 SubnetIds => ArrayRef[Str|Undef]

The VPC subnets that the domain uses for communication.


=head2 TagPropagation => Str

Indicates whether custom tag propagation is supported for the domain.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 Url => Str

The domain's URL.


=head2 VpcId => Str

The ID of the Amazon Virtual Private Cloud (VPC) that the domain uses
for communication.


=head2 _request_id => Str


=cut

1;