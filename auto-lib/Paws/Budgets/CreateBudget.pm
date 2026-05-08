
package Paws::Budgets::CreateBudget;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has Budget => (is => 'ro', isa => 'Paws::Budgets::Budget', required => 1);
  has NotificationsWithSubscribers => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::NotificationWithSubscribers]');
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::ResourceTag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBudget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::CreateBudgetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::CreateBudget - Arguments for method CreateBudget on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBudget on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method CreateBudget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBudget.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $CreateBudgetResponse = $budgets->CreateBudget(
      AccountId => 'MyAccountId',
      Budget    => {
        BudgetName => 'MyBudgetName',    # min: 1, max: 100
        BudgetType => 'USAGE'
        , # values: USAGE, COST, RI_UTILIZATION, RI_COVERAGE, SAVINGS_PLANS_UTILIZATION, SAVINGS_PLANS_COVERAGE
        TimeUnit       => 'DAILY', # values: DAILY, MONTHLY, QUARTERLY, ANNUALLY
        AutoAdjustData => {
          AutoAdjustType    => 'HISTORICAL',    # values: HISTORICAL, FORECAST
          HistoricalOptions => {
            BudgetAdjustmentPeriod   => 1,      # min: 1, max: 60
            LookBackAvailablePeriods => 1,      # min: 1, max: 60
          },    # OPTIONAL
          LastAutoAdjustTime => '1970-01-01T01:00:00',    # OPTIONAL
        },    # OPTIONAL
        BudgetLimit => {
          Amount => 'MyNumericValue',    # min: 1, max: 2147483647
          Unit   => 'MyUnitValue',       # min: 1, max: 2147483647

        },    # OPTIONAL
        CalculatedSpend => {
          ActualSpend => {
            Amount => 'MyNumericValue',    # min: 1, max: 2147483647
            Unit   => 'MyUnitValue',       # min: 1, max: 2147483647

          },    # OPTIONAL
          ForecastedSpend => {
            Amount => 'MyNumericValue',    # min: 1, max: 2147483647
            Unit   => 'MyUnitValue',       # min: 1, max: 2147483647

          },    # OPTIONAL
        },    # OPTIONAL
        CostFilters => {
          'MyGenericString' => [
            'MyDimensionValue', ...    # max: 2147483647
          ],    # key: max: 2147483647
        },    # OPTIONAL
        CostTypes => {
          IncludeCredit            => 1,    # OPTIONAL
          IncludeDiscount          => 1,    # OPTIONAL
          IncludeOtherSubscription => 1,    # OPTIONAL
          IncludeRecurring         => 1,    # OPTIONAL
          IncludeRefund            => 1,    # OPTIONAL
          IncludeSubscription      => 1,    # OPTIONAL
          IncludeSupport           => 1,    # OPTIONAL
          IncludeTax               => 1,    # OPTIONAL
          IncludeUpfront           => 1,    # OPTIONAL
          UseAmortized             => 1,    # OPTIONAL
          UseBlended               => 1,    # OPTIONAL
        },    # OPTIONAL
        FilterExpression => {
          And            => [ <Expression>, ... ],    # OPTIONAL
          CostCategories => {
            Key          => 'MyCostCategoryName',     # OPTIONAL
            MatchOptions => [
              'EQUALS',
              ... # values: EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, GREATER_THAN_OR_EQUAL, CASE_SENSITIVE, CASE_INSENSITIVE
            ],    # OPTIONAL
            Values => [
              'MyValue', ...    # max: 1024
            ],    # min: 1; OPTIONAL
          },    # OPTIONAL
          Dimensions => {
            Key => 'AZ'
            , # values: AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, INVOICING_ENTITY, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, RESERVATION_MODIFIED, TAG_KEY, COST_CATEGORY_NAME
            Values => [
              'MyValue', ...    # max: 1024
            ],    # min: 1; OPTIONAL
            MatchOptions => [
              'EQUALS',
              ... # values: EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, GREATER_THAN_OR_EQUAL, CASE_SENSITIVE, CASE_INSENSITIVE
            ],    # OPTIONAL
          },    # OPTIONAL
          Not  => <Expression>,
          Or   => [ <Expression>, ... ],    # OPTIONAL
          Tags => {
            Key          => 'MyTagKey',     # max: 1024; OPTIONAL
            MatchOptions => [
              'EQUALS',
              ... # values: EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, GREATER_THAN_OR_EQUAL, CASE_SENSITIVE, CASE_INSENSITIVE
            ],    # OPTIONAL
            Values => [
              'MyValue', ...    # max: 1024
            ],    # min: 1; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        LastUpdatedTime => '1970-01-01T01:00:00',    # OPTIONAL
        Metrics         => [
          'BlendedCost',
          ... # values: BlendedCost, UnblendedCost, AmortizedCost, NetUnblendedCost, NetAmortizedCost, UsageQuantity, NormalizedUsageAmount, Hours
        ],    # max: 1; OPTIONAL
        PlannedBudgetLimits => {
          'MyGenericString' => {
            Amount => 'MyNumericValue',    # min: 1, max: 2147483647
            Unit   => 'MyUnitValue',       # min: 1, max: 2147483647

          },    # key: max: 2147483647, value: OPTIONAL
        },    # OPTIONAL
        TimePeriod => {
          End   => '1970-01-01T01:00:00',    # OPTIONAL
          Start => '1970-01-01T01:00:00',    # OPTIONAL
        },    # OPTIONAL
      },
      NotificationsWithSubscribers => [
        {
          Notification => {
            ComparisonOperator =>
              'GREATER_THAN',    # values: GREATER_THAN, LESS_THAN, EQUAL_TO
            NotificationType  => 'ACTUAL',    # values: ACTUAL, FORECASTED
            Threshold         => 1,           # max: 15000000000000
            NotificationState => 'OK',        # values: OK, ALARM; OPTIONAL
            ThresholdType     =>
              'PERCENTAGE',    # values: PERCENTAGE, ABSOLUTE_VALUE; OPTIONAL
          },
          Subscribers => [
            {
              Address => 'MySubscriberAddress',    # min: 1, max: 2147483647
              SubscriptionType => 'SNS',           # values: SNS, EMAIL

            },
            ...
          ],    # min: 1, max: 11

        },
        ...
      ],    # OPTIONAL
      ResourceTags => [
        {
          Key   => 'MyResourceTagKey',      # min: 1, max: 128
          Value => 'MyResourceTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<accountId> that is associated with the budget.



=head2 B<REQUIRED> Budget => L<Paws::Budgets::Budget>

The budget object that you want to create.



=head2 NotificationsWithSubscribers => ArrayRef[L<Paws::Budgets::NotificationWithSubscribers>]

A notification that you want to associate with a budget. A budget can
have up to five notifications, and each notification can have one SNS
subscriber and up to 10 email subscribers. If you include notifications
and subscribers in your C<CreateBudget> call, Amazon Web Services
creates the notifications and subscribers for you.



=head2 ResourceTags => ArrayRef[L<Paws::Budgets::ResourceTag>]

An optional list of tags to associate with the specified budget. Each
tag consists of a key and a value, and each key must be unique for the
resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBudget in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

