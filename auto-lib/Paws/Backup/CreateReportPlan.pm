
package Paws::Backup::CreateReportPlan;
  use Moose;
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has ReportDeliveryChannel => (is => 'ro', isa => 'Paws::Backup::ReportDeliveryChannel', required => 1);
  has ReportPlanDescription => (is => 'ro', isa => 'Str');
  has ReportPlanName => (is => 'ro', isa => 'Str', required => 1);
  has ReportPlanTags => (is => 'ro', isa => 'Paws::Backup::StringMap');
  has ReportSetting => (is => 'ro', isa => 'Paws::Backup::ReportSetting', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReportPlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/report-plans');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::CreateReportPlanOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CreateReportPlan - Arguments for method CreateReportPlan on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReportPlan on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method CreateReportPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReportPlan.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $CreateReportPlanOutput = $backup->CreateReportPlan(
      ReportDeliveryChannel => {
        S3BucketName => 'Mystring',
        Formats      => [ 'Mystring', ... ],    # OPTIONAL
        S3KeyPrefix  => 'Mystring',
      },
      ReportPlanName => 'MyReportPlanName',
      ReportSetting  => {
        ReportTemplate     => 'Mystring',
        Accounts           => [ 'Mystring', ... ],    # OPTIONAL
        FrameworkArns      => [ 'Mystring', ... ],    # OPTIONAL
        NumberOfFrameworks => 1,                      # OPTIONAL
        OrganizationUnits  => [ 'Mystring', ... ],    # OPTIONAL
        Regions            => [ 'Mystring', ... ],    # OPTIONAL
      },
      IdempotencyToken      => 'Mystring',                       # OPTIONAL
      ReportPlanDescription => 'MyReportPlanDescription',        # OPTIONAL
      ReportPlanTags        => { 'Mystring' => 'Mystring', },    # OPTIONAL
    );

    # Results:
    my $CreationTime   = $CreateReportPlanOutput->CreationTime;
    my $ReportPlanArn  = $CreateReportPlanOutput->ReportPlanArn;
    my $ReportPlanName = $CreateReportPlanOutput->ReportPlanName;

    # Returns a L<Paws::Backup::CreateReportPlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/CreateReportPlan>

=head1 ATTRIBUTES


=head2 IdempotencyToken => Str

A customer-chosen string that you can use to distinguish between
otherwise identical calls to C<CreateReportPlanInput>. Retrying a
successful request with the same idempotency token results in a success
message with no action taken.



=head2 B<REQUIRED> ReportDeliveryChannel => L<Paws::Backup::ReportDeliveryChannel>

A structure that contains information about where and how to deliver
your reports, specifically your Amazon S3 bucket name, S3 key prefix,
and the formats of your reports.



=head2 ReportPlanDescription => Str

An optional description of the report plan with a maximum of 1,024
characters.



=head2 B<REQUIRED> ReportPlanName => Str

The unique name of the report plan. The name must be between 1 and 256
characters, starting with a letter, and consisting of letters (a-z,
A-Z), numbers (0-9), and underscores (_).



=head2 ReportPlanTags => L<Paws::Backup::StringMap>

The tags to assign to the report plan.



=head2 B<REQUIRED> ReportSetting => L<Paws::Backup::ReportSetting>

Identifies the report template for the report. Reports are built using
a report template. The report templates are:

C<RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT |
BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT>

If the report template is C<RESOURCE_COMPLIANCE_REPORT> or
C<CONTROL_COMPLIANCE_REPORT>, this API resource also describes the
report coverage by Amazon Web Services Regions and frameworks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReportPlan in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

