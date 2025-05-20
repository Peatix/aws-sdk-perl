
package Paws::Connect::UpdatePhoneNumberResponse;
  use Moose;
  has PhoneNumberArn => (is => 'ro', isa => 'Str');
  has PhoneNumberId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdatePhoneNumberResponse

=head1 ATTRIBUTES


=head2 PhoneNumberArn => Str

The Amazon Resource Name (ARN) of the phone number.


=head2 PhoneNumberId => Str

A unique identifier for the phone number.


=head2 _request_id => Str


=cut

