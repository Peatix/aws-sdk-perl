
package Paws::Transfer::DescribeCertificate;
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::DescribeCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeCertificate - Arguments for method DescribeCertificate on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCertificate on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method DescribeCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCertificate.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $DescribeCertificateResponse = $transfer->DescribeCertificate(
      CertificateId => 'MyCertificateId',

    );

    # Results:
    my $Certificate = $DescribeCertificateResponse->Certificate;

    # Returns a L<Paws::Transfer::DescribeCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/DescribeCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateId => Str

An array of identifiers for the imported certificates. You use this
identifier for working with profiles and partner profiles.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCertificate in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

