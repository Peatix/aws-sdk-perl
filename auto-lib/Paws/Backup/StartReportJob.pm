
package Paws::Backup::StartReportJob;
  use Moose;
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has ReportPlanName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'reportPlanName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartReportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/report-jobs/{reportPlanName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::StartReportJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::StartReportJob - Arguments for method StartReportJob on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartReportJob on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method StartReportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartReportJob.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $StartReportJobOutput = $backup->StartReportJob(
      ReportPlanName   => 'MyReportPlanName',
      IdempotencyToken => 'Mystring',           # OPTIONAL
    );

    # Results:
    my $ReportJobId = $StartReportJobOutput->ReportJobId;

    # Returns a L<Paws::Backup::StartReportJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/StartReportJob>

=head1 ATTRIBUTES


=head2 IdempotencyToken => Str

A customer-chosen string that you can use to distinguish between
otherwise identical calls to C<StartReportJobInput>. Retrying a
successful request with the same idempotency token results in a success
message with no action taken.



=head2 B<REQUIRED> ReportPlanName => Str

The unique name of a report plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartReportJob in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

