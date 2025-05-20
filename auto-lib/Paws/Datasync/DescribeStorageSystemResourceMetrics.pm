
package Paws::Datasync::DescribeStorageSystemResourceMetrics;
  use Moose;
  has DiscoveryJobArn => (is => 'ro', isa => 'Str', required => 1);
  has EndTime => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStorageSystemResourceMetrics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DescribeStorageSystemResourceMetricsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeStorageSystemResourceMetrics - Arguments for method DescribeStorageSystemResourceMetrics on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStorageSystemResourceMetrics on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeStorageSystemResourceMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStorageSystemResourceMetrics.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeStorageSystemResourceMetricsResponse =
      $datasync->DescribeStorageSystemResourceMetrics(
      DiscoveryJobArn => 'MyDiscoveryJobArn',
      ResourceId      => 'MyResourceId',
      ResourceType    => 'SVM',
      EndTime         => '1970-01-01T01:00:00',     # OPTIONAL
      MaxResults      => 1,                         # OPTIONAL
      NextToken       => 'MyDiscoveryNextToken',    # OPTIONAL
      StartTime       => '1970-01-01T01:00:00',     # OPTIONAL
      );

    # Results:
    my $Metrics   = $DescribeStorageSystemResourceMetricsResponse->Metrics;
    my $NextToken = $DescribeStorageSystemResourceMetricsResponse->NextToken;

# Returns a L<Paws::Datasync::DescribeStorageSystemResourceMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeStorageSystemResourceMetrics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DiscoveryJobArn => Str

Specifies the Amazon Resource Name (ARN) of the discovery job that
collects information about your on-premises storage system.



=head2 EndTime => Str

Specifies a time within the total duration that the discovery job ran.
To see information gathered during a certain time frame, use this
parameter with C<StartTime>.



=head2 MaxResults => Int

Specifies how many results that you want in the response.



=head2 NextToken => Str

Specifies an opaque string that indicates the position to begin the
next list of results in the response.



=head2 B<REQUIRED> ResourceId => Str

Specifies the universally unique identifier (UUID) of the storage
system resource that you want information about.



=head2 B<REQUIRED> ResourceType => Str

Specifies the kind of storage system resource that you want information
about.

Valid values are: C<"SVM">, C<"VOLUME">, C<"CLUSTER">

=head2 StartTime => Str

Specifies a time within the total duration that the discovery job ran.
To see information gathered during a certain time frame, use this
parameter with C<EndTime>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStorageSystemResourceMetrics in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

