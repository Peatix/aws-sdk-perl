
package Paws::Backup::DescribeReportJob;
  use Moose;
  has ReportJobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'reportJobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/report-jobs/{reportJobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::DescribeReportJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeReportJob - Arguments for method DescribeReportJob on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReportJob on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method DescribeReportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReportJob.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $DescribeReportJobOutput = $backup->DescribeReportJob(
      ReportJobId => 'MyReportJobId',

    );

    # Results:
    my $ReportJob = $DescribeReportJobOutput->ReportJob;

    # Returns a L<Paws::Backup::DescribeReportJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/DescribeReportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReportJobId => Str

The identifier of the report job. A unique, randomly generated,
Unicode, UTF-8 encoded string that is at most 1,024 bytes long. The
report job ID cannot be edited.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReportJob in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

