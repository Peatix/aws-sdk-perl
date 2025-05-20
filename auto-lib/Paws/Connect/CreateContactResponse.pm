
package Paws::Connect::CreateContactResponse;
  use Moose;
  has ContactArn => (is => 'ro', isa => 'Str');
  has ContactId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateContactResponse

=head1 ATTRIBUTES


=head2 ContactArn => Str

The Amazon Resource Name (ARN) of the created contact.


=head2 ContactId => Str

The identifier of the contact in this instance of Amazon Connect.


=head2 _request_id => Str


=cut

