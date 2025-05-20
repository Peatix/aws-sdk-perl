
package Paws::SSOIdentityStore::DescribeUserResponse;
  use Moose;
  has Addresses => (is => 'ro', isa => 'ArrayRef[Paws::SSOIdentityStore::Address]');
  has DisplayName => (is => 'ro', isa => 'Str');
  has Emails => (is => 'ro', isa => 'ArrayRef[Paws::SSOIdentityStore::Email]');
  has ExternalIds => (is => 'ro', isa => 'ArrayRef[Paws::SSOIdentityStore::ExternalId]');
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);
  has Locale => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Paws::SSOIdentityStore::Name');
  has NickName => (is => 'ro', isa => 'Str');
  has PhoneNumbers => (is => 'ro', isa => 'ArrayRef[Paws::SSOIdentityStore::PhoneNumber]');
  has PreferredLanguage => (is => 'ro', isa => 'Str');
  has ProfileUrl => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');
  has Title => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');
  has UserType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::DescribeUserResponse

=head1 ATTRIBUTES


=head2 Addresses => ArrayRef[L<Paws::SSOIdentityStore::Address>]

The physical address of the user.


=head2 DisplayName => Str

The display name of the user.


=head2 Emails => ArrayRef[L<Paws::SSOIdentityStore::Email>]

The email address of the user.


=head2 ExternalIds => ArrayRef[L<Paws::SSOIdentityStore::ExternalId>]

A list of C<ExternalId> objects that contains the identifiers issued to
this resource by an external identity provider.


=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store.


=head2 Locale => Str

A string containing the geographical region or location of the user.


=head2 Name => L<Paws::SSOIdentityStore::Name>

The name of the user.


=head2 NickName => Str

An alternative descriptive name for the user.


=head2 PhoneNumbers => ArrayRef[L<Paws::SSOIdentityStore::PhoneNumber>]

A list of C<PhoneNumber> objects associated with a user.


=head2 PreferredLanguage => Str

The preferred language of the user.


=head2 ProfileUrl => Str

A URL link for the user's profile.


=head2 Timezone => Str

The time zone for a user.


=head2 Title => Str

A string containing the title of the user.


=head2 B<REQUIRED> UserId => Str

The identifier for a user in the identity store.


=head2 UserName => Str

A unique string used to identify the user. The length limit is 128
characters. This value can consist of letters, accented characters,
symbols, numbers, and punctuation. This value is specified at the time
the user is created and stored as an attribute of the user object in
the identity store.


=head2 UserType => Str

A string indicating the type of user.


=head2 _request_id => Str


=cut

1;