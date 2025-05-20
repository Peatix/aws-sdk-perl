
package Paws::CostExplorer::GetCostAndUsage;
  use Moose;
  has BillingViewArn => (is => 'ro', isa => 'Str');
  has Filter => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has Granularity => (is => 'ro', isa => 'Str', required => 1);
  has GroupBy => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::GroupDefinition]');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has NextPageToken => (is => 'ro', isa => 'Str');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCostAndUsage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetCostAndUsageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetCostAndUsage - Arguments for method GetCostAndUsage on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCostAndUsage on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetCostAndUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCostAndUsage.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetCostAndUsageResponse = $ce->GetCostAndUsage(
      Granularity => 'DAILY',
      Metrics     => [
        'MyMetricName', ...    # max: 1024
      ],
      TimePeriod => {
        End   => 'MyYearMonthDay',    # max: 40
        Start => 'MyYearMonthDay',    # max: 40

      },
      BillingViewArn => 'MyBillingViewArn',    # OPTIONAL
      Filter         => {
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
      GroupBy => [
        {
          Key  => 'MyGroupDefinitionKey',    # max: 1024; OPTIONAL
          Type => 'DIMENSION', # values: DIMENSION, TAG, COST_CATEGORY; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      NextPageToken => 'MyNextPageToken',    # OPTIONAL
    );

    # Results:
    my $DimensionValueAttributes =
      $GetCostAndUsageResponse->DimensionValueAttributes;
    my $GroupDefinitions = $GetCostAndUsageResponse->GroupDefinitions;
    my $NextPageToken    = $GetCostAndUsageResponse->NextPageToken;
    my $ResultsByTime    = $GetCostAndUsageResponse->ResultsByTime;

    # Returns a L<Paws::CostExplorer::GetCostAndUsageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetCostAndUsage>

=head1 ATTRIBUTES


=head2 BillingViewArn => Str

The Amazon Resource Name (ARN) that uniquely identifies a specific
billing view. The ARN is used to specify which particular billing view
you want to interact with or retrieve information from when making API
calls related to Amazon Web Services Billing and Cost Management
features. The BillingViewArn can be retrieved by calling the
ListBillingViews API.



=head2 Filter => L<Paws::CostExplorer::Expression>

Filters Amazon Web Services costs by different dimensions. For example,
you can specify C<SERVICE> and C<LINKED_ACCOUNT> and get the costs that
are associated with that account's usage of that service. You can nest
C<Expression> objects to define any combination of dimension filters.
For more information, see Expression
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html).

Valid values for C<MatchOptions> for C<Dimensions> are C<EQUALS> and
C<CASE_SENSITIVE>.

Valid values for C<MatchOptions> for C<CostCategories> and C<Tags> are
C<EQUALS>, C<ABSENT>, and C<CASE_SENSITIVE>. Default values are
C<EQUALS> and C<CASE_SENSITIVE>.



=head2 B<REQUIRED> Granularity => Str

Sets the Amazon Web Services cost granularity to C<MONTHLY> or
C<DAILY>, or C<HOURLY>. If C<Granularity> isn't set, the response
object doesn't include the C<Granularity>, either C<MONTHLY> or
C<DAILY>, or C<HOURLY>.

Valid values are: C<"DAILY">, C<"MONTHLY">, C<"HOURLY">

=head2 GroupBy => ArrayRef[L<Paws::CostExplorer::GroupDefinition>]

You can group Amazon Web Services costs using up to two different
groups, either dimensions, tag keys, cost categories, or any two group
by types.

Valid values for the C<DIMENSION> type are C<AZ>, C<INSTANCE_TYPE>,
C<LEGAL_ENTITY_NAME>, C<INVOICING_ENTITY>, C<LINKED_ACCOUNT>,
C<OPERATION>, C<PLATFORM>, C<PURCHASE_TYPE>, C<SERVICE>, C<TENANCY>,
C<RECORD_TYPE>, and C<USAGE_TYPE>.

When you group by the C<TAG> type and include a valid tag key, you get
all tag values, including empty strings.



=head2 B<REQUIRED> Metrics => ArrayRef[Str|Undef]

Which metrics are returned in the query. For more information about
blended and unblended rates, see Why does the "blended" annotation
appear on some line items in my bill?
(http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/).

Valid values are C<AmortizedCost>, C<BlendedCost>, C<NetAmortizedCost>,
C<NetUnblendedCost>, C<NormalizedUsageAmount>, C<UnblendedCost>, and
C<UsageQuantity>.

If you return the C<UsageQuantity> metric, the service aggregates all
usage numbers without taking into account the units. For example, if
you aggregate C<usageQuantity> across all of Amazon EC2, the results
aren't meaningful because Amazon EC2 compute hours and data transfer
are measured in different units (for example, hours and GB). To get
more meaningful C<UsageQuantity> metrics, filter by C<UsageType> or
C<UsageTypeGroups>.

C<Metrics> is required for C<GetCostAndUsage> requests.



=head2 NextPageToken => Str

The token to retrieve the next set of results. Amazon Web Services
provides the token when the response from a previous call has more
results than the maximum page size.



=head2 B<REQUIRED> TimePeriod => L<Paws::CostExplorer::DateInterval>

Sets the start date and end date for retrieving Amazon Web Services
costs. The start date is inclusive, but the end date is exclusive. For
example, if C<start> is C<2017-01-01> and C<end> is C<2017-05-01>, then
the cost and usage data is retrieved from C<2017-01-01> up to and
including C<2017-04-30> but not including C<2017-05-01>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCostAndUsage in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

