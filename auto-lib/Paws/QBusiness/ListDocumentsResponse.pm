
package Paws::QBusiness::ListDocumentsResponse;
  use Moose;
  has DocumentDetailList => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::DocumentDetails]', traits => ['NameInRequest'], request_name => 'documentDetailList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListDocumentsResponse

=head1 ATTRIBUTES


=head2 DocumentDetailList => ArrayRef[L<Paws::QBusiness::DocumentDetails>]

A list of document details.


=head2 NextToken => Str

If the C<maxResults> response was incomplete because there is more data
to retrieve, Amazon Q Business returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
documents.


=head2 _request_id => Str


=cut

