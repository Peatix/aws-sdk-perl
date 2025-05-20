
package Paws::Account::GetContactInformationResponse;
  use Moose;
  has ContactInformation => (is => 'ro', isa => 'Paws::Account::ContactInformation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Account::GetContactInformationResponse

=head1 ATTRIBUTES


=head2 ContactInformation => L<Paws::Account::ContactInformation>

Contains the details of the primary contact information associated with
an Amazon Web Services account.


=head2 _request_id => Str


=cut

