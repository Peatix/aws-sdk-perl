
package Paws::CostExplorer::CreateAnomalySubscription;
  use Moose;
  has AnomalySubscription => (is => 'ro', isa => 'Paws::CostExplorer::AnomalySubscription', required => 1);
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::ResourceTag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAnomalySubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::CreateAnomalySubscriptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CreateAnomalySubscription - Arguments for method CreateAnomalySubscription on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAnomalySubscription on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method CreateAnomalySubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAnomalySubscription.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $CreateAnomalySubscriptionResponse = $ce->CreateAnomalySubscription(
      AnomalySubscription => {
        Frequency      => 'DAILY',    # values: DAILY, IMMEDIATE, WEEKLY
        MonitorArnList => [
          'MyArn', ...                # min: 20, max: 2048
        ],
        Subscribers => [
          {
            Address => 'MySubscriberAddress',    # min: 6, max: 302; OPTIONAL
            Status  => 'CONFIRMED',    # values: CONFIRMED, DECLINED; OPTIONAL
            Type    => 'EMAIL',        # values: EMAIL, SNS; OPTIONAL
          },
          ...
        ],
        SubscriptionName    => 'MyGenericString',    # max: 1024
        AccountId           => 'MyGenericString',    # max: 1024
        SubscriptionArn     => 'MyGenericString',    # max: 1024
        Threshold           => 1,                    # OPTIONAL
        ThresholdExpression => {
          And            => [ <Expression>, ... ],    # OPTIONAL
          CostCategories => {
            Key          => 'MyCostCategoryName',    # min: 1, max: 50; OPTIONAL
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
      },
      ResourceTags => [
        {
          Key   => 'MyResourceTagKey',      # min: 1, max: 128
          Value => 'MyResourceTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $SubscriptionArn = $CreateAnomalySubscriptionResponse->SubscriptionArn;

    # Returns a L<Paws::CostExplorer::CreateAnomalySubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/CreateAnomalySubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalySubscription => L<Paws::CostExplorer::AnomalySubscription>

The cost anomaly subscription object that you want to create.



=head2 ResourceTags => ArrayRef[L<Paws::CostExplorer::ResourceTag>]

An optional list of tags to associate with the specified
C<AnomalySubscription>
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalySubscription.html).
You can use resource tags to control access to your C<subscription>
using IAM policies.

Each tag consists of a key and a value, and each key must be unique for
the resource. The following restrictions apply to resource tags:

=over

=item *

Although the maximum number of array members is 200, you can assign a
maximum of 50 user-tags to one resource. The remaining are reserved for
Amazon Web Services use

=item *

The maximum length of a key is 128 characters

=item *

The maximum length of a value is 256 characters

=item *

Keys and values can only contain alphanumeric characters, spaces, and
any of the following: C<_.:/=+@->

=item *

Keys and values are case sensitive

=item *

Keys and values are trimmed for any leading or trailing whitespaces

=item *

DonE<rsquo>t use C<aws:> as a prefix for your keys. This prefix is
reserved for Amazon Web Services use

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAnomalySubscription in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

