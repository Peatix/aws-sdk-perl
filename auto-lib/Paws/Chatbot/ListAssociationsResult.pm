
package Paws::Chatbot::ListAssociationsResult;
  use Moose;
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::Chatbot::AssociationListing]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::ListAssociationsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Associations => ArrayRef[L<Paws::Chatbot::AssociationListing>]

The resources associated with this channel configuration.


=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by MaxResults.


=head2 _request_id => Str


=cut

