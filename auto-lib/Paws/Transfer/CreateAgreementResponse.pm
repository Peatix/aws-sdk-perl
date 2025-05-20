
package Paws::Transfer::CreateAgreementResponse;
  use Moose;
  has AgreementId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateAgreementResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgreementId => Str

The unique identifier for the agreement. Use this ID for deleting, or
updating an agreement, as well as in any other API calls that require
that you specify the agreement ID.


=head2 _request_id => Str


=cut

1;