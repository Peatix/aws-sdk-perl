
package Paws::B2bi::CreatePartnershipResponse;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'capabilities' );
  has CapabilityOptions => (is => 'ro', isa => 'Paws::B2bi::CapabilityOptions', traits => ['NameInRequest'], request_name => 'capabilityOptions' );
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt' , required => 1);
  has Email => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'email' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has PartnershipArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'partnershipArn' , required => 1);
  has PartnershipId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'partnershipId' , required => 1);
  has Phone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'phone' );
  has ProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileId' , required => 1);
  has TradingPartnerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tradingPartnerId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::CreatePartnershipResponse

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

Returns one or more capabilities associated with this partnership.


=head2 CapabilityOptions => L<Paws::B2bi::CapabilityOptions>

Returns the structure that contains the details for the associated
capabilities.


=head2 B<REQUIRED> CreatedAt => Str

Returns a timestamp for creation date and time of the partnership.


=head2 Email => Str

Returns the email address associated with this trading partner.


=head2 Name => Str

Returns a descriptive name for the partnership.


=head2 B<REQUIRED> PartnershipArn => Str

Returns an Amazon Resource Name (ARN) for a specific Amazon Web
Services resource, such as a capability, partnership, profile, or
transformer.


=head2 B<REQUIRED> PartnershipId => Str

Returns the unique, system-generated identifier for a partnership.


=head2 Phone => Str

Returns the phone number associated with the partnership.


=head2 B<REQUIRED> ProfileId => Str

Returns the unique, system-generated identifier for the profile
connected to this partnership.


=head2 TradingPartnerId => Str

Returns the unique, system-generated identifier for a trading partner.


=head2 _request_id => Str


=cut

1;