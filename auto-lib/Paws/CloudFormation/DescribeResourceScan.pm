
package Paws::CloudFormation::DescribeResourceScan;
  use Moose;
  has ResourceScanId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeResourceScan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeResourceScanOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeResourceScanResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeResourceScan - Arguments for method DescribeResourceScan on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeResourceScan on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeResourceScan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeResourceScan.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeResourceScanOutput = $cloudformation->DescribeResourceScan(
      ResourceScanId => 'MyResourceScanId',

    );

    # Results:
    my $EndTime             = $DescribeResourceScanOutput->EndTime;
    my $PercentageCompleted = $DescribeResourceScanOutput->PercentageCompleted;
    my $ResourceScanId      = $DescribeResourceScanOutput->ResourceScanId;
    my $ResourceTypes       = $DescribeResourceScanOutput->ResourceTypes;
    my $ResourcesRead       = $DescribeResourceScanOutput->ResourcesRead;
    my $ResourcesScanned    = $DescribeResourceScanOutput->ResourcesScanned;
    my $ScanFilters         = $DescribeResourceScanOutput->ScanFilters;
    my $StartTime           = $DescribeResourceScanOutput->StartTime;
    my $Status              = $DescribeResourceScanOutput->Status;
    my $StatusReason        = $DescribeResourceScanOutput->StatusReason;

    # Returns a L<Paws::CloudFormation::DescribeResourceScanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeResourceScan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceScanId => Str

The Amazon Resource Name (ARN) of the resource scan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeResourceScan in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

