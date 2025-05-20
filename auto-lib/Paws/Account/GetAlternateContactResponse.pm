
package Paws::Account::GetAlternateContactResponse;
  use Moose;
  has AlternateContact => (is => 'ro', isa => 'Paws::Account::AlternateContact');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Account::GetAlternateContactResponse

=head1 ATTRIBUTES


=head2 AlternateContact => L<Paws::Account::AlternateContact>

A structure that contains the details for the specified alternate
contact.


=head2 _request_id => Str


=cut

