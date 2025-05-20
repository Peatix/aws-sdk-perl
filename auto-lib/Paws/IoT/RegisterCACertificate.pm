
package Paws::IoT::RegisterCACertificate;
  use Moose;
  has AllowAutoRegistration => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'allowAutoRegistration');
  has CaCertificate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caCertificate', required => 1);
  has CertificateMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateMode');
  has RegistrationConfig => (is => 'ro', isa => 'Paws::IoT::RegistrationConfig', traits => ['NameInRequest'], request_name => 'registrationConfig');
  has SetAsActive => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'setAsActive');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has VerificationCertificate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'verificationCertificate');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterCACertificate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cacertificate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::RegisterCACertificateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RegisterCACertificate - Arguments for method RegisterCACertificate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterCACertificate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method RegisterCACertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterCACertificate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $RegisterCACertificateResponse = $iot->RegisterCACertificate(
      CaCertificate         => 'MyCertificatePem',
      AllowAutoRegistration => 1,                    # OPTIONAL
      CertificateMode       => 'DEFAULT',            # OPTIONAL
      RegistrationConfig    => {
        RoleArn      => 'MyRoleArn',         # min: 20, max: 2048; OPTIONAL
        TemplateBody => 'MyTemplateBody',    # max: 10240; OPTIONAL
        TemplateName => 'MyTemplateName',    # min: 1, max: 36; OPTIONAL
      },    # OPTIONAL
      SetAsActive => 1,    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      VerificationCertificate => 'MyCertificatePem',    # OPTIONAL
    );

    # Results:
    my $CertificateArn = $RegisterCACertificateResponse->CertificateArn;
    my $CertificateId  = $RegisterCACertificateResponse->CertificateId;

    # Returns a L<Paws::IoT::RegisterCACertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/RegisterCACertificate>

=head1 ATTRIBUTES


=head2 AllowAutoRegistration => Bool

Allows this CA certificate to be used for auto registration of device
certificates.



=head2 B<REQUIRED> CaCertificate => Str

The CA certificate.



=head2 CertificateMode => Str

Describes the certificate mode in which the Certificate Authority (CA)
will be registered. If the C<verificationCertificate> field is not
provided, set C<certificateMode> to be C<SNI_ONLY>. If the
C<verificationCertificate> field is provided, set C<certificateMode> to
be C<DEFAULT>. When C<certificateMode> is not provided, it defaults to
C<DEFAULT>. All the device certificates that are registered using this
CA will be registered in the same certificate mode as the CA. For more
information about certificate mode for device certificates, see
certificate mode
(https://docs.aws.amazon.com/iot/latest/apireference/API_CertificateDescription.html#iot-Type-CertificateDescription-certificateMode).

Valid values are: C<"DEFAULT">, C<"SNI_ONLY">

=head2 RegistrationConfig => L<Paws::IoT::RegistrationConfig>

Information about the registration configuration.



=head2 SetAsActive => Bool

A boolean value that specifies if the CA certificate is set to active.

Valid values: C<ACTIVE | INACTIVE>



=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata which can be used to manage the CA certificate.

For URI Request parameters use format: ...key1=value1&key2=value2...

For the CLI command-line parameter use format: &&tags
"key1=value1&key2=value2..."

For the cli-input-json file use format: "tags":
"key1=value1&key2=value2..."



=head2 VerificationCertificate => Str

The private key verification certificate. If C<certificateMode> is
C<SNI_ONLY>, the C<verificationCertificate> field must be empty. If
C<certificateMode> is C<DEFAULT> or not provided, the
C<verificationCertificate> field must not be empty.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterCACertificate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

