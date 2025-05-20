
package Paws::SSOIdentityStore::DescribeGroupResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has ExternalIds => (is => 'ro', isa => 'ArrayRef[Paws::SSOIdentityStore::ExternalId]');
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::DescribeGroupResponse

=head1 ATTRIBUTES


=head2 Description => Str

A string containing a description of the group.


=head2 DisplayName => Str

The groupE<rsquo>s display name value. The length limit is 1,024
characters. This value can consist of letters, accented characters,
symbols, numbers, punctuation, tab, new line, carriage return, space,
and nonbreaking space in this attribute. This value is specified at the
time that the group is created and stored as an attribute of the group
object in the identity store.


=head2 ExternalIds => ArrayRef[L<Paws::SSOIdentityStore::ExternalId>]

A list of C<ExternalId> objects that contains the identifiers issued to
this resource by an external identity provider.


=head2 B<REQUIRED> GroupId => Str

The identifier for a group in the identity store.


=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store.


=head2 _request_id => Str


=cut

1;