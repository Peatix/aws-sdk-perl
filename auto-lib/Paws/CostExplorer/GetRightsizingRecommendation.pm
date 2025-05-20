
package Paws::CostExplorer::GetRightsizingRecommendation;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::CostExplorer::RightsizingRecommendationConfiguration');
  has Filter => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');
  has Service => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRightsizingRecommendation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetRightsizingRecommendationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetRightsizingRecommendation - Arguments for method GetRightsizingRecommendation on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRightsizingRecommendation on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetRightsizingRecommendation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRightsizingRecommendation.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetRightsizingRecommendationResponse =
      $ce->GetRightsizingRecommendation(
      Service       => 'MyGenericString',
      Configuration => {
        BenefitsConsidered   => 1,
        RecommendationTarget => 'SAME_INSTANCE_FAMILY'
        ,    # values: SAME_INSTANCE_FAMILY, CROSS_INSTANCE_FAMILY

      },    # OPTIONAL
      Filter => {
        And            => [ <Expression>, ... ],    # OPTIONAL
        CostCategories => {
          Key          => 'MyCostCategoryName',     # min: 1, max: 50; OPTIONAL
          MatchOptions => [
            'EQUALS',
            ... # values: EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
          ],    # OPTIONAL
          Values => [
            'MyValue', ...    # max: 1024
          ],    # OPTIONAL
        },    # OPTIONAL
        Dimensions => {
          Key => 'AZ'
          , # values: AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE; OPTIONAL
          MatchOptions => [
            'EQUALS',
            ... # values: EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
          ],    # OPTIONAL
          Values => [
            'MyValue', ...    # max: 1024
          ],    # OPTIONAL
        },    # OPTIONAL
        Not  => <Expression>,
        Or   => [ <Expression>, ... ],    # OPTIONAL
        Tags => {
          Key          => 'MyTagKey',     # max: 1024; OPTIONAL
          MatchOptions => [
            'EQUALS',
            ... # values: EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
          ],    # OPTIONAL
          Values => [
            'MyValue', ...    # max: 1024
          ],    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      NextPageToken => 'MyNextPageToken',    # OPTIONAL
      PageSize      => 1,                    # OPTIONAL
      );

    # Results:
    my $Configuration = $GetRightsizingRecommendationResponse->Configuration;
    my $Metadata      = $GetRightsizingRecommendationResponse->Metadata;
    my $NextPageToken = $GetRightsizingRecommendationResponse->NextPageToken;
    my $RightsizingRecommendations =
      $GetRightsizingRecommendationResponse->RightsizingRecommendations;
    my $Summary = $GetRightsizingRecommendationResponse->Summary;

 # Returns a L<Paws::CostExplorer::GetRightsizingRecommendationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetRightsizingRecommendation>

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::CostExplorer::RightsizingRecommendationConfiguration>

You can use Configuration to customize recommendations across two
attributes. You can choose to view recommendations for instances within
the same instance families or across different instance families. You
can also choose to view your estimated savings that are associated with
recommendations with consideration of existing Savings Plans or RI
benefits, or neither.



=head2 Filter => L<Paws::CostExplorer::Expression>





=head2 NextPageToken => Str

The pagination token that indicates the next set of results that you
want to retrieve.



=head2 PageSize => Int

The number of recommendations that you want returned in a single
response object.



=head2 B<REQUIRED> Service => Str

The specific service that you want recommendations for. The only valid
value for C<GetRightsizingRecommendation> is "C<AmazonEC2>".




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRightsizingRecommendation in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

