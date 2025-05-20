
package Paws::EC2::DescribeReservedInstancesOfferings;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has AvailabilityZoneId => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has IncludeMarketplace => (is => 'ro', isa => 'Bool');
  has InstanceTenancy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceTenancy' );
  has InstanceType => (is => 'ro', isa => 'Str');
  has MaxDuration => (is => 'ro', isa => 'Int');
  has MaxInstanceCount => (is => 'ro', isa => 'Int');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has MinDuration => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has OfferingClass => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'offeringType' );
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedInstancesOfferingIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ReservedInstancesOfferingId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesOfferings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeReservedInstancesOfferingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeReservedInstancesOfferings - Arguments for method DescribeReservedInstancesOfferings on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReservedInstancesOfferings on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeReservedInstancesOfferings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReservedInstancesOfferings.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeReservedInstancesOfferingsResult =
      $ec2->DescribeReservedInstancesOfferings(
      AvailabilityZone   => 'MyString',                # OPTIONAL
      AvailabilityZoneId => 'MyAvailabilityZoneId',    # OPTIONAL
      DryRun             => 1,                         # OPTIONAL
      Filters            => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],               # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      IncludeMarketplace           => 1,                      # OPTIONAL
      InstanceTenancy              => 'default',              # OPTIONAL
      InstanceType                 => 'a1.medium',            # OPTIONAL
      MaxDuration                  => 1,                      # OPTIONAL
      MaxInstanceCount             => 1,                      # OPTIONAL
      MaxResults                   => 1,                      # OPTIONAL
      MinDuration                  => 1,                      # OPTIONAL
      NextToken                    => 'MyString',             # OPTIONAL
      OfferingClass                => 'standard',             # OPTIONAL
      OfferingType                 => 'Heavy Utilization',    # OPTIONAL
      ProductDescription           => 'Linux/UNIX',           # OPTIONAL
      ReservedInstancesOfferingIds => [ 'MyReservedInstancesOfferingId', ... ]
      ,                                                       # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeReservedInstancesOfferingsResult->NextToken;
    my $ReservedInstancesOfferings =
      $DescribeReservedInstancesOfferingsResult->ReservedInstancesOfferings;

    # Returns a L<Paws::EC2::DescribeReservedInstancesOfferingsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeReservedInstancesOfferings>

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone in which the Reserved Instance can be used.

Either C<AvailabilityZone> or C<AvailabilityZoneId> can be specified,
but not both.



=head2 AvailabilityZoneId => Str

The ID of the Availability Zone.

Either C<AvailabilityZone> or C<AvailabilityZoneId> can be specified,
but not both.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<availability-zone> - The Availability Zone where the Reserved
Instance can be used.

=item *

C<availability-zone-id> - The ID of the Availability Zone where the
Reserved Instance can be used.

=item *

C<duration> - The duration of the Reserved Instance (for example, one
year or three years), in seconds (C<31536000> | C<94608000>).

=item *

C<fixed-price> - The purchase price of the Reserved Instance (for
example, 9800.0).

=item *

C<instance-type> - The instance type that is covered by the
reservation.

=item *

C<marketplace> - Set to C<true> to show only Reserved Instance
Marketplace offerings. When this filter is not used, which is the
default behavior, all offerings from both Amazon Web Services and the
Reserved Instance Marketplace are listed.

=item *

C<product-description> - The Reserved Instance product platform
description (C<Linux/UNIX> | C<Linux with SQL Server Standard> |
C<Linux with SQL Server Web> | C<Linux with SQL Server Enterprise> |
C<SUSE Linux> | C<Red Hat Enterprise Linux> | C<Red Hat Enterprise
Linux with HA> | C<Windows> | C<Windows with SQL Server Standard> |
C<Windows with SQL Server Web> | C<Windows with SQL Server
Enterprise>).

=item *

C<reserved-instances-offering-id> - The Reserved Instances offering ID.

=item *

C<scope> - The scope of the Reserved Instance (C<Availability Zone> or
C<Region>).

=item *

C<usage-price> - The usage price of the Reserved Instance, per hour
(for example, 0.84).

=back




=head2 IncludeMarketplace => Bool

Include Reserved Instance Marketplace offerings in the response.



=head2 InstanceTenancy => Str

The tenancy of the instances covered by the reservation. A Reserved
Instance with a tenancy of C<dedicated> is applied to instances that
run in a VPC on single-tenant hardware (i.e., Dedicated Instances).

B<Important:> The C<host> value cannot be used with this parameter. Use
the C<default> or C<dedicated> values only.

