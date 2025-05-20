
package Paws::QConnect::StartContentUploadResponse;
  use Moose;
  has HeadersToInclude => (is => 'ro', isa => 'Paws::QConnect::Headers', traits => ['NameInRequest'], request_name => 'headersToInclude', required => 1);
  has UploadId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadId', required => 1);
  has Url => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'url', required => 1);
  has UrlExpiry => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'urlExpiry', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::StartContentUploadResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HeadersToInclude => L<Paws::QConnect::Headers>

The headers to include in the upload.


=head2 B<REQUIRED> UploadId => Str

The identifier of the upload.


=head2 B<REQUIRED> Url => Str

The URL of the upload.


=head2 B<REQUIRED> UrlExpiry => Str

The expiration time of the URL as an epoch timestamp.


=head2 _request_id => Str


=cut

