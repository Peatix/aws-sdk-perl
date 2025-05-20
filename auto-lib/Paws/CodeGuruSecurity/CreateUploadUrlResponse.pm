
package Paws::CodeGuruSecurity::CreateUploadUrlResponse;
  use Moose;
  has CodeArtifactId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'codeArtifactId', required => 1);
  has RequestHeaders => (is => 'ro', isa => 'Paws::CodeGuruSecurity::RequestHeaderMap', traits => ['NameInRequest'], request_name => 'requestHeaders', required => 1);
  has S3Url => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3Url', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::CreateUploadUrlResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeArtifactId => Str

The identifier for the uploaded code resource. Pass this to
C<CreateScan> to use the uploaded resources.


=head2 B<REQUIRED> RequestHeaders => L<Paws::CodeGuruSecurity::RequestHeaderMap>

A set of key-value pairs that contain the required headers when
uploading your resource.


=head2 B<REQUIRED> S3Url => Str

A pre-signed S3 URL. You can upload the code file you want to scan with
the required C<requestHeaders> using any HTTP client.


=head2 _request_id => Str


=cut

