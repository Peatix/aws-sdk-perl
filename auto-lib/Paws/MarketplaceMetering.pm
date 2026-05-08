package Paws::MarketplaceMetering;
  use Moose;
  sub service { 'metering.marketplace' }
  sub signing_name { 'aws-marketplace' }
  sub version { '2016-01-14' }
  sub target_prefix { 'AWSMPMeteringService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchMeterUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceMetering::BatchMeterUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MeterUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceMetering::MeterUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceMetering::RegisterUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResolveCustomer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceMetering::ResolveCustomer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchMeterUsage MeterUsage RegisterUsage ResolveCustomer / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering - Perl Interface to AWS AWSMarketplace Metering

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MarketplaceMetering');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Web Services Marketplace Metering Service

This reference provides descriptions of the low-level Marketplace
Metering Service API.

Amazon Web Services Marketplace sellers can use this API to submit
usage data for custom usage dimensions.

For information about the permissions that you need to use this API,
see Amazon Web Services Marketplace metering and entitlement API
permissions
(https://docs.aws.amazon.com/marketplace/latest/userguide/iam-user-policy-for-aws-marketplace-actions.html)
in the I<Amazon Web Services Marketplace Seller Guide.>

B<Submitting metering records>

I<MeterUsage>

=over

=item *

Submits the metering record for an Amazon Web Services Marketplace
product.

=item *

Called from: Amazon Elastic Compute Cloud (Amazon EC2) instance or a
container running on either Amazon Elastic Kubernetes Service (Amazon
EKS) or Amazon Elastic Container Service (Amazon ECS)

=item *

Supported product types: Amazon Machine Images (AMIs) and containers

=item *

Vendor-metered tagging: Supported allocation tagging

=back

I<BatchMeterUsage>

=over

=item *

Submits the metering record for a set of customers. C<BatchMeterUsage>
API calls are captured by CloudTrail. You can use CloudTrail to verify
that the software as a subscription (SaaS) metering records that you
sent are accurate by searching for records with the C<eventName> of
C<BatchMeterUsage>. You can also use CloudTrail to audit records over
time. For more information, see the CloudTrail User Guide
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html).

=item *

Called from: SaaS applications

=item *

Supported product type: SaaS

=item *

Vendor-metered tagging: Supports allocation tagging

=back

B<Accepting new customers>

I<ResolveCustomer>

=over

=item *

Resolves the registration token that the buyer submits through the
browser during the registration process. Obtains a
C<CustomerIdentifier> along with the C<CustomerAWSAccountId> and
C<ProductCode>.

=item *

Called from: SaaS application during the registration process

=item *

Supported product type: SaaS

=item *

Vendor-metered tagging: Not applicable

=back

B<Entitlement and metering for paid container products>

I<RegisteredUsage>

=over

=item *

Provides software entitlement and metering. Paid container software
products sold through Amazon Web Services Marketplace must integrate
with the Marketplace Metering Service and call the C<RegisterUsage>
operation. Free and Bring Your Own License model (BYOL) products for
Amazon ECS or Amazon EKS aren't required to call C<RegisterUsage>.
However, you can do so if you want to receive usage data in your seller
reports. For more information about using the C<RegisterUsage>
operation, see Container-based products
(https://docs.aws.amazon.com/marketplace/latest/userguide/container-based-products.html).

=item *

Called from: Paid container software products

=item *

Supported product type: Containers

=item *

Vendor-metered tagging: Not applicable

=back

B<Entitlement custom metering for container products>

=over

=item *

MeterUsage API is available in GovCloud Regions but only supports AMI
FCP products in GovCloud Regions. Flexible Consumption Pricing (FCP)
Container products arenE<rsquo>t supported in GovCloud Regions:
us-gov-west-1 and us-gov-east-1. For more information, see
Container-based products
(https://docs.aws.amazon.com/marketplace/latest/userguide/container-based-products.html).

=item *

Custom metering for container products are called using the MeterUsage
API. The API is used for FCP AMI and FCP Container product metering.

=back

B<Custom metering for Amazon EKS is available in 17 Amazon Web Services
Regions>

=over

=item *

The metering service supports Amazon ECS and EKS for Flexible
Consumption Pricing (FCP) products using MeterUsage API. Amazon ECS is
supported in all Amazon Web Services Regions that MeterUsage API is
available except for GovCloud.

=item *

Amazon EKS is supported in the following: us-east-1, us-east-2,
us-west-1, us-west-2, eu-west-1, eu-central-1, eu-west-2, eu-west-3,
eu-north-1, ap-east-1, ap-southeast-1, ap-northeast-1, ap-southeast-2,
ap-northeast-2, ap-south-1, ca-central-1, sa-east-1.

For questions about adding Amazon Web Services Regions for metering,
contact Amazon Web Services Marketplace Seller Operations
(mailto://aws.amazon.com/marketplace/management/contact-us/).

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 BatchMeterUsage

=over

=item ProductCode => Str

=item UsageRecords => ArrayRef[L<Paws::MarketplaceMetering::UsageRecord>]


=back

Each argument is described in detail in: L<Paws::MarketplaceMetering::BatchMeterUsage>

Returns: a L<Paws::MarketplaceMetering::BatchMeterUsageResult> instance

The C<CustomerIdentifier> parameter is scheduled for deprecation. Use
C<CustomerAWSAccountID> instead.

These parameters are mutually exclusive. You can't specify both
C<CustomerIdentifier> and C<CustomerAWSAccountID> in the same request.

To post metering records for customers, SaaS applications call
C<BatchMeterUsage>, which is used for metering SaaS flexible
consumption pricing (FCP). Identical requests are idempotent and can be
retried with the same records or a subset of records. Each
C<BatchMeterUsage> request is for only one product. If you want to
meter usage for multiple products, you must make multiple
C<BatchMeterUsage> calls.

Usage records should be submitted in quick succession following a
recorded event. Usage records aren't accepted 6 hours or more after an
event.

C<BatchMeterUsage> can process up to 25 C<UsageRecords> at a time, and
each request must be less than 1 MB in size. Optionally, you can have
multiple usage allocations for usage data that's split into buckets
according to predefined tags.

C<BatchMeterUsage> returns a list of C<UsageRecordResult> objects,
which have each C<UsageRecord>. It also returns a list of
C<UnprocessedRecords>, which indicate errors on the service side that
should be retried.

For Amazon Web Services Regions that support C<BatchMeterUsage>, see
BatchMeterUsage Region support
(https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#batchmeterusage-region-support).

For an example of C<BatchMeterUsage>, see BatchMeterUsage code example
(https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-batchmeterusage-example)
in the I<Amazon Web Services Marketplace Seller Guide>.


=head2 MeterUsage

=over

=item ProductCode => Str

=item Timestamp => Str

=item UsageDimension => Str

=item [DryRun => Bool]

=item [UsageAllocations => ArrayRef[L<Paws::MarketplaceMetering::UsageAllocation>]]

=item [UsageQuantity => Int]


=back

Each argument is described in detail in: L<Paws::MarketplaceMetering::MeterUsage>

Returns: a L<Paws::MarketplaceMetering::MeterUsageResult> instance

API to emit metering records. For identical requests, the API is
idempotent and returns the metering record ID. This is used for
metering flexible consumption pricing (FCP) Amazon Machine Images (AMI)
and container products.

C<MeterUsage> is authenticated on the buyer's Amazon Web Services
account using credentials from the Amazon EC2 instance, Amazon ECS
task, or Amazon EKS pod.

C<MeterUsage> can optionally include multiple usage allocations, to
provide customers with usage data split into buckets by tags that you
define (or allow the customer to define).

Usage records are expected to be submitted as quickly as possible after
the event that is being recorded, and are not accepted more than 6
hours after the event.

For Amazon Web Services Regions that support C<MeterUsage>, see
MeterUsage Region support for Amazon EC2
(https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#meterusage-region-support-ec2)
and MeterUsage Region support for Amazon ECS and Amazon EKS
(https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#meterusage-region-support-ecs-eks).


=head2 RegisterUsage

=over

=item ProductCode => Str

=item PublicKeyVersion => Int

=item [Nonce => Str]


=back

Each argument is described in detail in: L<Paws::MarketplaceMetering::RegisterUsage>

Returns: a L<Paws::MarketplaceMetering::RegisterUsageResult> instance

Paid container software products sold through Amazon Web Services
Marketplace must integrate with the Amazon Web Services Marketplace
Metering Service and call the C<RegisterUsage> operation for software
entitlement and metering. Free and BYOL products for Amazon ECS or
Amazon EKS aren't required to call C<RegisterUsage>, but you may choose
to do so if you would like to receive usage data in your seller
reports. The sections below explain the behavior of C<RegisterUsage>.
C<RegisterUsage> performs two primary functions: metering and
entitlement.

=over

=item *

I<Entitlement>: C<RegisterUsage> allows you to verify that the customer
running your paid software is subscribed to your product on Amazon Web
Services Marketplace, enabling you to guard against unauthorized use.
Your container image that integrates with C<RegisterUsage> is only
required to guard against unauthorized use at container startup, as
such a C<CustomerNotSubscribedException> or
C<PlatformNotSupportedException> will only be thrown on the initial
call to C<RegisterUsage>. Subsequent calls from the same Amazon ECS
task instance (e.g. task-id) or Amazon EKS pod will not throw a
C<CustomerNotSubscribedException>, even if the customer unsubscribes
while the Amazon ECS task or Amazon EKS pod is still running.

=item *

I<Metering>: C<RegisterUsage> meters software use per ECS task, per
hour, or per pod for Amazon EKS with usage prorated to the second. A
minimum of 1 minute of usage applies to tasks that are short lived. For
example, if a customer has a 10 node Amazon ECS or Amazon EKS cluster
and a service configured as a Daemon Set, then Amazon ECS or Amazon EKS
will launch a task on all 10 cluster nodes and the customer will be
charged for 10 tasks. Software metering is handled by the Amazon Web
Services Marketplace metering control planeE<mdash>your software is not
required to perform metering-specific actions other than to call
C<RegisterUsage> to commence metering. The Amazon Web Services
Marketplace metering control plane will also bill customers for running
ECS tasks and Amazon EKS pods, regardless of the customer's
subscription state, which removes the need for your software to run
entitlement checks at runtime. For containers, C<RegisterUsage> should
be called immediately at launch. If you donE<rsquo>t register the
container within the first 6 hours of the launch, Amazon Web Services
Marketplace Metering Service doesnE<rsquo>t provide any metering
guarantees for previous months. Metering will continue, however, for
the current month forward until the container ends. C<RegisterUsage> is
for metering paid hourly container products.

For Amazon Web Services Regions that support C<RegisterUsage>, see
RegisterUsage Region support
(https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#registerusage-region-support).

=back



=head2 ResolveCustomer

=over

=item RegistrationToken => Str


=back

Each argument is described in detail in: L<Paws::MarketplaceMetering::ResolveCustomer>

Returns: a L<Paws::MarketplaceMetering::ResolveCustomerResult> instance

C<ResolveCustomer> is called by a SaaS application during the
registration process. When a buyer visits your website during the
registration process, the buyer submits a registration token through
their browser. The registration token is resolved through this API to
obtain a C<CustomerIdentifier> along with the C<CustomerAWSAccountId>
and C<ProductCode>.

To successfully resolve the token, the API must be called from the
account that was used to publish the SaaS application. For an example
of using C<ResolveCustomer>, see ResolveCustomer code example
(https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-resolvecustomer-example)
in the I<Amazon Web Services Marketplace Seller Guide>.

Permission is required for this operation. Your IAM role or user
performing this operation requires a policy to allow the
C<aws-marketplace:ResolveCustomer> action. For more information, see
Actions, resources, and condition keys for Amazon Web Services
Marketplace Metering Service
(https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsmarketplacemeteringservice.html)
in the I<Service Authorization Reference>.

For Amazon Web Services Regions that support C<ResolveCustomer>, see
ResolveCustomer Region support
(https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#resolvecustomer-region-support).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

