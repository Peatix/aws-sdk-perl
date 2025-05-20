
package Paws::Connect::CreateEmailAddressResponse;
  use Moose;
  has EmailAddressArn => (is => 'ro', isa => 'Str');
  has EmailAddressId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateEmailAddressResponse

=head1 ATTRIBUTES


=head2 EmailAddressArn => Str

The Amazon Resource Name (ARN) of the email address.


=head2 EmailAddressId => Str

The identifier of the email address.


=head2 _request_id => Str


=cut

