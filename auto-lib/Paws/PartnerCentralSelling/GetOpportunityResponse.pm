
package Paws::PartnerCentralSelling::GetOpportunityResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has CreatedDate => (is => 'ro', isa => 'Str', required => 1);
  has Customer => (is => 'ro', isa => 'Paws::PartnerCentralSelling::Customer');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedDate => (is => 'ro', isa => 'Str', required => 1);
  has LifeCycle => (is => 'ro', isa => 'Paws::PartnerCentralSelling::LifeCycle');
  has Marketing => (is => 'ro', isa => 'Paws::PartnerCentralSelling::Marketing');
  has NationalSecurity => (is => 'ro', isa => 'Str');
  has OpportunityTeam => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::Contact]');
  has OpportunityType => (is => 'ro', isa => 'Str');
  has PartnerOpportunityIdentifier => (is => 'ro', isa => 'Str');
  has PrimaryNeedsFromAws => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Project => (is => 'ro', isa => 'Paws::PartnerCentralSelling::Project');
  has RelatedEntityIdentifiers => (is => 'ro', isa => 'Paws::PartnerCentralSelling::RelatedEntityIdentifiers', required => 1);
  has SoftwareRevenue => (is => 'ro', isa => 'Paws::PartnerCentralSelling::SoftwareRevenue');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::GetOpportunityResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) that uniquely identifies the
opportunity.


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog associated with the request. This field takes a
string value from a predefined list: C<AWS> or C<Sandbox>. The catalog
determines which environment the opportunity information is retrieved
from. Use C<AWS> to retrieve opportunities in the Amazon Web Services
catalog, and C<Sandbox> to retrieve opportunities in a secure and
isolated testing environment.


=head2 B<REQUIRED> CreatedDate => Str

C<DateTime> when the C<Opportunity> was last created.


=head2 Customer => L<Paws::PartnerCentralSelling::Customer>

Specifies details of the customer associated with the C<Opportunity>.


=head2 B<REQUIRED> Id => Str

Read-only, system generated C<Opportunity> unique identifier.


=head2 B<REQUIRED> LastModifiedDate => Str

C<DateTime> when the opportunity was last modified.


=head2 LifeCycle => L<Paws::PartnerCentralSelling::LifeCycle>

An object that contains lifecycle details for the C<Opportunity>.


=head2 Marketing => L<Paws::PartnerCentralSelling::Marketing>

An object that contains marketing details for the C<Opportunity>.


=head2 NationalSecurity => Str

Indicates whether the C<Opportunity> pertains to a national security
project. This field must be set to C<true> only when the customer's
industry is I<Government>. Additional privacy and security measures
apply during the review and management process for opportunities marked
as C<NationalSecurity>.

Valid values are: C<"Yes">, C<"No">
=head2 OpportunityTeam => ArrayRef[L<Paws::PartnerCentralSelling::Contact>]

Represents the internal team handling the opportunity. Specify the
members involved in collaborating on this opportunity within the
partner's organization.


=head2 OpportunityType => Str

Specifies the opportunity type as renewal, new, or expansion.

Opportunity types:

=over

=item *

New opportunity: Represents a new business opportunity with a potential
customer that's not previously engaged with your solutions or services.

=item *

Renewal opportunity: Represents an opportunity to renew an existing
contract or subscription with a current customer, which helps to ensure
service continuity.

=item *

Expansion opportunity: Represents an opportunity to expand the scope of
a customer's contract or subscription, either by adding new services or
increasing the volume of existing services.

=back


Valid values are: C<"Net New Business">, C<"Flat Renewal">, C<"Expansion">
=head2 PartnerOpportunityIdentifier => Str

Specifies the opportunity's unique identifier in the partner's CRM
system. This value is essential to track and reconcile because it's
included in the outbound payload sent back to the partner.


=head2 PrimaryNeedsFromAws => ArrayRef[Str|Undef]

Identifies the type of support the partner needs from Amazon Web
Services.

Valid values:

=over

=item *

CosellE<mdash>Architectural Validation: Confirmation from Amazon Web
Services that the partner's proposed solution architecture is aligned
with Amazon Web Services best practices and poses minimal architectural
risks.

=item *

CosellE<mdash>Business Presentation: Request Amazon Web Services
seller's participation in a joint customer presentation.

=item *

CosellE<mdash>Competitive Information: Access to Amazon Web Services
competitive resources and support for the partner's proposed solution.

=item *

CosellE<mdash>Pricing Assistance: Connect with an Amazon Web Services
seller for support situations where a partner may be receiving an
upfront discount on a service (for example: EDP deals).

=item *

CosellE<mdash>Technical Consultation: Connect with an Amazon Web
Services Solutions Architect to address the partner's questions about
the proposed solution.

=item *

CosellE<mdash>Total Cost of Ownership Evaluation: Assistance with
quoting different cost savings of proposed solutions on Amazon Web
Services versus on-premises or a traditional hosting environment.

=item *

CosellE<mdash>Deal Support: Request Amazon Web Services seller's
support to progress the opportunity (for example: joint customer call,
strategic positioning).

=item *

CosellE<mdash>Support for Public Tender/RFx: Opportunity related to the
public sector where the partner needs Amazon Web Services RFx support.

=back



=head2 Project => L<Paws::PartnerCentralSelling::Project>

An object that contains project details summary for the C<Opportunity>.


=head2 B<REQUIRED> RelatedEntityIdentifiers => L<Paws::PartnerCentralSelling::RelatedEntityIdentifiers>

Provides information about the associations of other entities with the
opportunity. These entities include identifiers for C<AWSProducts>,
C<Partner Solutions>, and C<AWSMarketplaceOffers>.


=head2 SoftwareRevenue => L<Paws::PartnerCentralSelling::SoftwareRevenue>

Specifies details of a customer's procurement terms. Required only for
partners in eligible programs.


=head2 _request_id => Str


=cut

1;