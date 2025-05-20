
package Paws::CostExplorer::CreateAnomalyMonitor;
  use Moose;
  has AnomalyMonitor => (is => 'ro', isa => 'Paws::CostExplorer::AnomalyMonitor', required => 1);
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::ResourceTag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAnomalyMonitor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::CreateAnomalyMonitorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CreateAnomalyMonitor - Arguments for method CreateAnomalyMonitor on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAnomalyMonitor on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method CreateAnomalyMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAnomalyMonitor.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $CreateAnomalyMonitorResponse = $ce->CreateAnomalyMonitor(
      AnomalyMonitor => {
        MonitorName  => 'MyGenericString',    # max: 1024
        MonitorType  => 'DIMENSIONAL',        # values: DIMENSIONAL, CUSTOM
        CreationDate => 'MyYearMonthDay',     # max: 40; OPTIONAL
        DimensionalValueCount => 1,                  # OPTIONAL
        LastEvaluatedDate     => 'MyYearMonthDay',   # max: 40; OPTIONAL
        LastUpdatedDate       => 'MyYearMonthDay',   # max: 40; OPTIONAL
        MonitorArn            => 'MyGenericString',  # max: 1024
        MonitorDimension      => 'SERVICE',          # values: SERVICE; OPTIONAL
        MonitorSpecification  => {
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
    my $MonitorArn = $CreateAnomalyMonitorResponse->MonitorArn;

    # Returns a L<Paws::CostExplorer::CreateAnomalyMonitorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/CreateAnomalyMonitor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyMonitor => L<Paws::CostExplorer::AnomalyMonitor>

The cost anomaly detection monitor object that you want to create.



=head2 ResourceTags => ArrayRef[L<Paws::CostExplorer::ResourceTag>]

An optional list of tags to associate with the specified
C<AnomalyMonitor>
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalyMonitor.html).
You can use resource tags to control access to your C<monitor> using
IAM policies.

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

This class forms part of L<Paws>, documenting arguments for method CreateAnomalyMonitor in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

