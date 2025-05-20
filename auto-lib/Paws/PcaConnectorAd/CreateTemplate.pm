
package Paws::PcaConnectorAd::CreateTemplate;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ConnectorArn => (is => 'ro', isa => 'Str', required => 1);
  has Definition => (is => 'ro', isa => 'Paws::PcaConnectorAd::TemplateDefinition', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::PcaConnectorAd::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/templates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PcaConnectorAd::CreateTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::CreateTemplate - Arguments for method CreateTemplate on L<Paws::PcaConnectorAd>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTemplate on the
L<PcaConnectorAd|Paws::PcaConnectorAd> service. Use the attributes of this class
as arguments to method CreateTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTemplate.

=head1 SYNOPSIS

    my $pca-connector-ad = Paws->service('PcaConnectorAd');
    my $CreateTemplateResponse = $pca -connector-ad->CreateTemplate(
      ConnectorArn => 'MyConnectorArn',
      Definition   => {
        TemplateV2 => {
          CertificateValidity => {
            RenewalPeriod => {
              Period     => 1,       # min: 1, max: 8766000
              PeriodType => 'HOURS', # values: HOURS, DAYS, WEEKS, MONTHS, YEARS

            },
            ValidityPeriod => {
              Period     => 1,       # min: 1, max: 8766000
              PeriodType => 'HOURS', # values: HOURS, DAYS, WEEKS, MONTHS, YEARS

            },

          },
          EnrollmentFlags => {
            EnableKeyReuseOnNtTokenKeysetStorageFull  => 1,    # OPTIONAL
            IncludeSymmetricAlgorithms                => 1,    # OPTIONAL
            NoSecurityExtension                       => 1,    # OPTIONAL
            RemoveInvalidCertificateFromPersonalStore => 1,    # OPTIONAL
            UserInteractionRequired                   => 1,    # OPTIONAL
          },
          Extensions => {
            KeyUsage => {
              UsageFlags => {
                DataEncipherment => 1,    # OPTIONAL
                DigitalSignature => 1,    # OPTIONAL
                KeyAgreement     => 1,    # OPTIONAL
                KeyEncipherment  => 1,    # OPTIONAL
                NonRepudiation   => 1,    # OPTIONAL
              },
              Critical => 1,              # OPTIONAL
            },
            ApplicationPolicies => {
              Policies => [
                {
                  PolicyObjectIdentifier =>
                    'MyCustomObjectIdentifier',    # min: 1, max: 64; OPTIONAL
                  PolicyType => 'ALL_APPLICATION_POLICIES'
                  , # values: ALL_APPLICATION_POLICIES, ANY_PURPOSE, ATTESTATION_IDENTITY_KEY_CERTIFICATE, CERTIFICATE_REQUEST_AGENT, CLIENT_AUTHENTICATION, CODE_SIGNING, CTL_USAGE, DIGITAL_RIGHTS, DIRECTORY_SERVICE_EMAIL_REPLICATION, DISALLOWED_LIST, DNS_SERVER_TRUST, DOCUMENT_ENCRYPTION, DOCUMENT_SIGNING, DYNAMIC_CODE_GENERATOR, EARLY_LAUNCH_ANTIMALWARE_DRIVER, EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, ENCLAVE, ENCRYPTING_FILE_SYSTEM, ENDORSEMENT_KEY_CERTIFICATE, FILE_RECOVERY, HAL_EXTENSION, IP_SECURITY_END_SYSTEM, IP_SECURITY_IKE_INTERMEDIATE, IP_SECURITY_TUNNEL_TERMINATION, IP_SECURITY_USER, ISOLATED_USER_MODE, KDC_AUTHENTICATION, KERNEL_MODE_CODE_SIGNING, KEY_PACK_LICENSES, KEY_RECOVERY, KEY_RECOVERY_AGENT, LICENSE_SERVER_VERIFICATION, LIFETIME_SIGNING, MICROSOFT_PUBLISHER, MICROSOFT_TIME_STAMPING, MICROSOFT_TRUST_LIST_SIGNING, OCSP_SIGNING, OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, PLATFORM_CERTIFICATE, PREVIEW_BUILD_SIGNING, PRIVATE_KEY_ARCHIVAL, PROTECTED_PROCESS_LIGHT_VERIFICATION, PROTECTED_PROCESS_VERIFICATION, QUALIFIED_SUBORDINATION, REVOKED_LIST_SIGNER, ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION, ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION, ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL, ROOT_LIST_SIGNER, SECURE_EMAIL, SERVER_AUTHENTICATION, SMART_CARD_LOGIN, SPC_ENCRYPTED_DIGEST_RETRY_COUNT, SPC_RELAXED_PE_MARKER_CHECK, TIME_STAMPING, WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_VERIFICATION, WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION, WINDOWS_KITS_COMPONENT, WINDOWS_RT_VERIFICATION, WINDOWS_SOFTWARE_EXTENSION_VERIFICATION, WINDOWS_STORE, WINDOWS_SYSTEM_COMPONENT_VERIFICATION, WINDOWS_TCB_COMPONENT, WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT, WINDOWS_UPDATE; OPTIONAL
                },
                ...
              ],    # min: 1, max: 100
              Critical => 1,    # OPTIONAL
            },    # OPTIONAL
          },
          GeneralFlags => {
            AutoEnrollment => 1,    # OPTIONAL
            MachineType    => 1,    # OPTIONAL
          },
          PrivateKeyAttributes => {
            KeySpec => 'KEY_EXCHANGE',    # values: KEY_EXCHANGE, SIGNATURE
            MinimalKeyLength => 1,        # min: 1
            CryptoProviders  => [
              'MyCryptoProvidersListMemberString', ...    # min: 1, max: 100
            ],    # min: 1, max: 100; OPTIONAL
          },
          PrivateKeyFlags => {
            ClientVersion => 'WINDOWS_SERVER_2003'
            , # values: WINDOWS_SERVER_2003, WINDOWS_SERVER_2008, WINDOWS_SERVER_2008_R2, WINDOWS_SERVER_2012, WINDOWS_SERVER_2012_R2, WINDOWS_SERVER_2016
            ExportableKey               => 1,    # OPTIONAL
            StrongKeyProtectionRequired => 1,    # OPTIONAL
          },
          SubjectNameFlags => {
            RequireCommonName       => 1,        # OPTIONAL
            RequireDirectoryPath    => 1,        # OPTIONAL
            RequireDnsAsCn          => 1,        # OPTIONAL
            RequireEmail            => 1,        # OPTIONAL
            SanRequireDirectoryGuid => 1,        # OPTIONAL
            SanRequireDns           => 1,        # OPTIONAL
            SanRequireDomainDns     => 1,        # OPTIONAL
            SanRequireEmail         => 1,        # OPTIONAL
            SanRequireSpn           => 1,        # OPTIONAL
            SanRequireUpn           => 1,        # OPTIONAL
          },
          SupersededTemplates => [
            'MyTemplateName', ...                # min: 1, max: 64
          ],    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        TemplateV3 => {
          CertificateValidity => {
            RenewalPeriod => {
              Period     => 1,       # min: 1, max: 8766000
              PeriodType => 'HOURS', # values: HOURS, DAYS, WEEKS, MONTHS, YEARS

            },
            ValidityPeriod => {
              Period     => 1,       # min: 1, max: 8766000
              PeriodType => 'HOURS', # values: HOURS, DAYS, WEEKS, MONTHS, YEARS

            },

          },
          EnrollmentFlags => {
            EnableKeyReuseOnNtTokenKeysetStorageFull  => 1,    # OPTIONAL
            IncludeSymmetricAlgorithms                => 1,    # OPTIONAL
            NoSecurityExtension                       => 1,    # OPTIONAL
            RemoveInvalidCertificateFromPersonalStore => 1,    # OPTIONAL
            UserInteractionRequired                   => 1,    # OPTIONAL
          },
          Extensions => {
            KeyUsage => {
              UsageFlags => {
                DataEncipherment => 1,    # OPTIONAL
                DigitalSignature => 1,    # OPTIONAL
                KeyAgreement     => 1,    # OPTIONAL
                KeyEncipherment  => 1,    # OPTIONAL
                NonRepudiation   => 1,    # OPTIONAL
              },
              Critical => 1,              # OPTIONAL
            },
            ApplicationPolicies => {
              Policies => [
                {
                  PolicyObjectIdentifier =>
                    'MyCustomObjectIdentifier',    # min: 1, max: 64; OPTIONAL
                  PolicyType => 'ALL_APPLICATION_POLICIES'
                  , # values: ALL_APPLICATION_POLICIES, ANY_PURPOSE, ATTESTATION_IDENTITY_KEY_CERTIFICATE, CERTIFICATE_REQUEST_AGENT, CLIENT_AUTHENTICATION, CODE_SIGNING, CTL_USAGE, DIGITAL_RIGHTS, DIRECTORY_SERVICE_EMAIL_REPLICATION, DISALLOWED_LIST, DNS_SERVER_TRUST, DOCUMENT_ENCRYPTION, DOCUMENT_SIGNING, DYNAMIC_CODE_GENERATOR, EARLY_LAUNCH_ANTIMALWARE_DRIVER, EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, ENCLAVE, ENCRYPTING_FILE_SYSTEM, ENDORSEMENT_KEY_CERTIFICATE, FILE_RECOVERY, HAL_EXTENSION, IP_SECURITY_END_SYSTEM, IP_SECURITY_IKE_INTERMEDIATE, IP_SECURITY_TUNNEL_TERMINATION, IP_SECURITY_USER, ISOLATED_USER_MODE, KDC_AUTHENTICATION, KERNEL_MODE_CODE_SIGNING, KEY_PACK_LICENSES, KEY_RECOVERY, KEY_RECOVERY_AGENT, LICENSE_SERVER_VERIFICATION, LIFETIME_SIGNING, MICROSOFT_PUBLISHER, MICROSOFT_TIME_STAMPING, MICROSOFT_TRUST_LIST_SIGNING, OCSP_SIGNING, OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, PLATFORM_CERTIFICATE, PREVIEW_BUILD_SIGNING, PRIVATE_KEY_ARCHIVAL, PROTECTED_PROCESS_LIGHT_VERIFICATION, PROTECTED_PROCESS_VERIFICATION, QUALIFIED_SUBORDINATION, REVOKED_LIST_SIGNER, ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION, ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION, ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL, ROOT_LIST_SIGNER, SECURE_EMAIL, SERVER_AUTHENTICATION, SMART_CARD_LOGIN, SPC_ENCRYPTED_DIGEST_RETRY_COUNT, SPC_RELAXED_PE_MARKER_CHECK, TIME_STAMPING, WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_VERIFICATION, WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION, WINDOWS_KITS_COMPONENT, WINDOWS_RT_VERIFICATION, WINDOWS_SOFTWARE_EXTENSION_VERIFICATION, WINDOWS_STORE, WINDOWS_SYSTEM_COMPONENT_VERIFICATION, WINDOWS_TCB_COMPONENT, WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT, WINDOWS_UPDATE; OPTIONAL
                },
                ...
              ],    # min: 1, max: 100
              Critical => 1,    # OPTIONAL
            },    # OPTIONAL
          },
          GeneralFlags => {
            AutoEnrollment => 1,    # OPTIONAL
            MachineType    => 1,    # OPTIONAL
          },
          HashAlgorithm        => 'SHA256',    # values: SHA256, SHA384, SHA512
          PrivateKeyAttributes => {
            Algorithm => 'RSA',   # values: RSA, ECDH_P256, ECDH_P384, ECDH_P521
            KeySpec   => 'KEY_EXCHANGE',    # values: KEY_EXCHANGE, SIGNATURE
            KeyUsageProperty => {
              PropertyFlags => {
                Decrypt      => 1,    # OPTIONAL
                KeyAgreement => 1,    # OPTIONAL
                Sign         => 1,    # OPTIONAL
              },    # OPTIONAL
              PropertyType => 'ALL',    # values: ALL; OPTIONAL
            },
            MinimalKeyLength => 1,      # min: 1
            CryptoProviders  => [
              'MyCryptoProvidersListMemberString', ...    # min: 1, max: 100
            ],    # min: 1, max: 100; OPTIONAL
          },
          PrivateKeyFlags => {
            ClientVersion => 'WINDOWS_SERVER_2008'
            , # values: WINDOWS_SERVER_2008, WINDOWS_SERVER_2008_R2, WINDOWS_SERVER_2012, WINDOWS_SERVER_2012_R2, WINDOWS_SERVER_2016
            ExportableKey                      => 1,    # OPTIONAL
            RequireAlternateSignatureAlgorithm => 1,    # OPTIONAL
            StrongKeyProtectionRequired        => 1,    # OPTIONAL
          },
          SubjectNameFlags => {
            RequireCommonName       => 1,               # OPTIONAL
            RequireDirectoryPath    => 1,               # OPTIONAL
            RequireDnsAsCn          => 1,               # OPTIONAL
            RequireEmail            => 1,               # OPTIONAL
            SanRequireDirectoryGuid => 1,               # OPTIONAL
            SanRequireDns           => 1,               # OPTIONAL
            SanRequireDomainDns     => 1,               # OPTIONAL
            SanRequireEmail         => 1,               # OPTIONAL
            SanRequireSpn           => 1,               # OPTIONAL
            SanRequireUpn           => 1,               # OPTIONAL
          },
          SupersededTemplates => [
            'MyTemplateName', ...                       # min: 1, max: 64
          ],    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        TemplateV4 => {
          CertificateValidity => {
            RenewalPeriod => {
              Period     => 1,       # min: 1, max: 8766000
              PeriodType => 'HOURS', # values: HOURS, DAYS, WEEKS, MONTHS, YEARS

            },
            ValidityPeriod => {
              Period     => 1,       # min: 1, max: 8766000
              PeriodType => 'HOURS', # values: HOURS, DAYS, WEEKS, MONTHS, YEARS

            },

          },
          EnrollmentFlags => {
            EnableKeyReuseOnNtTokenKeysetStorageFull  => 1,    # OPTIONAL
            IncludeSymmetricAlgorithms                => 1,    # OPTIONAL
            NoSecurityExtension                       => 1,    # OPTIONAL
            RemoveInvalidCertificateFromPersonalStore => 1,    # OPTIONAL
            UserInteractionRequired                   => 1,    # OPTIONAL
          },
          Extensions => {
            KeyUsage => {
              UsageFlags => {
                DataEncipherment => 1,    # OPTIONAL
                DigitalSignature => 1,    # OPTIONAL
                KeyAgreement     => 1,    # OPTIONAL
                KeyEncipherment  => 1,    # OPTIONAL
                NonRepudiation   => 1,    # OPTIONAL
              },
              Critical => 1,              # OPTIONAL
            },
            ApplicationPolicies => {
              Policies => [
                {
                  PolicyObjectIdentifier =>
                    'MyCustomObjectIdentifier',    # min: 1, max: 64; OPTIONAL
                  PolicyType => 'ALL_APPLICATION_POLICIES'
                  , # values: ALL_APPLICATION_POLICIES, ANY_PURPOSE, ATTESTATION_IDENTITY_KEY_CERTIFICATE, CERTIFICATE_REQUEST_AGENT, CLIENT_AUTHENTICATION, CODE_SIGNING, CTL_USAGE, DIGITAL_RIGHTS, DIRECTORY_SERVICE_EMAIL_REPLICATION, DISALLOWED_LIST, DNS_SERVER_TRUST, DOCUMENT_ENCRYPTION, DOCUMENT_SIGNING, DYNAMIC_CODE_GENERATOR, EARLY_LAUNCH_ANTIMALWARE_DRIVER, EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, ENCLAVE, ENCRYPTING_FILE_SYSTEM, ENDORSEMENT_KEY_CERTIFICATE, FILE_RECOVERY, HAL_EXTENSION, IP_SECURITY_END_SYSTEM, IP_SECURITY_IKE_INTERMEDIATE, IP_SECURITY_TUNNEL_TERMINATION, IP_SECURITY_USER, ISOLATED_USER_MODE, KDC_AUTHENTICATION, KERNEL_MODE_CODE_SIGNING, KEY_PACK_LICENSES, KEY_RECOVERY, KEY_RECOVERY_AGENT, LICENSE_SERVER_VERIFICATION, LIFETIME_SIGNING, MICROSOFT_PUBLISHER, MICROSOFT_TIME_STAMPING, MICROSOFT_TRUST_LIST_SIGNING, OCSP_SIGNING, OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION, PLATFORM_CERTIFICATE, PREVIEW_BUILD_SIGNING, PRIVATE_KEY_ARCHIVAL, PROTECTED_PROCESS_LIGHT_VERIFICATION, PROTECTED_PROCESS_VERIFICATION, QUALIFIED_SUBORDINATION, REVOKED_LIST_SIGNER, ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION, ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION, ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL, ROOT_LIST_SIGNER, SECURE_EMAIL, SERVER_AUTHENTICATION, SMART_CARD_LOGIN, SPC_ENCRYPTED_DIGEST_RETRY_COUNT, SPC_RELAXED_PE_MARKER_CHECK, TIME_STAMPING, WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION, WINDOWS_HARDWARE_DRIVER_VERIFICATION, WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION, WINDOWS_KITS_COMPONENT, WINDOWS_RT_VERIFICATION, WINDOWS_SOFTWARE_EXTENSION_VERIFICATION, WINDOWS_STORE, WINDOWS_SYSTEM_COMPONENT_VERIFICATION, WINDOWS_TCB_COMPONENT, WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT, WINDOWS_UPDATE; OPTIONAL
                },
                ...
              ],    # min: 1, max: 100
              Critical => 1,    # OPTIONAL
            },    # OPTIONAL
          },
          GeneralFlags => {
            AutoEnrollment => 1,    # OPTIONAL
            MachineType    => 1,    # OPTIONAL
          },
          PrivateKeyAttributes => {
            KeySpec => 'KEY_EXCHANGE',    # values: KEY_EXCHANGE, SIGNATURE
            MinimalKeyLength => 1,        # min: 1
            Algorithm => 'RSA',   # values: RSA, ECDH_P256, ECDH_P384, ECDH_P521
            CryptoProviders => [
              'MyCryptoProvidersListMemberString', ...    # min: 1, max: 100
            ],    # min: 1, max: 100; OPTIONAL
            KeyUsageProperty => {
              PropertyFlags => {
                Decrypt      => 1,    # OPTIONAL
                KeyAgreement => 1,    # OPTIONAL
                Sign         => 1,    # OPTIONAL
              },    # OPTIONAL
              PropertyType => 'ALL',    # values: ALL; OPTIONAL
            },
          },
          PrivateKeyFlags => {
            ClientVersion => 'WINDOWS_SERVER_2012'
            , # values: WINDOWS_SERVER_2012, WINDOWS_SERVER_2012_R2, WINDOWS_SERVER_2016
            ExportableKey                      => 1,    # OPTIONAL
            RequireAlternateSignatureAlgorithm => 1,    # OPTIONAL
            RequireSameKeyRenewal              => 1,    # OPTIONAL
            StrongKeyProtectionRequired        => 1,    # OPTIONAL
            UseLegacyProvider                  => 1,    # OPTIONAL
          },
          SubjectNameFlags => {
            RequireCommonName       => 1,               # OPTIONAL
            RequireDirectoryPath    => 1,               # OPTIONAL
            RequireDnsAsCn          => 1,               # OPTIONAL
            RequireEmail            => 1,               # OPTIONAL
            SanRequireDirectoryGuid => 1,               # OPTIONAL
            SanRequireDns           => 1,               # OPTIONAL
            SanRequireDomainDns     => 1,               # OPTIONAL
            SanRequireEmail         => 1,               # OPTIONAL
            SanRequireSpn           => 1,               # OPTIONAL
            SanRequireUpn           => 1,               # OPTIONAL
          },
          HashAlgorithm       => 'SHA256',    # values: SHA256, SHA384, SHA512
          SupersededTemplates => [
            'MyTemplateName', ...             # min: 1, max: 64
          ],    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
      },
      Name        => 'MyTemplateName',
      ClientToken => 'MyClientToken',                  # OPTIONAL
      Tags        => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $TemplateArn = $CreateTemplateResponse->TemplateArn;

    # Returns a L<Paws::PcaConnectorAd::CreateTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad/CreateTemplate>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Idempotency token.



=head2 B<REQUIRED> ConnectorArn => Str

The Amazon Resource Name (ARN) that was returned when you called
CreateConnector
(https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html).



=head2 B<REQUIRED> Definition => L<Paws::PcaConnectorAd::TemplateDefinition>

Template configuration to define the information included in
certificates. Define certificate validity and renewal periods,
certificate request handling and enrollment options, key usage
extensions, application policies, and cryptography settings.



=head2 B<REQUIRED> Name => Str

Name of the template. The template name must be unique.



=head2 Tags => L<Paws::PcaConnectorAd::Tags>

Metadata assigned to a template consisting of a key-value pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTemplate in L<Paws::PcaConnectorAd>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

