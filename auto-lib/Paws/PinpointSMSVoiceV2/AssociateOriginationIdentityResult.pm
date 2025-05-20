
package Paws::PinpointSMSVoiceV2::AssociateOriginationIdentityResult;
  use Moose;
  has IsoCountryCode => (is => 'ro', isa => 'Str');
  has OriginationIdentity => (is => 'ro', isa => 'Str');
  has OriginationIdentityArn => (is => 'ro', isa => 'Str');
  has PoolArn => (is => 'ro', isa => 'Str');
  has PoolId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::AssociateOriginationIdentityResult

=head1 ATTRIBUTES


=head2 IsoCountryCode => Str

The two-character code, in ISO 3166-1 alpha-2 format, for the country
or region.


=head2 OriginationIdentity => Str

The PhoneNumberId or SenderId of the origination identity.


=head2 OriginationIdentityArn => Str

The PhoneNumberArn or SenderIdArn of the origination identity.


=head2 PoolArn => Str

The Amazon Resource Name (ARN) of the pool that is now associated with
the origination identity.


=head2 PoolId => Str

The PoolId of the pool that is now associated with the origination
identity.


=head2 _request_id => Str


=cut

1;