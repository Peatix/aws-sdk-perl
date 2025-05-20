
package Paws::Omics::ListMultipartReadSetUploadsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Uploads => (is => 'ro', isa => 'ArrayRef[Paws::Omics::MultipartReadSetUploadListItem]', traits => ['NameInRequest'], request_name => 'uploads');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListMultipartReadSetUploadsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Next token returned in the response of a previous
ListMultipartReadSetUploads call. Used to get the next page of results.


=head2 Uploads => ArrayRef[L<Paws::Omics::MultipartReadSetUploadListItem>]

An array of multipart uploads.


=head2 _request_id => Str


=cut

