
package Paws::PinpointSMSVoiceV2::CreateRegistrationAssociationResult;
  use Moose;
  has IsoCountryCode => (is => 'ro', isa => 'Str');
  has PhoneNumber => (is => 'ro', isa => 'Str');
  has RegistrationArn => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationId => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationType => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::CreateRegistrationAssociationResult

=head1 ATTRIBUTES


=head2 IsoCountryCode => Str

The two-character code, in ISO 3166-1 alpha-2 format, for the country
or region.


=head2 PhoneNumber => Str

The phone number associated with the registration in E.164 format.


=head2 B<REQUIRED> RegistrationArn => Str

The Amazon Resource Name (ARN) for the registration.


=head2 B<REQUIRED> RegistrationId => Str

The unique identifier for the registration.


=head2 B<REQUIRED> RegistrationType => Str

The type of registration form. The list of B<RegistrationTypes> can be
found using the DescribeRegistrationTypeDefinitions action.


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the origination identity that is
associated with the registration.


=head2 B<REQUIRED> ResourceId => Str

The unique identifier for the origination identity. For example this
could be a B<PhoneNumberId> or B<SenderId>.


=head2 B<REQUIRED> ResourceType => Str

The registration type or origination identity type.


=head2 _request_id => Str


=cut

1;