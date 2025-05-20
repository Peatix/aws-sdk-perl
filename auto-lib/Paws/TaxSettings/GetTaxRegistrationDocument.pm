
package Paws::TaxSettings::GetTaxRegistrationDocument;
  use Moose;
  has DestinationS3Location => (is => 'ro', isa => 'Paws::TaxSettings::DestinationS3Location', traits => ['NameInRequest'], request_name => 'destinationS3Location');
  has TaxDocumentMetadata => (is => 'ro', isa => 'Paws::TaxSettings::TaxDocumentMetadata', traits => ['NameInRequest'], request_name => 'taxDocumentMetadata', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTaxRegistrationDocument');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetTaxRegistrationDocument');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TaxSettings::GetTaxRegistrationDocumentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::GetTaxRegistrationDocument - Arguments for method GetTaxRegistrationDocument on L<Paws::TaxSettings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTaxRegistrationDocument on the
L<Tax Settings|Paws::TaxSettings> service. Use the attributes of this class
as arguments to method GetTaxRegistrationDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTaxRegistrationDocument.

=head1 SYNOPSIS

    my $tax = Paws->service('TaxSettings');
    my $GetTaxRegistrationDocumentResponse = $tax->GetTaxRegistrationDocument(
      TaxDocumentMetadata => {
        TaxDocumentAccessToken => 'MyTaxDocumentAccessToken',
        TaxDocumentName        => 'MyTaxDocumentName',

      },
      DestinationS3Location => {
        Bucket => 'MyS3BucketName',    # min: 3, max: 63
        Prefix => 'MyS3Prefix',        # max: 512; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DestinationFilePath =
      $GetTaxRegistrationDocumentResponse->DestinationFilePath;
    my $PresignedS3Url = $GetTaxRegistrationDocumentResponse->PresignedS3Url;

    # Returns a L<Paws::TaxSettings::GetTaxRegistrationDocumentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tax/GetTaxRegistrationDocument>

=head1 ATTRIBUTES


=head2 DestinationS3Location => L<Paws::TaxSettings::DestinationS3Location>

The Amazon S3 bucket that you specify to download your tax documents
to.



=head2 B<REQUIRED> TaxDocumentMetadata => L<Paws::TaxSettings::TaxDocumentMetadata>

The metadata for your tax document.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTaxRegistrationDocument in L<Paws::TaxSettings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

