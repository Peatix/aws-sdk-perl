
package Paws::SESv2::GetEmailIdentityResponse;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has DkimAttributes => (is => 'ro', isa => 'Paws::SESv2::DkimAttributes');
  has FeedbackForwardingStatus => (is => 'ro', isa => 'Bool');
  has IdentityType => (is => 'ro', isa => 'Str');
  has MailFromAttributes => (is => 'ro', isa => 'Paws::SESv2::MailFromAttributes');
  has Policies => (is => 'ro', isa => 'Paws::SESv2::PolicyMap');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::Tag]');
  has VerificationInfo => (is => 'ro', isa => 'Paws::SESv2::VerificationInfo');
  has VerificationStatus => (is => 'ro', isa => 'Str');
  has VerifiedForSendingStatus => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetEmailIdentityResponse

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

The configuration set used by default when sending from this identity.


=head2 DkimAttributes => L<Paws::SESv2::DkimAttributes>

An object that contains information about the DKIM attributes for the
identity.


=head2 FeedbackForwardingStatus => Bool

The feedback forwarding configuration for the identity.

If the value is C<true>, you receive email notifications when bounce or
complaint events occur. These notifications are sent to the address
that you specified in the C<Return-Path> header of the original email.

You're required to have a method of tracking bounces and complaints. If
you haven't set up another mechanism for receiving bounce or complaint
notifications (for example, by setting up an event destination), you
receive an email notification when these events occur (even if this
setting is disabled).


=head2 IdentityType => Str

The email identity type. Note: the C<MANAGED_DOMAIN> identity type is
not supported.

Valid values are: C<"EMAIL_ADDRESS">, C<"DOMAIN">, C<"MANAGED_DOMAIN">
=head2 MailFromAttributes => L<Paws::SESv2::MailFromAttributes>

An object that contains information about the Mail-From attributes for
the email identity.


=head2 Policies => L<Paws::SESv2::PolicyMap>

A map of policy names to policies.


=head2 Tags => ArrayRef[L<Paws::SESv2::Tag>]

An array of objects that define the tags (keys and values) that are
associated with the email identity.


=head2 VerificationInfo => L<Paws::SESv2::VerificationInfo>

An object that contains additional information about the verification
status for the identity.


=head2 VerificationStatus => Str

The verification status of the identity. The status can be one of the
following:

=over

=item *

C<PENDING> E<ndash> The verification process was initiated, but Amazon
SES hasn't yet been able to verify the identity.

=item *

C<SUCCESS> E<ndash> The verification process completed successfully.

=item *

C<FAILED> E<ndash> The verification process failed.

=item *

C<TEMPORARY_FAILURE> E<ndash> A temporary issue is preventing Amazon
SES from determining the verification status of the identity.

=item *

C<NOT_STARTED> E<ndash> The verification process hasn't been initiated
for the identity.

=back


Valid values are: C<"PENDING">, C<"SUCCESS">, C<"FAILED">, C<"TEMPORARY_FAILURE">, C<"NOT_STARTED">
=head2 VerifiedForSendingStatus => Bool

Specifies whether or not the identity is verified. You can only send
email from verified email addresses or domains. For more information
about verifying identities, see the Amazon Pinpoint User Guide
(https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html).


=head2 _request_id => Str


=cut

