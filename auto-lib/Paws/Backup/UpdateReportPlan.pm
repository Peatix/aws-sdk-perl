
package Paws::Backup::UpdateReportPlan;
  use Moose;
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has ReportDeliveryChannel => (is => 'ro', isa => 'Paws::Backup::ReportDeliveryChannel');
  has ReportPlanDescription => (is => 'ro', isa => 'Str');
  has ReportPlanName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'reportPlanName', required => 1);
  has ReportSetting => (is => 'ro', isa => 'Paws::Backup::ReportSetting');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateReportPlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/report-plans/{reportPlanName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::UpdateReportPlanOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::UpdateReportPlan - Arguments for method UpdateReportPlan on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateReportPlan on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method UpdateReportPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateReportPlan.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $UpdateReportPlanOutput = $backup->UpdateReportPlan(
      ReportPlanName        => 'MyReportPlanName',
      IdempotencyToken      => 'Mystring',           # OPTIONAL
      ReportDeliveryChannel => {
        S3BucketName => 'Mystring',
        Formats      => [ 'Mystring', ... ],         # OPTIONAL
        S3KeyPrefix  => 'Mystring',
      },    # OPTIONAL
      ReportPlanDescription => 'MyReportPlanDescription',    # OPTIONAL
      ReportSetting         => {
        ReportTemplate     => 'Mystring',
        Accounts           => [ 'Mystring', ... ],    # OPTIONAL
        FrameworkArns      => [ 'Mystring', ... ],    # OPTIONAL
        NumberOfFrameworks => 1,                      # OPTIONAL
        OrganizationUnits  => [ 'Mystring', ... ],    # OPTIONAL
        Regions            => [ 'Mystring', ... ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $CreationTime   = $UpdateReportPlanOutput->CreationTime;
    my $ReportPlanArn  = $UpdateReportPlanOutput->ReportPlanArn;
    my $ReportPlanName = $UpdateReportPlanOutput->ReportPlanName;

    # Returns a L<Paws::Backup::UpdateReportPlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/UpdateReportPlan>

=head1 ATTRIBUTES


=head2 IdempotencyToken => Str

A customer-chosen string that you can use to distinguish between
otherwise identical calls to C<UpdateReportPlanInput>. Retrying a
successful request with the same idempotency token results in a success
message with no action taken.



=head2 ReportDeliveryChannel => L<Paws::Backup::ReportDeliveryChannel>

The information about where to deliver your reports, specifically your
Amazon S3 bucket name, S3 key prefix, and the formats of your reports.



=head2 ReportPlanDescription => Str

An optional description of the report plan with a maximum 1,024
characters.



=head2 B<REQUIRED> ReportPlanName => Str

The unique name of the report plan. This name is between 1 and 256
characters, starting with a letter, and consisting of letters (a-z,
A-Z), numbers (0-9), and underscores (_).



=head2 ReportSetting => L<Paws::Backup::ReportSetting>

The report template for the report. Reports are built using a report
template. The report templates are:

C<RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT |
BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT>

If the report template is C<RESOURCE_COMPLIANCE_REPORT> or
C<CONTROL_COMPLIANCE_REPORT>, this API resource also describes the
report coverage by Amazon Web Services Regions and frameworks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateReportPlan in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

