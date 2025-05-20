
package Paws::BCMPricingCalculator::CreateBillEstimate;
  use Moose;
  has BillScenarioId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billScenarioId' , required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Tags => (is => 'ro', isa => 'Paws::BCMPricingCalculator::Tags', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBillEstimate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::CreateBillEstimateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::CreateBillEstimate - Arguments for method CreateBillEstimate on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBillEstimate on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method CreateBillEstimate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBillEstimate.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $CreateBillEstimateResponse =
      $bcm -pricing-calculator->CreateBillEstimate(
      BillScenarioId => 'MyResourceId',
      Name           => 'MyBillEstimateName',
      ClientToken    => 'MyClientToken',        # OPTIONAL
      Tags           => {
        'MyResourceTagKey' =>
          'MyResourceTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $BillInterval   = $CreateBillEstimateResponse->BillInterval;
    my $CostSummary    = $CreateBillEstimateResponse->CostSummary;
    my $CreatedAt      = $CreateBillEstimateResponse->CreatedAt;
    my $ExpiresAt      = $CreateBillEstimateResponse->ExpiresAt;
    my $FailureMessage = $CreateBillEstimateResponse->FailureMessage;
    my $Id             = $CreateBillEstimateResponse->Id;
    my $Name           = $CreateBillEstimateResponse->Name;
    my $Status         = $CreateBillEstimateResponse->Status;

   # Returns a L<Paws::BCMPricingCalculator::CreateBillEstimateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/CreateBillEstimate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BillScenarioId => Str

The ID of the Bill Scenario for which you want to create a Bill
estimate.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> Name => Str

The name of the Bill estimate that will be created. Names must be
unique for an account.



=head2 Tags => L<Paws::BCMPricingCalculator::Tags>

An optional list of tags to associate with the specified BillEstimate.
You can use resource tags to control access to your BillEstimate using
IAM policies. Each tag consists of a key and a value, and each key must
be unique for the resource. The following restrictions apply to
resource tags:

=over

=item *

Although the maximum number of array members is 200, you can assign a
maximum of 50 user-tags to one resource. The remaining are reserved for
Amazon Web Services.

=item *

The maximum length of a key is 128 characters.

=item *

The maximum length of a value is 256 characters.

=item *

Keys and values can only contain alphanumeric characters, spaces, and
any of the following: C<_.:/=+@->.

=item *

Keys and values are case sensitive.

=item *

Keys and values are trimmed for any leading or trailing whitespaces.

=item *

Don't use C<aws:> as a prefix for your keys. This prefix is reserved
for Amazon Web Services.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBillEstimate in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

