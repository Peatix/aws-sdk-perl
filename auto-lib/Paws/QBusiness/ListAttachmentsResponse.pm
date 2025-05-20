
package Paws::QBusiness::ListAttachmentsResponse;
  use Moose;
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Attachment]', traits => ['NameInRequest'], request_name => 'attachments');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListAttachmentsResponse

=head1 ATTRIBUTES


=head2 Attachments => ArrayRef[L<Paws::QBusiness::Attachment>]

An array of information on one or more attachments.


=head2 NextToken => Str

If the response is truncated, Amazon Q Business returns this token,
which you can use in a later request to list the next set of
attachments.


=head2 _request_id => Str


=cut

