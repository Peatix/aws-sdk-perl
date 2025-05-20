
package Paws::QBusiness::CreateApplication;
  use Moose;
  has AttachmentsConfiguration => (is => 'ro', isa => 'Paws::QBusiness::AttachmentsConfiguration', traits => ['NameInRequest'], request_name => 'attachmentsConfiguration');
  has ClientIdsForOIDC => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'clientIdsForOIDC');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::EncryptionConfiguration', traits => ['NameInRequest'], request_name => 'encryptionConfiguration');
  has IamIdentityProviderArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamIdentityProviderArn');
  has IdentityCenterInstanceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityCenterInstanceArn');
  has IdentityType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityType');
  has PersonalizationConfiguration => (is => 'ro', isa => 'Paws::QBusiness::PersonalizationConfiguration', traits => ['NameInRequest'], request_name => 'personalizationConfiguration');
  has QAppsConfiguration => (is => 'ro', isa => 'Paws::QBusiness::QAppsConfiguration', traits => ['NameInRequest'], request_name => 'qAppsConfiguration');
  has QuickSightConfiguration => (is => 'ro', isa => 'Paws::QBusiness::QuickSightConfiguration', traits => ['NameInRequest'], request_name => 'quickSightConfiguration');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::CreateApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreateApplication - Arguments for method CreateApplication on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $CreateApplicationResponse = $qbusiness->CreateApplication(
      DisplayName              => 'MyApplicationName',
      AttachmentsConfiguration => {
        AttachmentsControlMode => 'ENABLED',    # values: ENABLED, DISABLED

      },    # OPTIONAL
      ClientIdsForOIDC => [
        'MyClientIdForOIDC', ...    # min: 1, max: 255
      ],    # OPTIONAL
      ClientToken             => 'MyClientToken',    # OPTIONAL
      Description             => 'MyDescription',    # OPTIONAL
      EncryptionConfiguration => {
        KmsKeyId => 'MyKmsKeyId',    # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
      IamIdentityProviderArn       => 'MyIAMIdentityProviderArn',    # OPTIONAL
      IdentityCenterInstanceArn    => 'MyInstanceArn',               # OPTIONAL
      IdentityType                 => 'AWS_IAM_IDP_SAML',            # OPTIONAL
      PersonalizationConfiguration => {
        PersonalizationControlMode => 'ENABLED',    # values: ENABLED, DISABLED

      },    # OPTIONAL
      QAppsConfiguration => {
        QAppsControlMode => 'ENABLED',    # values: ENABLED, DISABLED

      },    # OPTIONAL
      QuickSightConfiguration => {
        ClientNamespace => 'MyClientNamespace',    # min: 1, max: 64

      },    # OPTIONAL
      RoleArn => 'MyRoleArn',    # OPTIONAL
      Tags    => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ApplicationArn = $CreateApplicationResponse->ApplicationArn;
    my $ApplicationId  = $CreateApplicationResponse->ApplicationId;

    # Returns a L<Paws::QBusiness::CreateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/CreateApplication>

=head1 ATTRIBUTES


=head2 AttachmentsConfiguration => L<Paws::QBusiness::AttachmentsConfiguration>

An option to allow end users to upload files directly during chat.



=head2 ClientIdsForOIDC => ArrayRef[Str|Undef]

The OIDC client ID for a Amazon Q Business application.



=head2 ClientToken => Str

A token that you provide to identify the request to create your Amazon
Q Business application.



=head2 Description => Str

A description for the Amazon Q Business application.



=head2 B<REQUIRED> DisplayName => Str

A name for the Amazon Q Business application.



=head2 EncryptionConfiguration => L<Paws::QBusiness::EncryptionConfiguration>

The identifier of the KMS key that is used to encrypt your data. Amazon
Q Business doesn't support asymmetric keys.



=head2 IamIdentityProviderArn => Str

The Amazon Resource Name (ARN) of an identity provider being used by an
Amazon Q Business application.



=head2 IdentityCenterInstanceArn => Str

The Amazon Resource Name (ARN) of the IAM Identity Center instance you
are either creating forE<mdash>or connecting toE<mdash>your Amazon Q
Business application.



=head2 IdentityType => Str

The authentication type being used by a Amazon Q Business application.

Valid values are: C<"AWS_IAM_IDP_SAML">, C<"AWS_IAM_IDP_OIDC">, C<"AWS_IAM_IDC">, C<"AWS_QUICKSIGHT_IDP">, C<"ANONYMOUS">

=head2 PersonalizationConfiguration => L<Paws::QBusiness::PersonalizationConfiguration>

Configuration information about chat response personalization. For more
information, see Personalizing chat responses
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html)



=head2 QAppsConfiguration => L<Paws::QBusiness::QAppsConfiguration>

An option to allow end users to create and use Amazon Q Apps in the web
experience.



=head2 QuickSightConfiguration => L<Paws::QBusiness::QuickSightConfiguration>

The Amazon QuickSight configuration for an Amazon Q Business
application that uses QuickSight for authentication. This configuration
is required if your application uses QuickSight as the identity
provider. For more information, see Creating an Amazon QuickSight
integrated application
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/create-quicksight-integrated-application.html).



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role with permissions to
access your Amazon CloudWatch logs and metrics. If this property is not
specified, Amazon Q Business will create a service linked role (SLR)
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/using-service-linked-roles.html#slr-permissions)
and use it as the application's role.



=head2 Tags => ArrayRef[L<Paws::QBusiness::Tag>]

A list of key-value pairs that identify or categorize your Amazon Q
Business application. You can also use tags to help control access to
the application. Tag keys and values can consist of Unicode letters,
digits, white space, and any of the following symbols: _ . : / = + - @.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

