
package Paws::MarketplaceMetering::BatchMeterUsage;
  use Moose;
  has ProductCode => (is => 'ro', isa => 'Str', required => 1);
  has UsageRecords => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceMetering::UsageRecord]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchMeterUsage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceMetering::BatchMeterUsageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::BatchMeterUsage - Arguments for method BatchMeterUsage on L<Paws::MarketplaceMetering>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchMeterUsage on the
L<AWSMarketplace Metering|Paws::MarketplaceMetering> service. Use the attributes of this class
as arguments to method BatchMeterUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchMeterUsage.

=head1 SYNOPSIS

    my $metering.marketplace = Paws->service('MarketplaceMetering');
    my $BatchMeterUsageResult = $metering . marketplace->BatchMeterUsage(
      ProductCode  => 'MyProductCode',
      UsageRecords => [
        {
          Dimension            => 'MyUsageDimension',      # min: 1, max: 255
          Timestamp            => '1970-01-01T01:00:00',
          CustomerAWSAccountId =>
            'MyCustomerAWSAccountId',    # min: 1, max: 255; OPTIONAL
          CustomerIdentifier => 'MyCustomerIdentifier',    # max: 255; OPTIONAL
          Quantity           => 1,    # max: 2147483647; OPTIONAL
          UsageAllocations   => [
            {
              AllocatedUsageQuantity => 1,    # max: 2147483647
              Tags                   => [
                {
                  Key   => 'MyTagKey',      # min: 1, max: 100
                  Value => 'MyTagValue',    # min: 1, max: 256

                },
                ...
              ],    # min: 1, max: 5; OPTIONAL
            },
            ...
          ],    # min: 1, max: 2500; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Results            = $BatchMeterUsageResult->Results;
    my $UnprocessedRecords = $BatchMeterUsageResult->UnprocessedRecords;

    # Returns a L<Paws::MarketplaceMetering::BatchMeterUsageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProductCode => Str

Product code is used to uniquely identify a product in Amazon Web
Services Marketplace. The product code should be the same as the one
used during the publishing of a new product.



=head2 B<REQUIRED> UsageRecords => ArrayRef[L<Paws::MarketplaceMetering::UsageRecord>]

The set of C<UsageRecords> to submit. C<BatchMeterUsage> accepts up to
25 C<UsageRecords> at a time.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchMeterUsage in L<Paws::MarketplaceMetering>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

