
package Paws::TaxSettings::PutTaxRegistration;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountId');
  has TaxRegistrationEntry => (is => 'ro', isa => 'Paws::TaxSettings::TaxRegistrationEntry', traits => ['NameInRequest'], request_name => 'taxRegistrationEntry', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutTaxRegistration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutTaxRegistration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TaxSettings::PutTaxRegistrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::PutTaxRegistration - Arguments for method PutTaxRegistration on L<Paws::TaxSettings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutTaxRegistration on the
L<Tax Settings|Paws::TaxSettings> service. Use the attributes of this class
as arguments to method PutTaxRegistration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutTaxRegistration.

=head1 SYNOPSIS

    my $tax = Paws->service('TaxSettings');
    my $PutTaxRegistrationResponse = $tax->PutTaxRegistration(
      TaxRegistrationEntry => {
        RegistrationId   => 'MyRegistrationId',    # min: 1, max: 200
        RegistrationType => 'VAT', # values: VAT, GST, CPF, CNPJ, SST, TIN, NRIC
        AdditionalTaxInformation => {
          CanadaAdditionalInfo => {
            CanadaQuebecSalesTaxNumber =>
              'MyCanadaQuebecSalesTaxNumberString',    # OPTIONAL
            CanadaRetailSalesTaxNumber =>
              'MyCanadaRetailSalesTaxNumberString',    # OPTIONAL
            IsResellerAccount    => 1,                 # OPTIONAL
            ProvincialSalesTaxId =>
              'MyCanadaProvincialSalesTaxIdString',  # min: 7, max: 16; OPTIONAL
          },    # OPTIONAL
          EgyptAdditionalInfo => {
            UniqueIdentificationNumber =>
              'MyUniqueIdentificationNumber',    # OPTIONAL
            UniqueIdentificationNumberExpirationDate =>
              'MyDateString',                    # OPTIONAL
          },    # OPTIONAL
          EstoniaAdditionalInfo => {
            RegistryCommercialCode =>
              'MyRegistryCommercialCode',    # min: 8, max: 8

          },    # OPTIONAL
          GeorgiaAdditionalInfo => {
            PersonType =>
              'Legal Person',  # values: Legal Person, Physical Person, Business

          },    # OPTIONAL
          GreeceAdditionalInfo => {
            ContractingAuthorityCode => 'MyContractingAuthorityCode', # OPTIONAL
          },    # OPTIONAL
          IndonesiaAdditionalInfo => {
            DecisionNumber              => 'MyDecisionNumber',    # OPTIONAL
            PpnExceptionDesignationCode =>
              'MyPpnExceptionDesignationCode',                    # OPTIONAL
            TaxRegistrationNumberType =>
              'NIK',    # values: NIK, PassportNumber, NPWP, NITKU; OPTIONAL
          },    # OPTIONAL
          IsraelAdditionalInfo => {
            CustomerType => 'Business',     # values: Business, Individual
            DealerType   => 'Authorized',   # values: Authorized, Non-authorized

          },    # OPTIONAL
          ItalyAdditionalInfo => {
            CigNumber    => 'MyCigNumber',       # OPTIONAL
            CupNumber    => 'MyCupNumber',       # OPTIONAL
            SdiAccountId => 'MySdiAccountId',    # OPTIONAL
            TaxCode      => 'MyTaxCode',         # OPTIONAL
          },    # OPTIONAL
          KenyaAdditionalInfo => {
            PersonType =>
              'Legal Person',  # values: Legal Person, Physical Person, Business

          },    # OPTIONAL
          MalaysiaAdditionalInfo => {
            BusinessRegistrationNumber =>
              'MyBusinessRegistrationNumber',    # OPTIONAL
            ServiceTaxCodes => [
              'Consultancy',
              ... # values: Consultancy, Digital Service And Electronic Medium, IT Services, Training Or Coaching
            ],    # max: 4; OPTIONAL
            TaxInformationNumber => 'MyTaxInformationNumber',    # OPTIONAL
          },    # OPTIONAL
          PolandAdditionalInfo => {
            IndividualRegistrationNumber =>
              'MyIndividualRegistrationNumber',    # OPTIONAL
            IsGroupVatEnabled => 1,                # OPTIONAL
          },    # OPTIONAL
          RomaniaAdditionalInfo => {
            TaxRegistrationNumberType => 'TaxRegistrationNumber'
            ,    # values: TaxRegistrationNumber, LocalRegistrationNumber

          },    # OPTIONAL
          SaudiArabiaAdditionalInfo => {
            TaxRegistrationNumberType => 'TaxRegistrationNumber'
            , # values: TaxRegistrationNumber, TaxIdentificationNumber, CommercialRegistrationNumber; OPTIONAL
          },    # OPTIONAL
          SouthKoreaAdditionalInfo => {
            BusinessRepresentativeName =>
              'MyBusinessRepresentativeName',    # min: 1, max: 200
            ItemOfBusiness => 'MyItemOfBusiness',    # min: 1, max: 100
            LineOfBusiness => 'MyLineOfBusiness',    # min: 1, max: 100

          },    # OPTIONAL
          SpainAdditionalInfo => {
            RegistrationType => 'Intra-EU',    # values: Intra-EU, Local

          },    # OPTIONAL
          TurkeyAdditionalInfo => {
            Industries => 'CirculatingOrg'
            , # values: CirculatingOrg, ProfessionalOrg, Banks, Insurance, PensionAndBenefitFunds, DevelopmentAgencies; OPTIONAL
            KepEmailId     => 'MyKepEmailId',        # OPTIONAL
            SecondaryTaxId => 'MySecondaryTaxId',    # OPTIONAL
            TaxOffice      => 'MyTaxOffice',         # OPTIONAL
          },    # OPTIONAL
          UkraineAdditionalInfo => {
            UkraineTrnType => 'Business',    # values: Business, Individual

          },    # OPTIONAL
          UzbekistanAdditionalInfo => {
            TaxRegistrationNumberType =>
              'Business',    # values: Business, Individual; OPTIONAL
            VatRegistrationNumber => 'MyVatRegistrationNumber',    # OPTIONAL
          },    # OPTIONAL
          VietnamAdditionalInfo => {
            ElectronicTransactionCodeNumber =>
              'MyElectronicTransactionCodeNumber',    # OPTIONAL
            EnterpriseIdentificationNumber =>
              'MyEnterpriseIdentificationNumber',     # OPTIONAL
            PaymentVoucherNumber     => 'MyPaymentVoucherNumber',    # OPTIONAL
            PaymentVoucherNumberDate => 'MyDateString',              # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        CertifiedEmailId => 'MyCertifiedEmailId',    # OPTIONAL
        LegalAddress     => {
          AddressLine1     => 'MyAddressLine1',    # min: 1, max: 180
          City             => 'MyCity',            # min: 1, max: 50
          CountryCode      => 'MyCountryCode',     # min: 2, max: 2
          PostalCode       => 'MyPostalCode',      # min: 1, max: 20
          AddressLine2     => 'MyAddressLine2',    # min: 1, max: 60; OPTIONAL
          AddressLine3     => 'MyAddressLine3',    # min: 1, max: 60; OPTIONAL
          DistrictOrCounty => 'MyDistrict',        # min: 1, max: 50; OPTIONAL
          StateOrRegion    => 'MyState',           # min: 1, max: 50; OPTIONAL
        },    # OPTIONAL
        LegalName => 'MyLegalName',    # min: 1, max: 200; OPTIONAL
        Sector    =>
          'Business',    # values: Business, Individual, Government; OPTIONAL
        VerificationDetails => {
          DateOfBirth => 'MyDateOfBirth',    # min: 10, max: 10; OPTIONAL
          TaxRegistrationDocuments => [
            {
              File => {
                FileContent => 'BlobFileBlob',        # min: 1, max: 5242880
                FileName    => 'MyTaxDocumentName',

              },    # OPTIONAL
              S3Location => {
                Bucket => 'MyS3BucketName',    # min: 3, max: 63
                Key    => 'MyS3Key',           # min: 1, max: 1024

              },    # OPTIONAL
            },
            ...
          ],    # min: 1, max: 5; OPTIONAL
        },    # OPTIONAL
      },
      AccountId => 'MyAccountId',    # OPTIONAL
    );

    # Results:
    my $Status = $PutTaxRegistrationResponse->Status;

    # Returns a L<Paws::TaxSettings::PutTaxRegistrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tax/PutTaxRegistration>

=head1 ATTRIBUTES


=head2 AccountId => Str

Your unique account identifier.



=head2 B<REQUIRED> TaxRegistrationEntry => L<Paws::TaxSettings::TaxRegistrationEntry>

Your TRN information that will be stored to the account mentioned in
C<accountId>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutTaxRegistration in L<Paws::TaxSettings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

