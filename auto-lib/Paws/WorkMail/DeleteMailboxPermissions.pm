
package Paws::WorkMail::DeleteMailboxPermissions;
  use Moose;
  has EntityId => (is => 'ro', isa => 'Str', required => 1);
  has GranteeId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMailboxPermissions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DeleteMailboxPermissionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DeleteMailboxPermissions - Arguments for method DeleteMailboxPermissions on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMailboxPermissions on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DeleteMailboxPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMailboxPermissions.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DeleteMailboxPermissionsResponse = $workmail->DeleteMailboxPermissions(
      EntityId       => 'MyEntityIdentifier',
      GranteeId      => 'MyEntityIdentifier',
      OrganizationId => 'MyOrganizationId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DeleteMailboxPermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityId => Str

The identifier of the entity that owns the mailbox.

The identifier can be I<UserId or Group Id>, I<Username or Groupname>,
or I<email>.

=over

=item *

Entity ID: 12345678-1234-1234-1234-123456789012,
r-0123456789a0123456789b0123456789, or
S-1-1-12-1234567890-123456789-123456789-1234

=item *

Email address: entity@domain.tld

=item *

Entity name: entity

=back




=head2 B<REQUIRED> GranteeId => Str

The identifier of the entity for which to delete granted permissions.

The identifier can be I<UserId, ResourceID, or Group Id>, I<Username or
Groupname>, or I<email>.

=over

=item *

Grantee ID:
12345678-1234-1234-1234-123456789012,r-0123456789a0123456789b0123456789,
or S-1-1-12-1234567890-123456789-123456789-1234

=item *

Email address: grantee@domain.tld

=item *

Grantee name: grantee

=back




=head2 B<REQUIRED> OrganizationId => Str

The identifier of the organization under which the member (user or
group) exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMailboxPermissions in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