Default: C<default>

Valid values are: C<"default">, C<"dedicated">, C<"host">

=head2 InstanceType => Str

The instance type that the reservation will cover (for example,
C<m1.small>). For more information, see Amazon EC2 instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon EC2 User Guide>.

Valid values are: C<"a1.medium">, C<"a1.large">, C<"a1.xlarge">, C<"a1.2xlarge">, C<"a1.4xlarge">, C<"a1.metal">, C<"c1.medium">, C<"c1.xlarge">, C<"c3.large">, C<"c3.xlarge">, C<"c3.2xlarge">, C<"c3.4xlarge">, C<"c3.8xlarge">, C<"c4.large">, C<"c4.xlarge">, C<"c4.2xlarge">, C<"c4.4xlarge">, C<"c4.8xlarge">, C<"c5.large">, C<"c5.xlarge">, C<"c5.2xlarge">, C<"c5.4xlarge">, C<"c5.9xlarge">, C<"c5.12xlarge">, C<"c5.18xlarge">, C<"c5.24xlarge">, C<"c5.metal">, C<"c5a.large">, C<"c5a.xlarge">, C<"c5a.2xlarge">, C<"c5a.4xlarge">, C<"c5a.8xlarge">, C<"c5a.12xlarge">, C<"c5a.16xlarge">, C<"c5a.24xlarge">, C<"c5ad.large">, C<"c5ad.xlarge">, C<"c5ad.2xlarge">, C<"c5ad.4xlarge">, C<"c5ad.8xlarge">, C<"c5ad.12xlarge">, C<"c5ad.16xlarge">, C<"c5ad.24xlarge">, C<"c5d.large">, C<"c5d.xlarge">, C<"c5d.2xlarge">, C<"c5d.4xlarge">, C<"c5d.9xlarge">, C<"c5d.12xlarge">, C<"c5d.18xlarge">, C<"c5d.24xlarge">, C<"c5d.metal">, C<"c5n.large">, C<"c5n.xlarge">, C<"c5n.2xlarge">, C<"c5n.4xlarge">, C<"c5n.9xlarge">, C<"c5n.18xlarge">, C<"c5n.metal">, C<"c6g.medium">, C<"c6g.large">, C<"c6g.xlarge">, C<"c6g.2xlarge">, C<"c6g.4xlarge">, C<"c6g.8xlarge">, C<"c6g.12xlarge">, C<"c6g.16xlarge">, C<"c6g.metal">, C<"c6gd.medium">, C<"c6gd.large">, C<"c6gd.xlarge">, C<"c6gd.2xlarge">, C<"c6gd.4xlarge">, C<"c6gd.8xlarge">, C<"c6gd.12xlarge">, C<"c6gd.16xlarge">, C<"c6gd.metal">, C<"c6gn.medium">, C<"c6gn.large">, C<"c6gn.xlarge">, C<"c6gn.2xlarge">, C<"c6gn.4xlarge">, C<"c6gn.8xlarge">, C<"c6gn.12xlarge">, C<"c6gn.16xlarge">, C<"c6i.large">, C<"c6i.xlarge">, C<"c6i.2xlarge">, C<"c6i.4xlarge">, C<"c6i.8xlarge">, C<"c6i.12xlarge">, C<"c6i.16xlarge">, C<"c6i.24xlarge">, C<"c6i.32xlarge">, C<"c6i.metal">, C<"cc1.4xlarge">, C<"cc2.8xlarge">, C<"cg1.4xlarge">, C<"cr1.8xlarge">, C<"d2.xlarge">, C<"d2.2xlarge">, C<"d2.4xlarge">, C<"d2.8xlarge">, C<"d3.xlarge">, C<"d3.2xlarge">, C<"d3.4xlarge">, C<"d3.8xlarge">, C<"d3en.xlarge">, C<"d3en.2xlarge">, C<"d3en.4xlarge">, C<"d3en.6xlarge">, C<"d3en.8xlarge">, C<"d3en.12xlarge">, C<"dl1.24xlarge">, C<"f1.2xlarge">, C<"f1.4xlarge">, C<"f1.16xlarge">, C<"g2.2xlarge">, C<"g2.8xlarge">, C<"g3.4xlarge">, C<"g3.8xlarge">, C<"g3.16xlarge">, C<"g3s.xlarge">, C<"g4ad.xlarge">, C<"g4ad.2xlarge">, C<"g4ad.4xlarge">, C<"g4ad.8xlarge">, C<"g4ad.16xlarge">, C<"g4dn.xlarge">, C<"g4dn.2xlarge">, C<"g4dn.4xlarge">, C<"g4dn.8xlarge">, C<"g4dn.12xlarge">, C<"g4dn.16xlarge">, C<"g4dn.metal">, C<"g5.xlarge">, C<"g5.2xlarge">, C<"g5.4xlarge">, C<"g5.8xlarge">, C<"g5.12xlarge">, C<"g5.16xlarge">, C<"g5.24xlarge">, C<"g5.48xlarge">, C<"g5g.xlarge">, C<"g5g.2xlarge">, C<"g5g.4xlarge">, C<"g5g.8xlarge">, C<"g5g.16xlarge">, C<"g5g.metal">, C<"hi1.4xlarge">, C<"hpc6a.48xlarge">, C<"hs1.8xlarge">, C<"h1.2xlarge">, C<"h1.4xlarge">, C<"h1.8xlarge">, C<"h1.16xlarge">, C<"i2.xlarge">, C<"i2.2xlarge">, C<"i2.4xlarge">, C<"i2.8xlarge">, C<"i3.large">, C<"i3.xlarge">, C<"i3.2xlarge">, C<"i3.4xlarge">, C<"i3.8xlarge">, C<"i3.16xlarge">, C<"i3.metal">, C<"i3en.large">, C<"i3en.xlarge">, C<"i3en.2xlarge">, C<"i3en.3xlarge">, C<"i3en.6xlarge">, C<"i3en.12xlarge">, C<"i3en.24xlarge">, C<"i3en.metal">, C<"im4gn.large">, C<"im4gn.xlarge">, C<"im4gn.2xlarge">, C<"im4gn.4xlarge">, C<"im4gn.8xlarge">, C<"im4gn.16xlarge">, C<"inf1.xlarge">, C<"inf1.2xlarge">, C<"inf1.6xlarge">, C<"inf1.24xlarge">, C<"is4gen.medium">, C<"is4gen.large">, C<"is4gen.xlarge">, C<"is4gen.2xlarge">, C<"is4gen.4xlarge">, C<"is4gen.8xlarge">, C<"m1.small">, C<"m1.medium">, C<"m1.large">, C<"m1.xlarge">, C<"m2.xlarge">, C<"m2.2xlarge">, C<"m2.4xlarge">, C<"m3.medium">, C<"m3.large">, C<"m3.xlarge">, C<"m3.2xlarge">, C<"m4.large">, C<"m4.xlarge">, C<"m4.2xlarge">, C<"m4.4xlarge">, C<"m4.10xlarge">, C<"m4.16xlarge">, C<"m5.large">, C<"m5.xlarge">, C<"m5.2xlarge">, C<"m5.4xlarge">, C<"m5.8xlarge">, C<"m5.12xlarge">, C<"m5.16xlarge">, C<"m5.24xlarge">, C<"m5.metal">, C<"m5a.large">, C<"m5a.xlarge">, C<"m5a.2xlarge">, C<"m5a.4xlarge">, C<"m5a.8xlarge">, C<"m5a.12xlarge">, C<"m5a.16xlarge">, C<"m5a.24xlarge">, C<"m5ad.large">, C<"m5ad.xlarge">, C<"m5ad.2xlarge">, C<"m5ad.4xlarge">, C<"m5ad.8xlarge">, C<"m5ad.12xlarge">, C<"m5ad.16xlarge">, C<"m5ad.24xlarge">, C<"m5d.large">, C<"m5d.xlarge">, C<"m5d.2xlarge">, C<"m5d.4xlarge">, C<"m5d.8xlarge">, C<"m5d.12xlarge">, C<"m5d.16xlarge">, C<"m5d.24xlarge">, C<"m5d.metal">, C<"m5dn.large">, C<"m5dn.xlarge">, C<"m5dn.2xlarge">, C<"m5dn.4xlarge">, C<"m5dn.8xlarge">, C<"m5dn.12xlarge">, C<"m5dn.16xlarge">, C<"m5dn.24xlarge">, C<"m5dn.metal">, C<"m5n.large">, C<"m5n.xlarge">, C<"m5n.2xlarge">, C<"m5n.4xlarge">, C<"m5n.8xlarge">, C<"m5n.12xlarge">, C<"m5n.16xlarge">, C<"m5n.24xlarge">, C<"m5n.metal">, C<"m5zn.large">, C<"m5zn.xlarge">, C<"m5zn.2xlarge">, C<"m5zn.3xlarge">, C<"m5zn.6xlarge">, C<"m5zn.12xlarge">, C<"m5zn.metal">, C<"m6a.large">, C<"m6a.xlarge">, C<"m6a.2xlarge">, C<"m6a.4xlarge">, C<"m6a.8xlarge">, C<"m6a.12xlarge">, C<"m6a.16xlarge">, C<"m6a.24xlarge">, C<"m6a.32xlarge">, C<"m6a.48xlarge">, C<"m6g.metal">, C<"m6g.medium">, C<"m6g.large">, C<"m6g.xlarge">, C<"m6g.2xlarge">, C<"m6g.4xlarge">, C<"m6g.8xlarge">, C<"m6g.12xlarge">, C<"m6g.16xlarge">, C<"m6gd.metal">, C<"m6gd.medium">, C<"m6gd.large">, C<"m6gd.xlarge">, C<"m6gd.2xlarge">, C<"m6gd.4xlarge">, C<"m6gd.8xlarge">, C<"m6gd.12xlarge">, C<"m6gd.16xlarge">, C<"m6i.large">, C<"m6i.xlarge">, C<"m6i.2xlarge">, C<"m6i.4xlarge">, C<"m6i.8xlarge">, C<"m6i.12xlarge">, C<"m6i.16xlarge">, C<"m6i.24xlarge">, C<"m6i.32xlarge">, C<"m6i.metal">, C<"mac1.metal">, C<"p2.xlarge">, C<"p2.8xlarge">, C<"p2.16xlarge">, C<"p3.2xlarge">, C<"p3.8xlarge">, C<"p3.16xlarge">, C<"p3dn.24xlarge">, C<"p4d.24xlarge">, C<"r3.large">, C<"r3.xlarge">, C<"r3.2xlarge">, C<"r3.4xlarge">, C<"r3.8xlarge">, C<"r4.large">, C<"r4.xlarge">, C<"r4.2xlarge">, C<"r4.4xlarge">, C<"r4.8xlarge">, C<"r4.16xlarge">, C<"r5.large">, C<"r5.xlarge">, C<"r5.2xlarge">, C<"r5.4xlarge">, C<"r5.8xlarge">, C<"r5.12xlarge">, C<"r5.16xlarge">, C<"r5.24xlarge">, C<"r5.metal">, C<"r5a.large">, C<"r5a.xlarge">, C<"r5a.2xlarge">, C<"r5a.4xlarge">, C<"r5a.8xlarge">, C<"r5a.12xlarge">, C<"r5a.16xlarge">, C<"r5a.24xlarge">, C<"r5ad.large">, C<"r5ad.xlarge">, C<"r5ad.2xlarge">, C<"r5ad.4xlarge">, C<"r5ad.8xlarge">, C<"r5ad.12xlarge">, C<"r5ad.16xlarge">, C<"r5ad.24xlarge">, C<"r5b.large">, C<"r5b.xlarge">, C<"r5b.2xlarge">, C<"r5b.4xlarge">, C<"r5b.8xlarge">, C<"r5b.12xlarge">, C<"r5b.16xlarge">, C<"r5b.24xlarge">, C<"r5b.metal">, C<"r5d.large">, C<"r5d.xlarge">, C<"r5d.2xlarge">, C<"r5d.4xlarge">, C<"r5d.8xlarge">, C<"r5d.12xlarge">, C<"r5d.16xlarge">, C<"r5d.24xlarge">, C<"r5d.metal">, C<"r5dn.large">, C<"r5dn.xlarge">, C<"r5dn.2xlarge">, C<"r5dn.4xlarge">, C<"r5dn.8xlarge">, C<"r5dn.12xlarge">, C<"r5dn.16xlarge">, C<"r5dn.24xlarge">, C<"r5dn.metal">, C<"r5n.large">, C<"r5n.xlarge">, C<"r5n.2xlarge">, C<"r5n.4xlarge">, C<"r5n.8xlarge">, C<"r5n.12xlarge">, C<"r5n.16xlarge">, C<"r5n.24xlarge">, C<"r5n.metal">, C<"r6g.medium">, C<"r6g.large">, C<"r6g.xlarge">, C<"r6g.2xlarge">, C<"r6g.4xlarge">, C<"r6g.8xlarge">, C<"r6g.12xlarge">, C<"r6g.16xlarge">, C<"r6g.metal">, C<"r6gd.medium">, C<"r6gd.large">, C<"r6gd.xlarge">, C<"r6gd.2xlarge">, C<"r6gd.4xlarge">, C<"r6gd.8xlarge">, C<"r6gd.12xlarge">, C<"r6gd.16xlarge">, C<"r6gd.metal">, C<"r6i.large">, C<"r6i.xlarge">, C<"r6i.2xlarge">, C<"r6i.4xlarge">, C<"r6i.8xlarge">, C<"r6i.12xlarge">, C<"r6i.16xlarge">, C<"r6i.24xlarge">, C<"r6i.32xlarge">, C<"r6i.metal">, C<"t1.micro">, C<"t2.nano">, C<"t2.micro">, C<"t2.small">, C<"t2.medium">, C<"t2.large">, C<"t2.xlarge">, C<"t2.2xlarge">, C<"t3.nano">, C<"t3.micro">, C<"t3.small">, C<"t3.medium">, C<"t3.large">, C<"t3.xlarge">, C<"t3.2xlarge">, C<"t3a.nano">, C<"t3a.micro">, C<"t3a.small">, C<"t3a.medium">, C<"t3a.large">, C<"t3a.xlarge">, C<"t3a.2xlarge">, C<"t4g.nano">, C<"t4g.micro">, C<"t4g.small">, C<"t4g.medium">, C<"t4g.large">, C<"t4g.xlarge">, C<"t4g.2xlarge">, C<"u-6tb1.56xlarge">, C<"u-6tb1.112xlarge">, C<"u-9tb1.112xlarge">, C<"u-12tb1.112xlarge">, C<"u-6tb1.metal">, C<"u-9tb1.metal">, C<"u-12tb1.metal">, C<"u-18tb1.metal">, C<"u-24tb1.metal">, C<"vt1.3xlarge">, C<"vt1.6xlarge">, C<"vt1.24xlarge">, C<"x1.16xlarge">, C<"x1.32xlarge">, C<"x1e.xlarge">, C<"x1e.2xlarge">, C<"x1e.4xlarge">, C<"x1e.8xlarge">, C<"x1e.16xlarge">, C<"x1e.32xlarge">, C<"x2iezn.2xlarge">, C<"x2iezn.4xlarge">, C<"x2iezn.6xlarge">, C<"x2iezn.8xlarge">, C<"x2iezn.12xlarge">, C<"x2iezn.metal">, C<"x2gd.medium">, C<"x2gd.large">, C<"x2gd.xlarge">, C<"x2gd.2xlarge">, C<"x2gd.4xlarge">, C<"x2gd.8xlarge">, C<"x2gd.12xlarge">, C<"x2gd.16xlarge">, C<"x2gd.metal">, C<"z1d.large">, C<"z1d.xlarge">, C<"z1d.2xlarge">, C<"z1d.3xlarge">, C<"z1d.6xlarge">, C<"z1d.12xlarge">, C<"z1d.metal">, C<"x2idn.16xlarge">, C<"x2idn.24xlarge">, C<"x2idn.32xlarge">, C<"x2iedn.xlarge">, C<"x2iedn.2xlarge">, C<"x2iedn.4xlarge">, C<"x2iedn.8xlarge">, C<"x2iedn.16xlarge">, C<"x2iedn.24xlarge">, C<"x2iedn.32xlarge">, C<"c6a.large">, C<"c6a.xlarge">, C<"c6a.2xlarge">, C<"c6a.4xlarge">, C<"c6a.8xlarge">, C<"c6a.12xlarge">, C<"c6a.16xlarge">, C<"c6a.24xlarge">, C<"c6a.32xlarge">, C<"c6a.48xlarge">, C<"c6a.metal">, C<"m6a.metal">, C<"i4i.large">, C<"i4i.xlarge">, C<"i4i.2xlarge">, C<"i4i.4xlarge">, C<"i4i.8xlarge">, C<"i4i.16xlarge">, C<"i4i.32xlarge">, C<"i4i.metal">, C<"x2idn.metal">, C<"x2iedn.metal">, C<"c7g.medium">, C<"c7g.large">, C<"c7g.xlarge">, C<"c7g.2xlarge">, C<"c7g.4xlarge">, C<"c7g.8xlarge">, C<"c7g.12xlarge">, C<"c7g.16xlarge">, C<"mac2.metal">, C<"c6id.large">, C<"c6id.xlarge">, C<"c6id.2xlarge">, C<"c6id.4xlarge">, C<"c6id.8xlarge">, C<"c6id.12xlarge">, C<"c6id.16xlarge">, C<"c6id.24xlarge">, C<"c6id.32xlarge">, C<"c6id.metal">, C<"m6id.large">, C<"m6id.xlarge">, C<"m6id.2xlarge">, C<"m6id.4xlarge">, C<"m6id.8xlarge">, C<"m6id.12xlarge">, C<"m6id.16xlarge">, C<"m6id.24xlarge">, C<"m6id.32xlarge">, C<"m6id.metal">, C<"r6id.large">, C<"r6id.xlarge">, C<"r6id.2xlarge">, C<"r6id.4xlarge">, C<"r6id.8xlarge">, C<"r6id.12xlarge">, C<"r6id.16xlarge">, C<"r6id.24xlarge">, C<"r6id.32xlarge">, C<"r6id.metal">, C<"r6a.large">, C<"r6a.xlarge">, C<"r6a.2xlarge">, C<"r6a.4xlarge">, C<"r6a.8xlarge">, C<"r6a.12xlarge">, C<"r6a.16xlarge">, C<"r6a.24xlarge">, C<"r6a.32xlarge">, C<"r6a.48xlarge">, C<"r6a.metal">, C<"p4de.24xlarge">, C<"u-3tb1.56xlarge">, C<"u-18tb1.112xlarge">, C<"u-24tb1.112xlarge">, C<"trn1.2xlarge">, C<"trn1.32xlarge">, C<"hpc6id.32xlarge">, C<"c6in.large">, C<"c6in.xlarge">, C<"c6in.2xlarge">, C<"c6in.4xlarge">, C<"c6in.8xlarge">, C<"c6in.12xlarge">, C<"c6in.16xlarge">, C<"c6in.24xlarge">, C<"c6in.32xlarge">, C<"m6in.large">, C<"m6in.xlarge">, C<"m6in.2xlarge">, C<"m6in.4xlarge">, C<"m6in.8xlarge">, C<"m6in.12xlarge">, C<"m6in.16xlarge">, C<"m6in.24xlarge">, C<"m6in.32xlarge">, C<"m6idn.large">, C<"m6idn.xlarge">, C<"m6idn.2xlarge">, C<"m6idn.4xlarge">, C<"m6idn.8xlarge">, C<"m6idn.12xlarge">, C<"m6idn.16xlarge">, C<"m6idn.24xlarge">, C<"m6idn.32xlarge">, C<"r6in.large">, C<"r6in.xlarge">, C<"r6in.2xlarge">, C<"r6in.4xlarge">, C<"r6in.8xlarge">, C<"r6in.12xlarge">, C<"r6in.16xlarge">, C<"r6in.24xlarge">, C<"r6in.32xlarge">, C<"r6idn.large">, C<"r6idn.xlarge">, C<"r6idn.2xlarge">, C<"r6idn.4xlarge">, C<"r6idn.8xlarge">, C<"r6idn.12xlarge">, C<"r6idn.16xlarge">, C<"r6idn.24xlarge">, C<"r6idn.32xlarge">, C<"c7g.metal">, C<"m7g.medium">, C<"m7g.large">, C<"m7g.xlarge">, C<"m7g.2xlarge">, C<"m7g.4xlarge">, C<"m7g.8xlarge">, C<"m7g.12xlarge">, C<"m7g.16xlarge">, C<"m7g.metal">, C<"r7g.medium">, C<"r7g.large">, C<"r7g.xlarge">, C<"r7g.2xlarge">, C<"r7g.4xlarge">, C<"r7g.8xlarge">, C<"r7g.12xlarge">, C<"r7g.16xlarge">, C<"r7g.metal">, C<"c6in.metal">, C<"m6in.metal">, C<"m6idn.metal">, C<"r6in.metal">, C<"r6idn.metal">, C<"inf2.xlarge">, C<"inf2.8xlarge">, C<"inf2.24xlarge">, C<"inf2.48xlarge">, C<"trn1n.32xlarge">, C<"i4g.large">, C<"i4g.xlarge">, C<"i4g.2xlarge">, C<"i4g.4xlarge">, C<"i4g.8xlarge">, C<"i4g.16xlarge">, C<"hpc7g.4xlarge">, C<"hpc7g.8xlarge">, C<"hpc7g.16xlarge">, C<"c7gn.medium">, C<"c7gn.large">, C<"c7gn.xlarge">, C<"c7gn.2xlarge">, C<"c7gn.4xlarge">, C<"c7gn.8xlarge">, C<"c7gn.12xlarge">, C<"c7gn.16xlarge">, C<"p5.48xlarge">, C<"m7i.large">, C<"m7i.xlarge">, C<"m7i.2xlarge">, C<"m7i.4xlarge">, C<"m7i.8xlarge">, C<"m7i.12xlarge">, C<"m7i.16xlarge">, C<"m7i.24xlarge">, C<"m7i.48xlarge">, C<"m7i-flex.large">, C<"m7i-flex.xlarge">, C<"m7i-flex.2xlarge">, C<"m7i-flex.4xlarge">, C<"m7i-flex.8xlarge">, C<"m7a.medium">, C<"m7a.large">, C<"m7a.xlarge">, C<"m7a.2xlarge">, C<"m7a.4xlarge">, C<"m7a.8xlarge">, C<"m7a.12xlarge">, C<"m7a.16xlarge">, C<"m7a.24xlarge">, C<"m7a.32xlarge">, C<"m7a.48xlarge">, C<"m7a.metal-48xl">, C<"hpc7a.12xlarge">, C<"hpc7a.24xlarge">, C<"hpc7a.48xlarge">, C<"hpc7a.96xlarge">, C<"c7gd.medium">, C<"c7gd.large">, C<"c7gd.xlarge">, C<"c7gd.2xlarge">, C<"c7gd.4xlarge">, C<"c7gd.8xlarge">, C<"c7gd.12xlarge">, C<"c7gd.16xlarge">, C<"m7gd.medium">, C<"m7gd.large">, C<"m7gd.xlarge">, C<"m7gd.2xlarge">, C<"m7gd.4xlarge">, C<"m7gd.8xlarge">, C<"m7gd.12xlarge">, C<"m7gd.16xlarge">, C<"r7gd.medium">, C<"r7gd.large">, C<"r7gd.xlarge">, C<"r7gd.2xlarge">, C<"r7gd.4xlarge">, C<"r7gd.8xlarge">, C<"r7gd.12xlarge">, C<"r7gd.16xlarge">, C<"r7a.medium">, C<"r7a.large">, C<"r7a.xlarge">, C<"r7a.2xlarge">, C<"r7a.4xlarge">, C<"r7a.8xlarge">, C<"r7a.12xlarge">, C<"r7a.16xlarge">, C<"r7a.24xlarge">, C<"r7a.32xlarge">, C<"r7a.48xlarge">, C<"c7i.large">, C<"c7i.xlarge">, C<"c7i.2xlarge">, C<"c7i.4xlarge">, C<"c7i.8xlarge">, C<"c7i.12xlarge">, C<"c7i.16xlarge">, C<"c7i.24xlarge">, C<"c7i.48xlarge">, C<"mac2-m2pro.metal">, C<"r7iz.large">, C<"r7iz.xlarge">, C<"r7iz.2xlarge">, C<"r7iz.4xlarge">, C<"r7iz.8xlarge">, C<"r7iz.12xlarge">, C<"r7iz.16xlarge">, C<"r7iz.32xlarge">, C<"c7a.medium">, C<"c7a.large">, C<"c7a.xlarge">, C<"c7a.2xlarge">, C<"c7a.4xlarge">, C<"c7a.8xlarge">, C<"c7a.12xlarge">, C<"c7a.16xlarge">, C<"c7a.24xlarge">, C<"c7a.32xlarge">, C<"c7a.48xlarge">, C<"c7a.metal-48xl">, C<"r7a.metal-48xl">, C<"r7i.large">, C<"r7i.xlarge">, C<"r7i.2xlarge">, C<"r7i.4xlarge">, C<"r7i.8xlarge">, C<"r7i.12xlarge">, C<"r7i.16xlarge">, C<"r7i.24xlarge">, C<"r7i.48xlarge">, C<"dl2q.24xlarge">, C<"mac2-m2.metal">, C<"i4i.12xlarge">, C<"i4i.24xlarge">, C<"c7i.metal-24xl">, C<"c7i.metal-48xl">, C<"m7i.metal-24xl">, C<"m7i.metal-48xl">, C<"r7i.metal-24xl">, C<"r7i.metal-48xl">, C<"r7iz.metal-16xl">, C<"r7iz.metal-32xl">, C<"c7gd.metal">, C<"m7gd.metal">, C<"r7gd.metal">, C<"g6.xlarge">, C<"g6.2xlarge">, C<"g6.4xlarge">, C<"g6.8xlarge">, C<"g6.12xlarge">, C<"g6.16xlarge">, C<"g6.24xlarge">, C<"g6.48xlarge">, C<"gr6.4xlarge">, C<"gr6.8xlarge">, C<"c7i-flex.large">, C<"c7i-flex.xlarge">, C<"c7i-flex.2xlarge">, C<"c7i-flex.4xlarge">, C<"c7i-flex.8xlarge">, C<"u7i-12tb.224xlarge">, C<"u7in-16tb.224xlarge">, C<"u7in-24tb.224xlarge">, C<"u7in-32tb.224xlarge">, C<"u7ib-12tb.224xlarge">, C<"c7gn.metal">, C<"r8g.medium">, C<"r8g.large">, C<"r8g.xlarge">, C<"r8g.2xlarge">, C<"r8g.4xlarge">, C<"r8g.8xlarge">, C<"r8g.12xlarge">, C<"r8g.16xlarge">, C<"r8g.24xlarge">, C<"r8g.48xlarge">, C<"r8g.metal-24xl">, C<"r8g.metal-48xl">, C<"mac2-m1ultra.metal">, C<"g6e.xlarge">, C<"g6e.2xlarge">, C<"g6e.4xlarge">, C<"g6e.8xlarge">, C<"g6e.12xlarge">, C<"g6e.16xlarge">, C<"g6e.24xlarge">, C<"g6e.48xlarge">, C<"c8g.medium">, C<"c8g.large">, C<"c8g.xlarge">, C<"c8g.2xlarge">, C<"c8g.4xlarge">, C<"c8g.8xlarge">, C<"c8g.12xlarge">, C<"c8g.16xlarge">, C<"c8g.24xlarge">, C<"c8g.48xlarge">, C<"c8g.metal-24xl">, C<"c8g.metal-48xl">, C<"m8g.medium">, C<"m8g.large">, C<"m8g.xlarge">, C<"m8g.2xlarge">, C<"m8g.4xlarge">, C<"m8g.8xlarge">, C<"m8g.12xlarge">, C<"m8g.16xlarge">, C<"m8g.24xlarge">, C<"m8g.48xlarge">, C<"m8g.metal-24xl">, C<"m8g.metal-48xl">, C<"x8g.medium">, C<"x8g.large">, C<"x8g.xlarge">, C<"x8g.2xlarge">, C<"x8g.4xlarge">, C<"x8g.8xlarge">, C<"x8g.12xlarge">, C<"x8g.16xlarge">, C<"x8g.24xlarge">, C<"x8g.48xlarge">, C<"x8g.metal-24xl">, C<"x8g.metal-48xl">, C<"i7ie.large">, C<"i7ie.xlarge">, C<"i7ie.2xlarge">, C<"i7ie.3xlarge">, C<"i7ie.6xlarge">, C<"i7ie.12xlarge">, C<"i7ie.18xlarge">, C<"i7ie.24xlarge">, C<"i7ie.48xlarge">, C<"i8g.large">, C<"i8g.xlarge">, C<"i8g.2xlarge">, C<"i8g.4xlarge">, C<"i8g.8xlarge">, C<"i8g.12xlarge">, C<"i8g.16xlarge">, C<"i8g.24xlarge">, C<"i8g.metal-24xl">, C<"u7i-6tb.112xlarge">, C<"u7i-8tb.112xlarge">, C<"u7inh-32tb.480xlarge">, C<"p5e.48xlarge">, C<"p5en.48xlarge">, C<"f2.12xlarge">, C<"f2.48xlarge">, C<"trn2.48xlarge">

