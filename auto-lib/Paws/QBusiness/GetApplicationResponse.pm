
package Paws::QBusiness::GetApplicationResponse;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationArn');
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId');
  has AttachmentsConfiguration => (is => 'ro', isa => 'Paws::QBusiness::AppliedAttachmentsConfiguration', traits => ['NameInRequest'], request_name => 'attachmentsConfiguration');
  has AutoSubscriptionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::AutoSubscriptionConfiguration', traits => ['NameInRequest'], request_name => 'autoSubscriptionConfiguration');
  has ClientIdsForOIDC => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'clientIdsForOIDC');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::EncryptionConfiguration', traits => ['NameInRequest'], request_name => 'encryptionConfiguration');
  has Error => (is => 'ro', isa => 'Paws::QBusiness::ErrorDetail', traits => ['NameInRequest'], request_name => 'error');
  has IamIdentityProviderArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamIdentityProviderArn');
  has IdentityCenterApplicationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityCenterApplicationArn');
  has IdentityType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityType');
  has PersonalizationConfiguration => (is => 'ro', isa => 'Paws::QBusiness::PersonalizationConfiguration', traits => ['NameInRequest'], request_name => 'personalizationConfiguration');
  has QAppsConfiguration => (is => 'ro', isa => 'Paws::QBusiness::QAppsConfiguration', traits => ['NameInRequest'], request_name => 'qAppsConfiguration');
  has QuickSightConfiguration => (is => 'ro', isa => 'Paws::QBusiness::QuickSightConfiguration', traits => ['NameInRequest'], request_name => 'quickSightConfiguration');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetApplicationResponse

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

The Amazon Resource Name (ARN) of the Amazon Q Business application.


=head2 ApplicationId => Str

The identifier of the Amazon Q Business application.


=head2 AttachmentsConfiguration => L<Paws::QBusiness::AppliedAttachmentsConfiguration>

Settings for whether end users can upload files directly during chat.


=head2 AutoSubscriptionConfiguration => L<Paws::QBusiness::AutoSubscriptionConfiguration>

Settings for auto-subscription behavior for this application. This is
only applicable to SAML and OIDC applications.


=head2 ClientIdsForOIDC => ArrayRef[Str|Undef]

The OIDC client ID for a Amazon Q Business application.


=head2 CreatedAt => Str

The Unix timestamp when the Amazon Q Business application was last
updated.


=head2 Description => Str

A description for the Amazon Q Business application.


=head2 DisplayName => Str

The name of the Amazon Q Business application.


=head2 EncryptionConfiguration => L<Paws::QBusiness::EncryptionConfiguration>

The identifier of the Amazon Web Services KMS key that is used to
encrypt your data. Amazon Q Business doesn't support asymmetric keys.


=head2 Error => L<Paws::QBusiness::ErrorDetail>

If the C<Status> field is set to C<ERROR>, the C<ErrorMessage> field
contains a description of the error that caused the synchronization to
fail.


=head2 IamIdentityProviderArn => Str

The Amazon Resource Name (ARN) of an identity provider being used by an
Amazon Q Business application.


=head2 IdentityCenterApplicationArn => Str

The Amazon Resource Name (ARN) of the AWS IAM Identity Center instance
attached to your Amazon Q Business application.


=head2 IdentityType => Str

The authentication type being used by a Amazon Q Business application.

Valid values are: C<"AWS_IAM_IDP_SAML">, C<"AWS_IAM_IDP_OIDC">, C<"AWS_IAM_IDC">, C<"AWS_QUICKSIGHT_IDP">, C<"ANONYMOUS">
=head2 PersonalizationConfiguration => L<Paws::QBusiness::PersonalizationConfiguration>

Configuration information about chat response personalization. For more
information, see Personalizing chat responses
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html).


=head2 QAppsConfiguration => L<Paws::QBusiness::QAppsConfiguration>

Settings for whether end users can create and use Amazon Q Apps in the
web experience.


=head2 QuickSightConfiguration => L<Paws::QBusiness::QuickSightConfiguration>

The Amazon QuickSight authentication configuration for the Amazon Q
Business application.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM with permissions to access
your CloudWatch logs and metrics.


=head2 Status => Str

The status of the Amazon Q Business application.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">, C<"UPDATING">
=head2 UpdatedAt => Str

The Unix timestamp when the Amazon Q Business application was last
updated.


=head2 _request_id => Str


=cut

