
package Paws::Omics::ListReadSetUploadPartsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Parts => (is => 'ro', isa => 'ArrayRef[Paws::Omics::ReadSetUploadPartListItem]', traits => ['NameInRequest'], request_name => 'parts');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListReadSetUploadPartsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Next token returned in the response of a previous
ListReadSetUploadParts call. Used to get the next page of results.


=head2 Parts => ArrayRef[L<Paws::Omics::ReadSetUploadPartListItem>]

An array of upload parts.


=head2 _request_id => Str


=cut

