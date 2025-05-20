
package Paws::DirectoryServiceData::DescribeUserResult;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');
  has DistinguishedName => (is => 'ro', isa => 'Str');
  has EmailAddress => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has GivenName => (is => 'ro', isa => 'Str');
  has OtherAttributes => (is => 'ro', isa => 'Paws::DirectoryServiceData::Attributes');
  has Realm => (is => 'ro', isa => 'Str');
  has SAMAccountName => (is => 'ro', isa => 'Str');
  has SID => (is => 'ro', isa => 'Str');
  has Surname => (is => 'ro', isa => 'Str');
  has UserPrincipalName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::DescribeUserResult

=head1 ATTRIBUTES


=head2 DirectoryId => Str

The identifier (ID) of the directory that's associated with the user.


=head2 DistinguishedName => Str

The distinguished name
(https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name)
of the object.


=head2 EmailAddress => Str

The email address of the user.


=head2 Enabled => Bool

Indicates whether the user account is active.


=head2 GivenName => Str

The first name of the user.


=head2 OtherAttributes => L<Paws::DirectoryServiceData::Attributes>

The attribute values that are returned for the attribute names that are
included in the request.

Attribute names are case insensitive.


=head2 Realm => Str

The domain name that's associated with the user.


=head2 SAMAccountName => Str

The name of the user.


=head2 SID => Str

The unique security identifier (SID) of the user.


=head2 Surname => Str

The last name of the user.


=head2 UserPrincipalName => Str

The UPN that is an Internet-style login name for a user and is based on
the Internet standard RFC 822
(https://datatracker.ietf.org/doc/html/rfc822). The UPN is shorter than
the distinguished name and easier to remember.


=head2 _request_id => Str


=cut

