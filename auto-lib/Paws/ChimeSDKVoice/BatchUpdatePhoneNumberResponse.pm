
package Paws::ChimeSDKVoice::BatchUpdatePhoneNumberResponse;
  use Moose;
  has PhoneNumberErrors => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::PhoneNumberError]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::BatchUpdatePhoneNumberResponse

=head1 ATTRIBUTES


=head2 PhoneNumberErrors => ArrayRef[L<Paws::ChimeSDKVoice::PhoneNumberError>]

A list of failed phone numbers and their error messages.


=head2 _request_id => Str


=cut

