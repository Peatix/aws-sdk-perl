
package Paws::TaxSettings::PutTaxExemption;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds', required => 1);
  has Authority => (is => 'ro', isa => 'Paws::TaxSettings::Authority', traits => ['NameInRequest'], request_name => 'authority', required => 1);
  has ExemptionCertificate => (is => 'ro', isa => 'Paws::TaxSettings::ExemptionCertificate', traits => ['NameInRequest'], request_name => 'exemptionCertificate', required => 1);
  has ExemptionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exemptionType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutTaxExemption');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutTaxExemption');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TaxSettings::PutTaxExemptionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::PutTaxExemption - Arguments for method PutTaxExemption on L<Paws::TaxSettings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutTaxExemption on the
L<Tax Settings|Paws::TaxSettings> service. Use the attributes of this class
as arguments to method PutTaxExemption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutTaxExemption.

=head1 SYNOPSIS

    my $tax = Paws->service('TaxSettings');
    my $PutTaxExemptionResponse = $tax->PutTaxExemption(
      AccountIds => [
        'MyAccountId', ...    # min: 12, max: 12
      ],
      Authority => {
        Country => 'MyCountryCode',    # min: 2, max: 2
        State   => 'MyState',          # min: 1, max: 50; OPTIONAL
      },
      ExemptionCertificate => {
        DocumentFile => 'BlobExemptionFileBlob',      # min: 1, max: 4194304
        DocumentName => 'MyExemptionDocumentName',    # max: 128

      },
      ExemptionType => 'MyGenericString',

    );

    # Results:
    my $CaseId = $PutTaxExemptionResponse->CaseId;

    # Returns a L<Paws::TaxSettings::PutTaxExemptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tax/PutTaxExemption>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

The list of unique account identifiers.



=head2 B<REQUIRED> Authority => L<Paws::TaxSettings::Authority>





=head2 B<REQUIRED> ExemptionCertificate => L<Paws::TaxSettings::ExemptionCertificate>





=head2 B<REQUIRED> ExemptionType => Str

The exemption type. Use the supported tax exemption type description.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutTaxExemption in L<Paws::TaxSettings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

