
package Paws::PartnerCentralSelling::AcceptEngagementInvitation;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptEngagementInvitation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::AcceptEngagementInvitation - Arguments for method AcceptEngagementInvitation on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptEngagementInvitation on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method AcceptEngagementInvitation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptEngagementInvitation.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    $partnercentral -selling->AcceptEngagementInvitation(
      Catalog    => 'MyCatalogIdentifier',
      Identifier => 'MyEngagementInvitationArnOrIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/AcceptEngagementInvitation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

The C<CatalogType> parameter specifies the catalog associated with the
engagement invitation. Accepted values are C<AWS> and C<Sandbox>, which
determine the environment in which the engagement invitation is
managed.



=head2 B<REQUIRED> Identifier => Str

The C<Identifier> parameter in the C<AcceptEngagementInvitationRequest>
specifies the unique identifier of the C<EngagementInvitation> to be
accepted. Providing the correct identifier ensures that the intended
invitation is accepted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptEngagementInvitation in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

