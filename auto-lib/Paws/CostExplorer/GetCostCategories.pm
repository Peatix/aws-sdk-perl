
package Paws::CostExplorer::GetCostCategories;
  use Moose;
  has BillingViewArn => (is => 'ro', isa => 'Str');
  has CostCategoryName => (is => 'ro', isa => 'Str');
  has Filter => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has SearchString => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::SortDefinition]');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCostCategories');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetCostCategoriesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetCostCategories - Arguments for method GetCostCategories on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCostCategories on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetCostCategories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCostCategories.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetCostCategoriesResponse = $ce->GetCostCategories(
      TimePeriod => {
        End   => 'MyYearMonthDay',    # max: 40
        Start => 'MyYearMonthDay',    # max: 40

      },
      BillingViewArn   => 'MyBillingViewArn',      # OPTIONAL
      CostCategoryName => 'MyCostCategoryName',    # OPTIONAL
      Filter           => {
        And            => [ <Expression>, ... ],    # OPTIONAL
        CostCategories => {
          Key          => 'MyCostCategoryName',     # min: 1, max: 50
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
      MaxResults    => 1,                    # OPTIONAL
      NextPageToken => 'MyNextPageToken',    # OPTIONAL
      SearchString  => 'MySearchString',     # OPTIONAL
      SortBy        => [
        {
          Key       => 'MySortDefinitionKey',    # max: 1024
          SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CostCategoryNames  = $GetCostCategoriesResponse->CostCategoryNames;
    my $CostCategoryValues = $GetCostCategoriesResponse->CostCategoryValues;
    my $NextPageToken      = $GetCostCategoriesResponse->NextPageToken;
    my $ReturnSize         = $GetCostCategoriesResponse->ReturnSize;
    my $TotalSize          = $GetCostCategoriesResponse->TotalSize;

    # Returns a L<Paws::CostExplorer::GetCostCategoriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetCostCategories>

=head1 ATTRIBUTES


=head2 BillingViewArn => Str

The Amazon Resource Name (ARN) that uniquely identifies a specific
billing view. The ARN is used to specify which particular billing view
you want to interact with or retrieve information from when making API
calls related to Amazon Web Services Billing and Cost Management
features. The BillingViewArn can be retrieved by calling the
ListBillingViews API.



=head2 CostCategoryName => Str





=head2 Filter => L<Paws::CostExplorer::Expression>





=head2 MaxResults => Int

This field is only used when the C<SortBy> value is provided in the
request.

The maximum number of objects that are returned for this request. If
C<MaxResults> isn't specified with the C<SortBy> value, the request
returns 1000 results as the default value for this parameter.

For C<GetCostCategories>, MaxResults has an upper quota of 1000.



=head2 NextPageToken => Str

If the number of objects that are still available for retrieval exceeds
the quota, Amazon Web Services returns a NextPageToken value in the
response. To retrieve the next batch of objects, provide the
NextPageToken from the previous call in your next request.



=head2 SearchString => Str

The value that you want to search the filter values for.

If you don't specify a C<CostCategoryName>, C<SearchString> is used to
filter Cost Category names that match the C<SearchString> pattern. If
you specify a C<CostCategoryName>, C<SearchString> is used to filter
Cost Category values that match the C<SearchString> pattern.



=head2 SortBy => ArrayRef[L<Paws::CostExplorer::SortDefinition>]

The value that you sort the data by.

The key represents the cost and usage metrics. The following values are
supported:

=over

=item *

C<BlendedCost>

=item *

C<UnblendedCost>

=item *

C<AmortizedCost>

=item *

C<NetAmortizedCost>

=item *

C<NetUnblendedCost>

=item *

C<UsageQuantity>

=item *

C<NormalizedUsageAmount>

=back

The supported key values for the C<SortOrder> value are C<ASCENDING>
and C<DESCENDING>.

When you use the C<SortBy> value, the C<NextPageToken> and
C<SearchString> key values aren't supported.



=head2 B<REQUIRED> TimePeriod => L<Paws::CostExplorer::DateInterval>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCostCategories in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

