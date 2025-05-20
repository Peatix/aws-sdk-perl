
package Paws::PartnerCentralSelling::DisassociateOpportunity;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has OpportunityIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has RelatedEntityIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has RelatedEntityType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateOpportunity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::DisassociateOpportunity - Arguments for method DisassociateOpportunity on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateOpportunity on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method DisassociateOpportunity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateOpportunity.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    $partnercentral -selling->DisassociateOpportunity(
      Catalog                 => 'MyCatalogIdentifier',
      OpportunityIdentifier   => 'MyOpportunityIdentifier',
      RelatedEntityIdentifier =>
        'MyDisassociateOpportunityRequestRelatedEntityIdentifierString',
      RelatedEntityType => 'Solutions',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/DisassociateOpportunity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog associated with the request. This field takes a
string value from a predefined list: C<AWS> or C<Sandbox>. The catalog
determines which environment the opportunity disassociation is made in.
Use C<AWS> to disassociate opportunities in the Amazon Web Services
catalog, and C<Sandbox> for testing in secure, isolated environments.



=head2 B<REQUIRED> OpportunityIdentifier => Str

The opportunity's unique identifier for when you want to disassociate
it from related entities. This identifier helps to ensure that the
correct opportunity is updated.

Validation: Ensure that the provided identifier corresponds to an
existing opportunity in the Amazon Web Services system because
incorrect identifiers result in an error and no changes are made.



=head2 B<REQUIRED> RelatedEntityIdentifier => Str

The related entity's identifier that you want to disassociate from the
opportunity. Depending on the type of entity, this could be a simple
identifier or an Amazon Resource Name (ARN) for entities managed
through Amazon Web Services Marketplace.

For Amazon Web Services Marketplace entities, use the Amazon Web
Services Marketplace API to obtain the necessary ARNs. For guidance on
retrieving these ARNs, see Amazon Web Services MarketplaceUsing the
Amazon Web Services Marketplace Catalog API
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html).

Validation: Ensure the identifier or ARN is valid and corresponds to an
existing entity. An incorrect or invalid identifier results in an
error.



=head2 B<REQUIRED> RelatedEntityType => Str

The type of the entity that you're disassociating from the opportunity.
When you specify the entity type, it helps the system correctly process
the disassociation request to ensure that the right connections are
removed.

Examples of entity types include Partner Solution, Amazon Web Services
product, and Amazon Web Services Marketplaceoffer. Ensure that the
value matches one of the expected entity types.

Validation: Provide a valid entity type to help ensure successful
disassociation. An invalid or incorrect entity type results in an
error.

Valid values are: C<"Solutions">, C<"AwsProducts">, C<"AwsMarketplaceOffers">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateOpportunity in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

