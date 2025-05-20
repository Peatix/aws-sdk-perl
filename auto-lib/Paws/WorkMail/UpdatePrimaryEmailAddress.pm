
package Paws::WorkMail::UpdatePrimaryEmailAddress;
  use Moose;
  has Email => (is => 'ro', isa => 'Str', required => 1);
  has EntityId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePrimaryEmailAddress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::UpdatePrimaryEmailAddressResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::UpdatePrimaryEmailAddress - Arguments for method UpdatePrimaryEmailAddress on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePrimaryEmailAddress on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method UpdatePrimaryEmailAddress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePrimaryEmailAddress.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $UpdatePrimaryEmailAddressResponse =
      $workmail->UpdatePrimaryEmailAddress(
      Email          => 'MyEmailAddress',
      EntityId       => 'MyEntityIdentifier',
      OrganizationId => 'MyOrganizationId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/UpdatePrimaryEmailAddress>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Email => Str

The value of the email to be updated as primary.



=head2 B<REQUIRED> EntityId => Str

The user, group, or resource to update.

The identifier can accept I<UseriD, ResourceId, or GroupId>,
I<Username, Resourcename, or Groupname>, or I<email>. The following
identity formats are available:

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




=head2 B<REQUIRED> OrganizationId => Str

The organization that contains the user, group, or resource to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePrimaryEmailAddress in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

