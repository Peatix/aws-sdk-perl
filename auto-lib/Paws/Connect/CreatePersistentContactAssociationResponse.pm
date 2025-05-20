
package Paws::Connect::CreatePersistentContactAssociationResponse;
  use Moose;
  has ContinuedFromContactId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreatePersistentContactAssociationResponse

=head1 ATTRIBUTES


=head2 ContinuedFromContactId => Str

The contactId from which a persistent chat session is started. This
field is populated only for persistent chat.


=head2 _request_id => Str


=cut

