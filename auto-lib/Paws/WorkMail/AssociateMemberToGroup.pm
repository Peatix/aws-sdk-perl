
package Paws::WorkMail::AssociateMemberToGroup;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has MemberId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateMemberToGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::AssociateMemberToGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::AssociateMemberToGroup - Arguments for method AssociateMemberToGroup on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateMemberToGroup on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method AssociateMemberToGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateMemberToGroup.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $AssociateMemberToGroupResponse = $workmail->AssociateMemberToGroup(
      GroupId        => 'MyEntityIdentifier',
      MemberId       => 'MyEntityIdentifier',
      OrganizationId => 'MyOrganizationId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/AssociateMemberToGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupId => Str

The group to which the member (user or group) is associated.

The identifier can accept I<GroupId>, I<Groupname>, or I<email>. The
following identity formats are available:

=over

=item *

Group ID: 12345678-1234-1234-1234-123456789012 or
S-1-1-12-1234567890-123456789-123456789-1234

=item *

Email address: group@domain.tld

=item *

Group name: group

=back




=head2 B<REQUIRED> MemberId => Str

The member (user or group) to associate to the group.

The member ID can accept I<UserID or GroupId>, I<Username or
Groupname>, or I<email>.

=over

=item *

Member: 12345678-1234-1234-1234-123456789012 or
S-1-1-12-1234567890-123456789-123456789-1234

=item *

Email address: member@domain.tld

=item *

Member name: member

=back




=head2 B<REQUIRED> OrganizationId => Str

The organization under which the group exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateMemberToGroup in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

