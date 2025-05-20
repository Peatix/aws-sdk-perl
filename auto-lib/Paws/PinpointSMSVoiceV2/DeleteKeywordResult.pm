
package Paws::PinpointSMSVoiceV2::DeleteKeywordResult;
  use Moose;
  has Keyword => (is => 'ro', isa => 'Str');
  has KeywordAction => (is => 'ro', isa => 'Str');
  has KeywordMessage => (is => 'ro', isa => 'Str');
  has OriginationIdentity => (is => 'ro', isa => 'Str');
  has OriginationIdentityArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteKeywordResult

=head1 ATTRIBUTES


=head2 Keyword => Str

The keyword that was deleted.


=head2 KeywordAction => Str

The action that was associated with the deleted keyword.

Valid values are: C<"AUTOMATIC_RESPONSE">, C<"OPT_OUT">, C<"OPT_IN">
=head2 KeywordMessage => Str

The message that was associated with the deleted keyword.


=head2 OriginationIdentity => Str

The PhoneNumberId or PoolId that the keyword was associated with.


=head2 OriginationIdentityArn => Str

The PhoneNumberArn or PoolArn that the keyword was associated with.


=head2 _request_id => Str


=cut

1;