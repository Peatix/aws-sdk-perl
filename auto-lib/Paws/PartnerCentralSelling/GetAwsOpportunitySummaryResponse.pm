
package Paws::PartnerCentralSelling::GetAwsOpportunitySummaryResponse;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has Customer => (is => 'ro', isa => 'Paws::PartnerCentralSelling::AwsOpportunityCustomer');
  has Insights => (is => 'ro', isa => 'Paws::PartnerCentralSelling::AwsOpportunityInsights');
  has InvolvementType => (is => 'ro', isa => 'Str');
  has InvolvementTypeChangeReason => (is => 'ro', isa => 'Str');
  has LifeCycle => (is => 'ro', isa => 'Paws::PartnerCentralSelling::AwsOpportunityLifeCycle');
  has OpportunityTeam => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::AwsTeamMember]');
  has Origin => (is => 'ro', isa => 'Str');
  has Project => (is => 'ro', isa => 'Paws::PartnerCentralSelling::AwsOpportunityProject');
  has RelatedEntityIds => (is => 'ro', isa => 'Paws::PartnerCentralSelling::AwsOpportunityRelatedEntities');
  has RelatedOpportunityId => (is => 'ro', isa => 'Str');
  has Visibility => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::GetAwsOpportunitySummaryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog in which the AWS Opportunity exists. This is the
environment (e.g., C<AWS> or C<Sandbox>) where the opportunity is being
managed.


=head2 Customer => L<Paws::PartnerCentralSelling::AwsOpportunityCustomer>

Provides details about the customer associated with the AWS
Opportunity, including account information, industry, and other
customer data. These details help partners understand the business
context of the opportunity.


=head2 Insights => L<Paws::PartnerCentralSelling::AwsOpportunityInsights>

Provides insights into the AWS Opportunity, including engagement score
and recommended actions that AWS suggests for the partner.


=head2 InvolvementType => Str

Specifies the type of involvement AWS has in the opportunity, such as
direct cosell or advisory support. This field helps partners understand
the role AWS plays in advancing the opportunity.

Valid values are: C<"For Visibility Only">, C<"Co-Sell">
=head2 InvolvementTypeChangeReason => Str

Provides a reason for any changes in the involvement type of AWS in the
opportunity. This field is used to track why the level of AWS
engagement has changed from C<For Visibility Only> to C<Co-sell>
offering transparency into the partnership dynamics.

Valid values are: C<"Expansion Opportunity">, C<"Change in Deal Information">, C<"Customer Requested">, C<"Technical Complexity">, C<"Risk Mitigation">
=head2 LifeCycle => L<Paws::PartnerCentralSelling::AwsOpportunityLifeCycle>

Contains lifecycle information for the AWS Opportunity, including
review status, stage, and target close date. This field is crucial for
partners to monitor the progression of the opportunity.


=head2 OpportunityTeam => ArrayRef[L<Paws::PartnerCentralSelling::AwsTeamMember>]

Details the AWS opportunity team, including members involved. This
information helps partners know who from AWS is engaged and what their
role is.


=head2 Origin => Str

Specifies whether the AWS Opportunity originated from AWS or the
partner. This helps distinguish between opportunities that were sourced
by AWS and those referred by the partner.

Valid values are: C<"AWS Referral">, C<"Partner Referral">
=head2 Project => L<Paws::PartnerCentralSelling::AwsOpportunityProject>

Provides details about the project associated with the AWS Opportunity,
including the customerE<rsquo>s business problem, expected outcomes,
and project scope. This information is crucial for understanding the
broader context of the opportunity.


=head2 RelatedEntityIds => L<Paws::PartnerCentralSelling::AwsOpportunityRelatedEntities>

Lists related entity identifiers, such as AWS products or partner
solutions, associated with the AWS Opportunity. These identifiers
provide additional context and help partners understand which AWS
services are involved.


=head2 RelatedOpportunityId => Str

Provides the unique identifier of the related partner opportunity,
allowing partners to link the AWS Opportunity to their corresponding
opportunity in their CRM system.


=head2 Visibility => Str

Defines the visibility level for the AWS Opportunity. Use C<Full>
visibility for most cases, while C<Limited> visibility is reserved for
special programs or sensitive opportunities.

Valid values are: C<"Full">, C<"Limited">
=head2 _request_id => Str


=cut

1;