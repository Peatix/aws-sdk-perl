
package Paws::Billingconductor::GetBillingGroupCostReport;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has BillingPeriodRange => (is => 'ro', isa => 'Paws::Billingconductor::BillingPeriodRange');
  has GroupBy => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBillingGroupCostReport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-billing-group-cost-report');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::GetBillingGroupCostReportOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::GetBillingGroupCostReport - Arguments for method GetBillingGroupCostReport on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBillingGroupCostReport on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method GetBillingGroupCostReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBillingGroupCostReport.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $GetBillingGroupCostReportOutput =
      $billingconductor->GetBillingGroupCostReport(
      Arn                => 'MyBillingGroupArn',
      BillingPeriodRange => {
        ExclusiveEndBillingPeriod   => 'MyBillingPeriod',
        InclusiveStartBillingPeriod => 'MyBillingPeriod',

      },    # OPTIONAL
      GroupBy => [
        'PRODUCT_NAME', ...    # values: PRODUCT_NAME, BILLING_PERIOD
      ],    # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
      );

    # Results:
    my $BillingGroupCostReportResults =
      $GetBillingGroupCostReportOutput->BillingGroupCostReportResults;
    my $NextToken = $GetBillingGroupCostReportOutput->NextToken;

  # Returns a L<Paws::Billingconductor::GetBillingGroupCostReportOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/GetBillingGroupCostReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Number (ARN) that uniquely identifies the billing
group.



=head2 BillingPeriodRange => L<Paws::Billingconductor::BillingPeriodRange>

A time range for which the margin summary is effective. You can specify
up to 12 months.



=head2 GroupBy => ArrayRef[Str|Undef]

A list of strings that specify the attributes that are used to break
down costs in the margin summary reports for the billing group. For
example, you can view your costs by the Amazon Web Service name or the
billing period.



=head2 MaxResults => Int

The maximum number of margin summary reports to retrieve.



=head2 NextToken => Str

The pagination token used on subsequent calls to get reports.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBillingGroupCostReport in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

