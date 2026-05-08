
package Paws::OpenSearch::DescribeInstanceTypeLimits;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domainName');
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EngineVersion', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceTypeLimits');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/instanceTypeLimits/{EngineVersion}/{InstanceType}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::DescribeInstanceTypeLimitsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeInstanceTypeLimits - Arguments for method DescribeInstanceTypeLimits on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstanceTypeLimits on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method DescribeInstanceTypeLimits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstanceTypeLimits.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $DescribeInstanceTypeLimitsResponse = $es->DescribeInstanceTypeLimits(
      EngineVersion => 'MyVersionString',
      InstanceType  => 'm3.medium.search',
      DomainName    => 'MyDomainName',       # OPTIONAL
    );

    # Results:
    my $LimitsByRole = $DescribeInstanceTypeLimitsResponse->LimitsByRole;

    # Returns a L<Paws::OpenSearch::DescribeInstanceTypeLimitsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 DomainName => Str

The name of the domain. Only specify if you need the limits for an
existing domain.



=head2 B<REQUIRED> EngineVersion => Str

Version of OpenSearch or Elasticsearch, in the format Elasticsearch_X.Y
or OpenSearch_X.Y. Defaults to the latest version of OpenSearch.



=head2 B<REQUIRED> InstanceType => Str

The OpenSearch Service instance type for which you need limit
information.

Valid values are: C<"m3.medium.search">, C<"m3.large.search">, C<"m3.xlarge.search">, C<"m3.2xlarge.search">, C<"m4.large.search">, C<"m4.xlarge.search">, C<"m4.2xlarge.search">, C<"m4.4xlarge.search">, C<"m4.10xlarge.search">, C<"m5.large.search">, C<"m5.xlarge.search">, C<"m5.2xlarge.search">, C<"m5.4xlarge.search">, C<"m5.12xlarge.search">, C<"m5.24xlarge.search">, C<"r5.large.search">, C<"r5.xlarge.search">, C<"r5.2xlarge.search">, C<"r5.4xlarge.search">, C<"r5.12xlarge.search">, C<"r5.24xlarge.search">, C<"c5.large.search">, C<"c5.xlarge.search">, C<"c5.2xlarge.search">, C<"c5.4xlarge.search">, C<"c5.9xlarge.search">, C<"c5.18xlarge.search">, C<"t3.nano.search">, C<"t3.micro.search">, C<"t3.small.search">, C<"t3.medium.search">, C<"t3.large.search">, C<"t3.xlarge.search">, C<"t3.2xlarge.search">, C<"or1.medium.search">, C<"or1.large.search">, C<"or1.xlarge.search">, C<"or1.2xlarge.search">, C<"or1.4xlarge.search">, C<"or1.8xlarge.search">, C<"or1.12xlarge.search">, C<"or1.16xlarge.search">, C<"ultrawarm1.medium.search">, C<"ultrawarm1.large.search">, C<"ultrawarm1.xlarge.search">, C<"t2.micro.search">, C<"t2.small.search">, C<"t2.medium.search">, C<"r3.large.search">, C<"r3.xlarge.search">, C<"r3.2xlarge.search">, C<"r3.4xlarge.search">, C<"r3.8xlarge.search">, C<"i2.xlarge.search">, C<"i2.2xlarge.search">, C<"d2.xlarge.search">, C<"d2.2xlarge.search">, C<"d2.4xlarge.search">, C<"d2.8xlarge.search">, C<"c4.large.search">, C<"c4.xlarge.search">, C<"c4.2xlarge.search">, C<"c4.4xlarge.search">, C<"c4.8xlarge.search">, C<"r4.large.search">, C<"r4.xlarge.search">, C<"r4.2xlarge.search">, C<"r4.4xlarge.search">, C<"r4.8xlarge.search">, C<"r4.16xlarge.search">, C<"i3.large.search">, C<"i3.xlarge.search">, C<"i3.2xlarge.search">, C<"i3.4xlarge.search">, C<"i3.8xlarge.search">, C<"i3.16xlarge.search">, C<"r6g.large.search">, C<"r6g.xlarge.search">, C<"r6g.2xlarge.search">, C<"r6g.4xlarge.search">, C<"r6g.8xlarge.search">, C<"r6g.12xlarge.search">, C<"m6g.large.search">, C<"m6g.xlarge.search">, C<"m6g.2xlarge.search">, C<"m6g.4xlarge.search">, C<"m6g.8xlarge.search">, C<"m6g.12xlarge.search">, C<"c6g.large.search">, C<"c6g.xlarge.search">, C<"c6g.2xlarge.search">, C<"c6g.4xlarge.search">, C<"c6g.8xlarge.search">, C<"c6g.12xlarge.search">, C<"r6gd.large.search">, C<"r6gd.xlarge.search">, C<"r6gd.2xlarge.search">, C<"r6gd.4xlarge.search">, C<"r6gd.8xlarge.search">, C<"r6gd.12xlarge.search">, C<"r6gd.16xlarge.search">, C<"t4g.small.search">, C<"t4g.medium.search">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstanceTypeLimits in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

