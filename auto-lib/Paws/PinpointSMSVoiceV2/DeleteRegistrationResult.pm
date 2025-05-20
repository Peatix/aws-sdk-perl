
package Paws::PinpointSMSVoiceV2::DeleteRegistrationResult;
  use Moose;
  has AdditionalAttributes => (is => 'ro', isa => 'Paws::PinpointSMSVoiceV2::StringMap');
  has ApprovedVersionNumber => (is => 'ro', isa => 'Int');
  has CreatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has CurrentVersionNumber => (is => 'ro', isa => 'Int', required => 1);
  has LatestDeniedVersionNumber => (is => 'ro', isa => 'Int');
  has RegistrationArn => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationId => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationStatus => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationType => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteRegistrationResult

=head1 ATTRIBUTES


=head2 AdditionalAttributes => L<Paws::PinpointSMSVoiceV2::StringMap>

Metadata about a given registration which is specific to that
registration type.


=head2 ApprovedVersionNumber => Int

The version number of the registration that was approved.


=head2 B<REQUIRED> CreatedTimestamp => Str

The time when the registration was created, in UNIX epoch time
(https://www.epochconverter.com/) format.


=head2 B<REQUIRED> CurrentVersionNumber => Int

The current version number of the registration.


=head2 LatestDeniedVersionNumber => Int

The latest version number of the registration that was denied.


=head2 B<REQUIRED> RegistrationArn => Str

The Amazon Resource Name (ARN) for the registration.


=head2 B<REQUIRED> RegistrationId => Str

The unique identifier for the registration.


=head2 B<REQUIRED> RegistrationStatus => Str

The status of the registration.

=over

=item *

C<CLOSED>: The phone number or sender ID has been deleted and you must
also delete the registration for the number.

=item *

C<CREATED>: Your registration is created but not submitted.

=item *

C<COMPLETE>: Your registration has been approved and your origination
identity has been created.

=item *

C<DELETED>: The registration has been deleted.

=item *

C<PROVISIONING>: Your registration has been approved and your
origination identity is being created.

=item *

C<REQUIRES_AUTHENTICATION>: You need to complete email authentication.

=item *

C<REQUIRES_UPDATES>: You must fix your registration and resubmit it.

=item *

C<REVIEWING>: Your registration has been accepted and is being
reviewed.

=item *

C<SUBMITTED>: Your registration has been submitted and is awaiting
review.

=back


Valid values are: C<"CREATED">, C<"SUBMITTED">, C<"REVIEWING">, C<"REQUIRES_AUTHENTICATION">, C<"PROVISIONING">, C<"COMPLETE">, C<"REQUIRES_UPDATES">, C<"CLOSED">, C<"DELETED">
=head2 B<REQUIRED> RegistrationType => Str

The type of registration form. The list of B<RegistrationTypes> can be
found using the DescribeRegistrationTypeDefinitions action.


=head2 _request_id => Str


=cut

1;