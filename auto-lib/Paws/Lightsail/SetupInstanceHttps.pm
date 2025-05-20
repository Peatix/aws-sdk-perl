
package Paws::Lightsail::SetupInstanceHttps;
  use Moose;
  has CertificateProvider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateProvider' , required => 1);
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'domainNames' , required => 1);
  has EmailAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'emailAddress' , required => 1);
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetupInstanceHttps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::SetupInstanceHttpsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::SetupInstanceHttps - Arguments for method SetupInstanceHttps on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetupInstanceHttps on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method SetupInstanceHttps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetupInstanceHttps.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $SetupInstanceHttpsResult = $lightsail->SetupInstanceHttps(
      CertificateProvider => 'LetsEncrypt',
      DomainNames         => [
        'MySetupDomainName', ...    # min: 4, max: 253
      ],
      EmailAddress => 'MyEmailAddress',
      InstanceName => 'MyResourceName',

    );

    # Results:
    my $Operations = $SetupInstanceHttpsResult->Operations;

    # Returns a L<Paws::Lightsail::SetupInstanceHttpsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/SetupInstanceHttps>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateProvider => Str

The certificate authority that issues the SSL/TLS certificate.

Valid values are: C<"LetsEncrypt">

=head2 B<REQUIRED> DomainNames => ArrayRef[Str|Undef]

The name of the domain and subdomains that were specified for the
SSL/TLS certificate.



=head2 B<REQUIRED> EmailAddress => Str

The contact method for SSL/TLS certificate renewal alerts. You can
enter one email address.



=head2 B<REQUIRED> InstanceName => Str

The name of the Lightsail instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetupInstanceHttps in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

