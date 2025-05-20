
package Paws::PinpointSMSVoiceV2::ListPoolOriginationIdentitiesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OriginationIdentities => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::OriginationIdentityMetadata]');
  has PoolArn => (is => 'ro', isa => 'Str');
  has PoolId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::ListPoolOriginationIdentitiesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to be used for the next set of paginated results. If this
field is empty then there are no more results.


=head2 OriginationIdentities => ArrayRef[L<Paws::PinpointSMSVoiceV2::OriginationIdentityMetadata>]

An array of any OriginationIdentityMetadata objects.


=head2 PoolArn => Str

The Amazon Resource Name (ARN) for the pool.


=head2 PoolId => Str

The unique PoolId of the pool.


=head2 _request_id => Str


=cut

1;