=head2 MaxDuration => Int

The maximum duration (in seconds) to filter when searching for
offerings.

Default: 94608000 (3 years)



=head2 MaxInstanceCount => Int

The maximum number of instances to filter when searching for offerings.

Default: 20



=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results of the initial request can be seen by
sending another request with the returned C<NextToken> value. The
maximum is 100.

Default: 100



=head2 MinDuration => Int

The minimum duration (in seconds) to filter when searching for
offerings.

Default: 2592000 (1 month)



=head2 NextToken => Str

The token to retrieve the next page of results.



=head2 OfferingClass => Str

The offering class of the Reserved Instance. Can be C<standard> or
C<convertible>.

Valid values are: C<"standard">, C<"convertible">

=head2 OfferingType => Str

The Reserved Instance offering type. If you are using tools that
predate the 2011-11-01 API version, you only have access to the
C<Medium Utilization> Reserved Instance offering type.

Valid values are: C<"Heavy Utilization">, C<"Medium Utilization">, C<"Light Utilization">, C<"No Upfront">, C<"Partial Upfront">, C<"All Upfront">

=head2 ProductDescription => Str

The Reserved Instance product platform description. Instances that
include C<(Amazon VPC)> in the description are for use with Amazon VPC.

Valid values are: C<"Linux/UNIX">, C<"Linux/UNIX (Amazon VPC)">, C<"Windows">, C<"Windows (Amazon VPC)">

=head2 ReservedInstancesOfferingIds => ArrayRef[Str|Undef]

One or more Reserved Instances offering IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReservedInstancesOfferings in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

