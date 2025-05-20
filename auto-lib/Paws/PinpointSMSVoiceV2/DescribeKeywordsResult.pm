
package Paws::PinpointSMSVoiceV2::DescribeKeywordsResult;
  use Moose;
  has Keywords => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::KeywordInformation]');
  has NextToken => (is => 'ro', isa => 'Str');
  has OriginationIdentity => (is => 'ro', isa => 'Str');
  has OriginationIdentityArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeKeywordsResult

=head1 ATTRIBUTES


=head2 Keywords => ArrayRef[L<Paws::PinpointSMSVoiceV2::KeywordInformation>]

An array of KeywordInformation objects that contain the results.


=head2 NextToken => Str

The token to be used for the next set of paginated results. If this
field is empty then there are no more results.


=head2 OriginationIdentity => Str

The PhoneNumberId or PoolId that is associated with the
OriginationIdentity.


=head2 OriginationIdentityArn => Str

The PhoneNumberArn or PoolArn that is associated with the
OriginationIdentity.


=head2 _request_id => Str


=cut

1;