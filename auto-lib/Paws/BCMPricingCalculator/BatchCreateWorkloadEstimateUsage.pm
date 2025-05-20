
package Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsage;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Usage => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageEntry]', traits => ['NameInRequest'], request_name => 'usage' , required => 1);
  has WorkloadEstimateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workloadEstimateId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchCreateWorkloadEstimateUsage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsage - Arguments for method BatchCreateWorkloadEstimateUsage on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchCreateWorkloadEstimateUsage on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method BatchCreateWorkloadEstimateUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchCreateWorkloadEstimateUsage.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $BatchCreateWorkloadEstimateUsageResponse =
      $bcm -pricing-calculator->BatchCreateWorkloadEstimateUsage(
      Usage => [
        {
          Amount          => 1,
          Key             => 'MyKey',            # max: 10
          Operation       => 'MyOperation',      # max: 32
          ServiceCode     => 'MyServiceCode',    # max: 32
          UsageAccountId  => 'MyAccountId',      # min: 12, max: 12
          UsageType       => 'MyUsageType',      # max: 128
          Group           => 'MyUsageGroup',     # max: 30; OPTIONAL
          HistoricalUsage => {
            BillInterval => {
              End   => '1970-01-01T01:00:00',    # OPTIONAL
              Start => '1970-01-01T01:00:00',    # OPTIONAL
            },
            FilterExpression => {
              And            => [ <Expression>, ... ],    # OPTIONAL
              CostCategories => {
                Key          => 'MyString',               # OPTIONAL
                MatchOptions => [
                  'MyString', ...                         # OPTIONAL
                ],    # OPTIONAL
                Values => [
                  'MyString', ...    # OPTIONAL
                ],    # OPTIONAL
              },    # OPTIONAL
              Dimensions => {
                Key          => 'MyString',    # OPTIONAL
                MatchOptions => [
                  'MyString', ...              # OPTIONAL
                ],    # OPTIONAL
                Values => [
                  'MyString', ...    # OPTIONAL
                ],    # OPTIONAL
              },    # OPTIONAL
              Not  => <Expression>,
              Or   => [ <Expression>, ... ],    # OPTIONAL
              Tags => {
                Key          => 'MyString',     # OPTIONAL
                MatchOptions => [
                  'MyString', ...               # OPTIONAL
                ],    # OPTIONAL
                Values => [
                  'MyString', ...    # OPTIONAL
                ],    # OPTIONAL
              },    # OPTIONAL
            },
            Operation      => 'MyOperation',      # max: 32
            ServiceCode    => 'MyServiceCode',    # max: 32
            UsageAccountId => 'MyAccountId',      # min: 12, max: 12
            UsageType      => 'MyUsageType',      # max: 128
            Location       => 'MyString',         # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      WorkloadEstimateId => 'MyResourceId',
      ClientToken        => 'MyClientToken',    # OPTIONAL
      );

    # Results:
    my $Errors = $BatchCreateWorkloadEstimateUsageResponse->Errors;
    my $Items  = $BatchCreateWorkloadEstimateUsageResponse->Items;

# Returns a L<Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/BatchCreateWorkloadEstimateUsage>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> Usage => ArrayRef[L<Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageEntry>]

List of usage that you want to model in the Workload estimate.



=head2 B<REQUIRED> WorkloadEstimateId => Str

The ID of the Workload estimate for which you want to create the
modeled usage.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchCreateWorkloadEstimateUsage in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

