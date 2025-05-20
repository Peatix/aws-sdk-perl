
package Paws::DirectoryServiceData::DescribeGroupResult;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');
  has DistinguishedName => (is => 'ro', isa => 'Str');
  has GroupScope => (is => 'ro', isa => 'Str');
  has GroupType => (is => 'ro', isa => 'Str');
  has OtherAttributes => (is => 'ro', isa => 'Paws::DirectoryServiceData::Attributes');
  has Realm => (is => 'ro', isa => 'Str');
  has SAMAccountName => (is => 'ro', isa => 'Str');
  has SID => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::DescribeGroupResult

=head1 ATTRIBUTES


=head2 DirectoryId => Str

The identifier (ID) of the directory that's associated with the group.


=head2 DistinguishedName => Str

The distinguished name
(https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name)
of the object.


=head2 GroupScope => Str

The scope of the AD group. For details, see Active Directory security
groups
(https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope).

Valid values are: C<"DomainLocal">, C<"Global">, C<"Universal">, C<"BuiltinLocal">
=head2 GroupType => Str

The AD group type. For details, see Active Directory security group
type
(https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work).

Valid values are: C<"Distribution">, C<"Security">
=head2 OtherAttributes => L<Paws::DirectoryServiceData::Attributes>

The attribute values that are returned for the attribute names that are
included in the request.


=head2 Realm => Str

The domain name that's associated with the group.


=head2 SAMAccountName => Str

The name of the group.


=head2 SID => Str

The unique security identifier (SID) of the group.


=head2 _request_id => Str


=cut

