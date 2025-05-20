
package Paws::PartnerCentralSelling::AssociateOpportunity;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has OpportunityIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has RelatedEntityIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has RelatedEntityType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateOpportunity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::AssociateOpportunity - Arguments for method AssociateOpportunity on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateOpportunity on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method AssociateOpportunity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateOpportunity.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    $partnercentral -selling->AssociateOpportunity(
      Catalog                 => 'MyCatalogIdentifier',
      OpportunityIdentifier   => 'MyOpportunityIdentifier',
      RelatedEntityIdentifier =>
        'MyAssociateOpportunityRequestRelatedEntityIdentifierString',
      RelatedEntityType => 'Solutions',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/AssociateOpportunity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog associated with the request. This field takes a
string value from a predefined list: C<AWS> or C<Sandbox>. The catalog
determines which environment the opportunity association is made in.
Use C<AWS> to associate opportunities in the Amazon Web Services
catalog, and C<Sandbox> for testing in secure, isolated environments.



=head2 B<REQUIRED> OpportunityIdentifier => Str

Requires the C<Opportunity>'s unique identifier when you want to
associate it with a related entity. Provide the correct identifier so
the intended opportunity is updated with the association.



=head2 B<REQUIRED> RelatedEntityIdentifier => Str

Requires the related entity's unique identifier when you want to
associate it with the C< Opportunity>. For Amazon Web Services
Marketplace entities, provide the Amazon Resource Name (ARN). Use the
Amazon Web Services Marketplace API
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html)
to obtain the ARN.



=head2 B<REQUIRED> RelatedEntityType => Str

Specifies the entity type that you're associating with the C<
Opportunity>. This helps to categorize and properly process the
association.

Valid values are: C<"Solutions">, C<"AwsProducts">, C<"AwsMarketplaceOffers">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateOpportunity in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

