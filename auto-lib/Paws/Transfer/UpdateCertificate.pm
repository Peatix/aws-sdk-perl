
package Paws::Transfer::UpdateCertificate;
  use Moose;
  has ActiveDate => (is => 'ro', isa => 'Str');
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has InactiveDate => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::UpdateCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::UpdateCertificate - Arguments for method UpdateCertificate on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCertificate on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method UpdateCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCertificate.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $UpdateCertificateResponse = $transfer->UpdateCertificate(
      CertificateId => 'MyCertificateId',
      ActiveDate    => '1970-01-01T01:00:00',    # OPTIONAL
      Description   => 'MyDescription',          # OPTIONAL
      InactiveDate  => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $CertificateId = $UpdateCertificateResponse->CertificateId;

    # Returns a L<Paws::Transfer::UpdateCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/UpdateCertificate>

=head1 ATTRIBUTES


=head2 ActiveDate => Str

An optional date that specifies when the certificate becomes active. If
you do not specify a value, C<ActiveDate> takes the same value as
C<NotBeforeDate>, which is specified by the CA.



=head2 B<REQUIRED> CertificateId => Str

The identifier of the certificate object that you are updating.



=head2 Description => Str

A short description to help identify the certificate.



=head2 InactiveDate => Str

An optional date that specifies when the certificate becomes inactive.
If you do not specify a value, C<InactiveDate> takes the same value as
C<NotAfterDate>, which is specified by the CA.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCertificate in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

