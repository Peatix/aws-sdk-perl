
package Paws::PartnerCentralSelling::RejectEngagementInvitation;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has RejectionReason => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RejectEngagementInvitation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::RejectEngagementInvitation - Arguments for method RejectEngagementInvitation on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RejectEngagementInvitation on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method RejectEngagementInvitation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RejectEngagementInvitation.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    $partnercentral -selling->RejectEngagementInvitation(
      Catalog         => 'MyCatalogIdentifier',
      Identifier      => 'MyEngagementInvitationArnOrIdentifier',
      RejectionReason => 'MyRejectionReasonString',                 # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/RejectEngagementInvitation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

This is the catalog that's associated with the engagement invitation.
Acceptable values are C<AWS> or C<Sandbox>, and these values determine
the environment in which the opportunity is managed.



=head2 B<REQUIRED> Identifier => Str

This is the unique identifier of the rejected C<EngagementInvitation>.
Providing the correct identifier helps to ensure that the intended
invitation is rejected.



=head2 RejectionReason => Str

This describes the reason for rejecting the engagement invitation,
which helps AWS track usage patterns. Acceptable values include the
following:

=over

=item *

I<Customer problem unclear:> The customer's problem isn't understood.

=item *

I<Next steps unclear:> The next steps required to proceed aren't
understood.

=item *

I<Unable to support:> The partner is unable to provide support due to
resource or capability constraints.

=item *

I<Duplicate of partner referral:> The opportunity is a duplicate of an
existing referral.

=item *

I<Other:> Any reason not covered by other values.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RejectEngagementInvitation in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

