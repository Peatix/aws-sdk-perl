
package Paws::TaxSettings::PutSupplementalTaxRegistration;
  use Moose;
  has TaxRegistrationEntry => (is => 'ro', isa => 'Paws::TaxSettings::SupplementalTaxRegistrationEntry', traits => ['NameInRequest'], request_name => 'taxRegistrationEntry', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSupplementalTaxRegistration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutSupplementalTaxRegistration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TaxSettings::PutSupplementalTaxRegistrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::PutSupplementalTaxRegistration - Arguments for method PutSupplementalTaxRegistration on L<Paws::TaxSettings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSupplementalTaxRegistration on the
L<Tax Settings|Paws::TaxSettings> service. Use the attributes of this class
as arguments to method PutSupplementalTaxRegistration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSupplementalTaxRegistration.

=head1 SYNOPSIS

    my $tax = Paws->service('TaxSettings');
    my $PutSupplementalTaxRegistrationResponse =
      $tax->PutSupplementalTaxRegistration(
      TaxRegistrationEntry => {
        Address => {
          AddressLine1     => 'MyAddressLine1',    # min: 1, max: 180
          City             => 'MyCity',            # min: 1, max: 50
          CountryCode      => 'MyCountryCode',     # min: 2, max: 2
          PostalCode       => 'MyPostalCode',      # min: 1, max: 20
          AddressLine2     => 'MyAddressLine2',    # min: 1, max: 60; OPTIONAL
          AddressLine3     => 'MyAddressLine3',    # min: 1, max: 60; OPTIONAL
          DistrictOrCounty => 'MyDistrict',        # min: 1, max: 50; OPTIONAL
          StateOrRegion    => 'MyState',           # min: 1, max: 50; OPTIONAL
        },
        LegalName        => 'MyLegalName',         # min: 1, max: 200
        RegistrationId   => 'MyRegistrationId',    # min: 1, max: 200
        RegistrationType => 'VAT',                 # values: VAT

      },

      );

    # Results:
    my $AuthorityId = $PutSupplementalTaxRegistrationResponse->AuthorityId;
    my $Status      = $PutSupplementalTaxRegistrationResponse->Status;

# Returns a L<Paws::TaxSettings::PutSupplementalTaxRegistrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tax/PutSupplementalTaxRegistration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaxRegistrationEntry => L<Paws::TaxSettings::SupplementalTaxRegistrationEntry>

The supplemental TRN information that will be stored for the caller
account ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSupplementalTaxRegistration in L<Paws::TaxSettings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

