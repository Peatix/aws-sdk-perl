
package Paws::TaxSettings::GetTaxRegistrationDocumentResponse;
  use Moose;
  has DestinationFilePath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationFilePath');
  has PresignedS3Url => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'presignedS3Url');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::GetTaxRegistrationDocumentResponse

=head1 ATTRIBUTES


=head2 DestinationFilePath => Str

The file path of the Amazon S3 bucket where you want to download your
tax document to.


=head2 PresignedS3Url => Str

The Amazon S3 presigned URL of the tax registration document.


=head2 _request_id => Str


=cut

