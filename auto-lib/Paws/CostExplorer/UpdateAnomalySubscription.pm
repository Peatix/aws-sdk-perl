
package Paws::CostExplorer::UpdateAnomalySubscription;
  use Moose;
  has Frequency => (is => 'ro', isa => 'Str');
  has MonitorArnList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Subscribers => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::Subscriber]');
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);
  has SubscriptionName => (is => 'ro', isa => 'Str');
  has Threshold => (is => 'ro', isa => 'Num');
  has ThresholdExpression => (is => 'ro', isa => 'Paws::CostExplorer::Expression');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAnomalySubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::UpdateAnomalySubscriptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::UpdateAnomalySubscription - Arguments for method UpdateAnomalySubscription on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAnomalySubscription on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method UpdateAnomalySubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAnomalySubscription.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $UpdateAnomalySubscriptionResponse = $ce->UpdateAnomalySubscription(
      SubscriptionArn => 'MyGenericString',
      Frequency       => 'DAILY',             # OPTIONAL
      MonitorArnList  => [
        'MyArn', ...                          # min: 20, max: 2048
      ],    # OPTIONAL
      Subscribers => [
        {
          Address => 'MySubscriberAddress',    # min: 6, max: 302; OPTIONAL
          Status  => 'CONFIRMED',    # values: CONFIRMED, DECLINED; OPTIONAL
          Type    => 'EMAIL',        # values: EMAIL, SNS; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SubscriptionName    => 'MyGenericString',    # OPTIONAL
      Threshold           => 1,                    # OPTIONAL
      ThresholdExpression => {
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
    );

    # Results:
    my $SubscriptionArn = $UpdateAnomalySubscriptionResponse->SubscriptionArn;

    # Returns a L<Paws::CostExplorer::UpdateAnomalySubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/UpdateAnomalySubscription>

=head1 ATTRIBUTES


=head2 Frequency => Str

The update to the frequency value that subscribers receive
notifications.

Valid values are: C<"DAILY">, C<"IMMEDIATE">, C<"WEEKLY">

=head2 MonitorArnList => ArrayRef[Str|Undef]

A list of cost anomaly monitor ARNs.



=head2 Subscribers => ArrayRef[L<Paws::CostExplorer::Subscriber>]

The update to the subscriber list.



=head2 B<REQUIRED> SubscriptionArn => Str

A cost anomaly subscription Amazon Resource Name (ARN).



=head2 SubscriptionName => Str

The new name of the subscription.



=head2 Threshold => Num

(deprecated)

The update to the threshold value for receiving notifications.

This field has been deprecated. To update a threshold, use
ThresholdExpression. Continued use of Threshold will be treated as
shorthand syntax for a ThresholdExpression.

You can specify either Threshold or ThresholdExpression, but not both.



=head2 ThresholdExpression => L<Paws::CostExplorer::Expression>

The update to the Expression
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html)
object used to specify the anomalies that you want to generate alerts
for. This supports dimensions and nested expressions. The supported
dimensions are C<ANOMALY_TOTAL_IMPACT_ABSOLUTE> and
C<ANOMALY_TOTAL_IMPACT_PERCENTAGE>, corresponding to an
anomalyE<rsquo>s TotalImpact and TotalImpactPercentage, respectively
(see Impact
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Impact.html)
for more details). The supported nested expression types are C<AND> and
C<OR>. The match option C<GREATER_THAN_OR_EQUAL> is required. Values
must be numbers between 0 and 10,000,000,000 in string format.

You can specify either Threshold or ThresholdExpression, but not both.

The following are examples of valid ThresholdExpressions:

=over

=item *

Absolute threshold: C<{ "Dimensions": { "Key":
"ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [
"GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } }>

=item *

Percentage threshold: C<{ "Dimensions": { "Key":
"ANOMALY_TOTAL_IMPACT_PERCENTAGE", "MatchOptions": [
"GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } }>

=item *

C<AND> two thresholds together: C<{ "And": [ { "Dimensions": { "Key":
"ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [
"GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } }, { "Dimensions": {
"Key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE", "MatchOptions": [
"GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } } ] }>

=item *

C<OR> two thresholds together: C<{ "Or": [ { "Dimensions": { "Key":
"ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [
"GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } }, { "Dimensions": {
"Key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE", "MatchOptions": [
"GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } } ] }>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAnomalySubscription in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

