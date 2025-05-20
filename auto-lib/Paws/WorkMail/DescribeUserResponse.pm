
package Paws::WorkMail::DescribeUserResponse;
  use Moose;
  has City => (is => 'ro', isa => 'Str');
  has Company => (is => 'ro', isa => 'Str');
  has Country => (is => 'ro', isa => 'Str');
  has Department => (is => 'ro', isa => 'Str');
  has DisabledDate => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has Email => (is => 'ro', isa => 'Str');
  has EnabledDate => (is => 'ro', isa => 'Str');
  has FirstName => (is => 'ro', isa => 'Str');
  has HiddenFromGlobalAddressList => (is => 'ro', isa => 'Bool');
  has IdentityProviderIdentityStoreId => (is => 'ro', isa => 'Str');
  has IdentityProviderUserId => (is => 'ro', isa => 'Str');
  has Initials => (is => 'ro', isa => 'Str');
  has JobTitle => (is => 'ro', isa => 'Str');
  has LastName => (is => 'ro', isa => 'Str');
  has MailboxDeprovisionedDate => (is => 'ro', isa => 'Str');
  has MailboxProvisionedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Office => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Street => (is => 'ro', isa => 'Str');
  has Telephone => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');
  has UserRole => (is => 'ro', isa => 'Str');
  has ZipCode => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeUserResponse

=head1 ATTRIBUTES


=head2 City => Str

City where the user is located.


=head2 Company => Str

Company of the user.


=head2 Country => Str

Country where the user is located.


=head2 Department => Str

Department of the user.


=head2 DisabledDate => Str

The date and time at which the user was disabled for WorkMail usage, in
UNIX epoch time format.


=head2 DisplayName => Str

The display name of the user.


=head2 Email => Str

The email of the user.


=head2 EnabledDate => Str

The date and time at which the user was enabled for WorkMailusage, in
UNIX epoch time format.


=head2 FirstName => Str

First name of the user.


=head2 HiddenFromGlobalAddressList => Bool

If enabled, the user is hidden from the global address list.


=head2 IdentityProviderIdentityStoreId => Str

Identity Store ID from the IAM Identity Center. If this parameter is
empty it will be updated automatically when the user logs in for the
first time to the mailbox associated with WorkMail.


=head2 IdentityProviderUserId => Str

User ID from the IAM Identity Center. If this parameter is empty it
will be updated automatically when the user logs in for the first time
to the mailbox associated with WorkMail.


=head2 Initials => Str

Initials of the user.


=head2 JobTitle => Str

Job title of the user.


=head2 LastName => Str

Last name of the user.


=head2 MailboxDeprovisionedDate => Str

The date when the mailbox was removed for the user.


=head2 MailboxProvisionedDate => Str

The date when the mailbox was created for the user.


=head2 Name => Str

The name for the user.


=head2 Office => Str

Office where the user is located.


=head2 State => Str

The state of a user: enabled (registered to WorkMail) or disabled
(deregistered or never registered to WorkMail).

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"DELETED">
=head2 Street => Str

Street where the user is located.


=head2 Telephone => Str

User's contact number.


=head2 UserId => Str

The identifier for the described user.


=head2 UserRole => Str

In certain cases, other entities are modeled as users. If
interoperability is enabled, resources are imported into WorkMail as
users. Because different WorkMail organizations rely on different
directory types, administrators can distinguish between an unregistered
user (account is disabled and has a user role) and the directory
administrators. The values are USER, RESOURCE, SYSTEM_USER, and
REMOTE_USER.

Valid values are: C<"USER">, C<"RESOURCE">, C<"SYSTEM_USER">, C<"REMOTE_USER">
=head2 ZipCode => Str

Zip code of the user.


=head2 _request_id => Str


=cut

1;