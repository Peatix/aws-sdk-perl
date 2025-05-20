
package Paws::WorkMail::AssociateDelegateToResource;
  use Moose;
  has EntityId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateDelegateToResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::AssociateDelegateToResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::AssociateDelegateToResource - Arguments for method AssociateDelegateToResource on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateDelegateToResource on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method AssociateDelegateToResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateDelegateToResource.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $AssociateDelegateToResourceResponse =
      $workmail->AssociateDelegateToResource(
      EntityId       => 'MyEntityIdentifier',
      OrganizationId => 'MyOrganizationId',
      ResourceId     => 'MyEntityIdentifier',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/AssociateDelegateToResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityId => Str

The member (user or group) to associate to the resource.

The entity ID can accept I<UserId or GroupID>, I<Username or
Groupname>, or I<email>.

=over

=item *

Entity: 12345678-1234-1234-1234-123456789012 or
S-1-1-12-1234567890-123456789-123456789-1234

=item *

Email address: entity@domain.tld

=item *

Entity: entity

=back




=head2 B<REQUIRED> OrganizationId => Str

The organization under which the resource exists.



=head2 B<REQUIRED> ResourceId => Str

The resource for which members (users or groups) are associated.

The identifier can accept I<ResourceId>, I<Resourcename>, or I<email>.
The following identity formats are available:

=over

=item *

Resource ID: r-0123456789a0123456789b0123456789

=item *

Email address: resource@domain.tld

=item *

Resource name: resource

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateDelegateToResource in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

