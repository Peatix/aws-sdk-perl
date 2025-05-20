
package Paws::QBusiness::CheckDocumentAccessResponse;
  use Moose;
  has DocumentAcl => (is => 'ro', isa => 'Paws::QBusiness::DocumentAcl', traits => ['NameInRequest'], request_name => 'documentAcl');
  has HasAccess => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'hasAccess');
  has UserAliases => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::AssociatedUser]', traits => ['NameInRequest'], request_name => 'userAliases');
  has UserGroups => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::AssociatedGroup]', traits => ['NameInRequest'], request_name => 'userGroups');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CheckDocumentAccessResponse

=head1 ATTRIBUTES


=head2 DocumentAcl => L<Paws::QBusiness::DocumentAcl>

The Access Control List (ACL) associated with the document. Includes
allowlist and denylist conditions that determine user access.


=head2 HasAccess => Bool

A boolean value indicating whether the specified user has access to the
document, either direct access or transitive access via groups and
aliases attached to the document.


=head2 UserAliases => ArrayRef[L<Paws::QBusiness::AssociatedUser>]

An array of aliases associated with the user. This includes both global
and local aliases, each with a name and type.


=head2 UserGroups => ArrayRef[L<Paws::QBusiness::AssociatedGroup>]

An array of groups the user is part of for the specified data source.
Each group has a name and type.


=head2 _request_id => Str


=cut

