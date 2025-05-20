
package Paws::CostExplorer::GetReservationPurchaseRecommendation;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has AccountScope => (is => 'ro', isa => 'Str');
  has Filter => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has LookbackPeriodInDays => (is => 'ro', isa => 'Str');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');
  has PaymentOption => (is => 'ro', isa => 'Str');
  has Service => (is => 'ro', isa => 'Str', required => 1);
  has ServiceSpecification => (is => 'ro', isa => 'Paws::CostExplorer::ServiceSpecification');
  has TermInYears => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReservationPurchaseRecommendation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetReservationPurchaseRecommendationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetReservationPurchaseRecommendation - Arguments for method GetReservationPurchaseRecommendation on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReservationPurchaseRecommendation on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetReservationPurchaseRecommendation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReservationPurchaseRecommendation.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetReservationPurchaseRecommendationResponse =
      $ce->GetReservationPurchaseRecommendation(
      Service      => 'MyGenericString',
      AccountId    => 'MyGenericString',    # OPTIONAL
      AccountScope => 'PAYER',              # OPTIONAL
      Filter       => {
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
      LookbackPeriodInDays => 'SEVEN_DAYS',         # OPTIONAL
      NextPageToken        => 'MyNextPageToken',    # OPTIONAL
      PageSize             => 1,                    # OPTIONAL
      PaymentOption        => 'NO_UPFRONT',         # OPTIONAL
      ServiceSpecification => {
        EC2Specification => {
          OfferingClass => 'STANDARD', # values: STANDARD, CONVERTIBLE; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      TermInYears => 'ONE_YEAR',    # OPTIONAL
      );

    # Results:
    my $Metadata = $GetReservationPurchaseRecommendationResponse->Metadata;
    my $NextPageToken =
      $GetReservationPurchaseRecommendationResponse->NextPageToken;
    my $Recommendations =
      $GetReservationPurchaseRecommendationResponse->Recommendations;

# Returns a L<Paws::CostExplorer::GetReservationPurchaseRecommendationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetReservationPurchaseRecommendation>

=head1 ATTRIBUTES


=head2 AccountId => Str

The account ID that's associated with the recommendation.



=head2 AccountScope => Str

The account scope that you want your recommendations for. Amazon Web
Services calculates recommendations including the management account
and member accounts if the value is set to C<PAYER>. If the value is
C<LINKED>, recommendations are calculated for individual member
accounts only.

Valid values are: C<"PAYER">, C<"LINKED">

=head2 Filter => L<Paws::CostExplorer::Expression>





=head2 LookbackPeriodInDays => Str

The number of previous days that you want Amazon Web Services to
consider when it calculates your recommendations.

Valid values are: C<"SEVEN_DAYS">, C<"THIRTY_DAYS">, C<"SIXTY_DAYS">

=head2 NextPageToken => Str

The pagination token that indicates the next set of results that you
want to retrieve.



=head2 PageSize => Int

The number of recommendations that you want returned in a single
response object.



=head2 PaymentOption => Str

The reservation purchase option that you want recommendations for.

Valid values are: C<"NO_UPFRONT">, C<"PARTIAL_UPFRONT">, C<"ALL_UPFRONT">, C<"LIGHT_UTILIZATION">, C<"MEDIUM_UTILIZATION">, C<"HEAVY_UTILIZATION">

=head2 B<REQUIRED> Service => Str

The specific service that you want recommendations for.



=head2 ServiceSpecification => L<Paws::CostExplorer::ServiceSpecification>

The hardware specifications for the service instances that you want
recommendations for, such as standard or convertible Amazon EC2
instances.



=head2 TermInYears => Str

The reservation term that you want recommendations for.

Valid values are: C<"ONE_YEAR">, C<"THREE_YEARS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReservationPurchaseRecommendation in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

