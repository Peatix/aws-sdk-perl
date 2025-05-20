
package Paws::PinpointSMSVoiceV2::PutKeywordResult;
  use Moose;
  has Keyword => (is => 'ro', isa => 'Str');
  has KeywordAction => (is => 'ro', isa => 'Str');
  has KeywordMessage => (is => 'ro', isa => 'Str');
  has OriginationIdentity => (is => 'ro', isa => 'Str');
  has OriginationIdentityArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::PutKeywordResult

=head1 ATTRIBUTES


=head2 Keyword => Str

The keyword that was added.


=head2 KeywordAction => Str

The action to perform when the keyword is used.

Valid values are: C<"AUTOMATIC_RESPONSE">, C<"OPT_OUT">, C<"OPT_IN">
=head2 KeywordMessage => Str

The message associated with the keyword.


=head2 OriginationIdentity => Str

The PhoneNumberId or PoolId that the keyword was associated with.


=head2 OriginationIdentityArn => Str

The PhoneNumberArn or PoolArn that the keyword was associated with.


=head2 _request_id => Str


=cut

1;