
package Paws::PinpointSMSVoiceV2::DiscardRegistrationVersionResult;
  use Moose;
  has RegistrationArn => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationId => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationVersionStatus => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationVersionStatusHistory => (is => 'ro', isa => 'Paws::PinpointSMSVoiceV2::RegistrationVersionStatusHistory', required => 1);
  has VersionNumber => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DiscardRegistrationVersionResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegistrationArn => Str

The Amazon Resource Name (ARN) for the registration.


=head2 B<REQUIRED> RegistrationId => Str

The unique identifier for the registration.


=head2 B<REQUIRED> RegistrationVersionStatus => Str

The status of the registration version.

=over

=item *

C<APPROVED>: Your registration has been approved.

=item *

C<ARCHIVED>: Your previously approved registration version moves into
this status when a more recently submitted version is approved.

=item *

C<DENIED>: You must fix your registration and resubmit it.

=item *

C<DISCARDED>: You've abandon this version of their registration to
start over with a new version.

=item *

C<DRAFT>: The initial status of a registration version after
itE<rsquo>s created.

=item *

C<REQUIRES_AUTHENTICATION>: You need to complete email authentication.

=item *

C<REVIEWING>: Your registration has been accepted and is being
reviewed.

=item *

C<REVOKED>: Your previously approved registration has been revoked.

=item *

C<SUBMITTED>: Your registration has been submitted.

=back


Valid values are: C<"DRAFT">, C<"SUBMITTED">, C<"REVIEWING">, C<"REQUIRES_AUTHENTICATION">, C<"APPROVED">, C<"DISCARDED">, C<"DENIED">, C<"REVOKED">, C<"ARCHIVED">
=head2 B<REQUIRED> RegistrationVersionStatusHistory => L<Paws::PinpointSMSVoiceV2::RegistrationVersionStatusHistory>

The B<RegistrationVersionStatusHistory> object contains the time stamps
for when the reservations status changes.


=head2 B<REQUIRED> VersionNumber => Int

The version number of the registration.


=head2 _request_id => Str


=cut

1;