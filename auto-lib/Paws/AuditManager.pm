package Paws::AuditManager;
  use Moose;
  sub service { 'auditmanager' }
  sub signing_name { 'auditmanager' }
  sub version { '2017-07-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateAssessmentReportEvidenceFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::AssociateAssessmentReportEvidenceFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchAssociateAssessmentReportEvidence {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::BatchAssociateAssessmentReportEvidence', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchCreateDelegationByAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::BatchCreateDelegationByAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteDelegationByAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::BatchDeleteDelegationByAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDisassociateAssessmentReportEvidence {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::BatchDisassociateAssessmentReportEvidence', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchImportEvidenceToAssessmentControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::BatchImportEvidenceToAssessmentControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::CreateAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssessmentFramework {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::CreateAssessmentFramework', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssessmentReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::CreateAssessmentReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::CreateControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::DeleteAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssessmentFramework {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::DeleteAssessmentFramework', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssessmentFrameworkShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::DeleteAssessmentFrameworkShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssessmentReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::DeleteAssessmentReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::DeleteControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::DeregisterAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::DeregisterOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAssessmentReportEvidenceFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::DisassociateAssessmentReportEvidenceFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetAccountStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssessmentFramework {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetAssessmentFramework', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssessmentReportUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetAssessmentReportUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetChangeLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetChangeLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDelegations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetDelegations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEvidence {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetEvidence', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEvidenceByEvidenceFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetEvidenceByEvidenceFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEvidenceFileUploadUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetEvidenceFileUploadUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEvidenceFolder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetEvidenceFolder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEvidenceFoldersByAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetEvidenceFoldersByAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEvidenceFoldersByAssessmentControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetEvidenceFoldersByAssessmentControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInsights {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetInsights', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInsightsByAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetInsightsByAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServicesInScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetServicesInScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::GetSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssessmentControlInsightsByControlDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListAssessmentControlInsightsByControlDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssessmentFrameworks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListAssessmentFrameworks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssessmentFrameworkShareRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListAssessmentFrameworkShareRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssessmentReports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListAssessmentReports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssessments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListAssessments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListControlDomainInsights {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListControlDomainInsights', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListControlDomainInsightsByAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListControlDomainInsightsByAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListControlInsightsByControlDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListControlInsightsByControlDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListControls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListControls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeywordsForDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListKeywordsForDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::RegisterAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterOrganizationAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::RegisterOrganizationAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartAssessmentFrameworkShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::StartAssessmentFrameworkShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UpdateAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssessmentControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UpdateAssessmentControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssessmentControlSetStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UpdateAssessmentControlSetStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssessmentFramework {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UpdateAssessmentFramework', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssessmentFrameworkShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UpdateAssessmentFrameworkShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssessmentStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UpdateAssessmentStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UpdateControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::UpdateSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidateAssessmentReportIntegrity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AuditManager::ValidateAssessmentReportIntegrity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateAssessmentReportEvidenceFolder BatchAssociateAssessmentReportEvidence BatchCreateDelegationByAssessment BatchDeleteDelegationByAssessment BatchDisassociateAssessmentReportEvidence BatchImportEvidenceToAssessmentControl CreateAssessment CreateAssessmentFramework CreateAssessmentReport CreateControl DeleteAssessment DeleteAssessmentFramework DeleteAssessmentFrameworkShare DeleteAssessmentReport DeleteControl DeregisterAccount DeregisterOrganizationAdminAccount DisassociateAssessmentReportEvidenceFolder GetAccountStatus GetAssessment GetAssessmentFramework GetAssessmentReportUrl GetChangeLogs GetControl GetDelegations GetEvidence GetEvidenceByEvidenceFolder GetEvidenceFileUploadUrl GetEvidenceFolder GetEvidenceFoldersByAssessment GetEvidenceFoldersByAssessmentControl GetInsights GetInsightsByAssessment GetOrganizationAdminAccount GetServicesInScope GetSettings ListAssessmentControlInsightsByControlDomain ListAssessmentFrameworks ListAssessmentFrameworkShareRequests ListAssessmentReports ListAssessments ListControlDomainInsights ListControlDomainInsightsByAssessment ListControlInsightsByControlDomain ListControls ListKeywordsForDataSource ListNotifications ListTagsForResource RegisterAccount RegisterOrganizationAdminAccount StartAssessmentFrameworkShare TagResource UntagResource UpdateAssessment UpdateAssessmentControl UpdateAssessmentControlSetStatus UpdateAssessmentFramework UpdateAssessmentFrameworkShare UpdateAssessmentStatus UpdateControl UpdateSettings ValidateAssessmentReportIntegrity / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager - Perl Interface to AWS AWS Audit Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AuditManager');
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

Welcome to the Audit Manager API reference. This guide is for
developers who need detailed information about the Audit Manager API
operations, data types, and errors.

Audit Manager is a service that provides automated evidence collection
so that you can continually audit your Amazon Web Services usage. You
can use it to assess the effectiveness of your controls, manage risk,
and simplify compliance.

Audit Manager provides prebuilt frameworks that structure and automate
assessments for a given compliance standard. Frameworks include a
prebuilt collection of controls with descriptions and testing
procedures. These controls are grouped according to the requirements of
the specified compliance standard or regulation. You can also customize
frameworks and controls to support internal audits with specific
requirements.

Use the following links to get started with the Audit Manager API:

=over

=item *

Actions
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Operations.html):
An alphabetical list of all Audit Manager API operations.

=item *

Data types
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Types.html):
An alphabetical list of all Audit Manager data types.

=item *

Common parameters
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonParameters.html):
Parameters that all operations can use.

=item *

Common errors
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonErrors.html):
Client and server errors that all operations can return.

=back

If you're new to Audit Manager, we recommend that you review the Audit
Manager User Guide
(https://docs.aws.amazon.com/audit-manager/latest/userguide/what-is.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateAssessmentReportEvidenceFolder

=over

=item AssessmentId => Str

=item EvidenceFolderId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::AssociateAssessmentReportEvidenceFolder>

Returns: a L<Paws::AuditManager::AssociateAssessmentReportEvidenceFolderResponse> instance

Associates an evidence folder to an assessment report in an Audit
Manager assessment.


=head2 BatchAssociateAssessmentReportEvidence

=over

=item AssessmentId => Str

=item EvidenceFolderId => Str

=item EvidenceIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AuditManager::BatchAssociateAssessmentReportEvidence>

Returns: a L<Paws::AuditManager::BatchAssociateAssessmentReportEvidenceResponse> instance

Associates a list of evidence to an assessment report in an Audit
Manager assessment.


=head2 BatchCreateDelegationByAssessment

=over

=item AssessmentId => Str

=item CreateDelegationRequests => ArrayRef[L<Paws::AuditManager::CreateDelegationRequest>]


=back

Each argument is described in detail in: L<Paws::AuditManager::BatchCreateDelegationByAssessment>

Returns: a L<Paws::AuditManager::BatchCreateDelegationByAssessmentResponse> instance

Creates a batch of delegations for an assessment in Audit Manager.


=head2 BatchDeleteDelegationByAssessment

=over

=item AssessmentId => Str

=item DelegationIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AuditManager::BatchDeleteDelegationByAssessment>

Returns: a L<Paws::AuditManager::BatchDeleteDelegationByAssessmentResponse> instance

Deletes a batch of delegations for an assessment in Audit Manager.


=head2 BatchDisassociateAssessmentReportEvidence

=over

=item AssessmentId => Str

=item EvidenceFolderId => Str

=item EvidenceIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AuditManager::BatchDisassociateAssessmentReportEvidence>

Returns: a L<Paws::AuditManager::BatchDisassociateAssessmentReportEvidenceResponse> instance

Disassociates a list of evidence from an assessment report in Audit
Manager.


=head2 BatchImportEvidenceToAssessmentControl

=over

=item AssessmentId => Str

=item ControlId => Str

=item ControlSetId => Str

=item ManualEvidence => ArrayRef[L<Paws::AuditManager::ManualEvidence>]


=back

Each argument is described in detail in: L<Paws::AuditManager::BatchImportEvidenceToAssessmentControl>

Returns: a L<Paws::AuditManager::BatchImportEvidenceToAssessmentControlResponse> instance

Adds one or more pieces of evidence to a control in an Audit Manager
assessment.

You can import manual evidence from any S3 bucket by specifying the S3
URI of the object. You can also upload a file from your browser, or
enter plain text in response to a risk assessment question.

The following restrictions apply to this action:

=over

=item *

C<manualEvidence> can be only one of the following:
C<evidenceFileName>, C<s3ResourcePath>, or C<textResponse>

=item *

Maximum size of an individual evidence file: 100 MB

=item *

Number of daily manual evidence uploads per control: 100

=item *

Supported file formats: See Supported file types for manual evidence
(https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#supported-manual-evidence-files)
in the I<Audit Manager User Guide>

=back

For more information about Audit Manager service restrictions, see
Quotas and restrictions for Audit Manager
(https://docs.aws.amazon.com/audit-manager/latest/userguide/service-quotas.html).


=head2 CreateAssessment

=over

=item AssessmentReportsDestination => L<Paws::AuditManager::AssessmentReportsDestination>

=item FrameworkId => Str

=item Name => Str

=item Roles => ArrayRef[L<Paws::AuditManager::Role>]

=item Scope => L<Paws::AuditManager::Scope>

=item [Description => Str]

=item [Tags => L<Paws::AuditManager::TagMap>]


=back

Each argument is described in detail in: L<Paws::AuditManager::CreateAssessment>

Returns: a L<Paws::AuditManager::CreateAssessmentResponse> instance

Creates an assessment in Audit Manager.


=head2 CreateAssessmentFramework

=over

=item ControlSets => ArrayRef[L<Paws::AuditManager::CreateAssessmentFrameworkControlSet>]

=item Name => Str

=item [ComplianceType => Str]

=item [Description => Str]

=item [Tags => L<Paws::AuditManager::TagMap>]


=back

Each argument is described in detail in: L<Paws::AuditManager::CreateAssessmentFramework>

Returns: a L<Paws::AuditManager::CreateAssessmentFrameworkResponse> instance

Creates a custom framework in Audit Manager.


=head2 CreateAssessmentReport

=over

=item AssessmentId => Str

=item Name => Str

=item [Description => Str]

=item [QueryStatement => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::CreateAssessmentReport>

Returns: a L<Paws::AuditManager::CreateAssessmentReportResponse> instance

Creates an assessment report for the specified assessment.


=head2 CreateControl

=over

=item ControlMappingSources => ArrayRef[L<Paws::AuditManager::CreateControlMappingSource>]

=item Name => Str

=item [ActionPlanInstructions => Str]

=item [ActionPlanTitle => Str]

=item [Description => Str]

=item [Tags => L<Paws::AuditManager::TagMap>]

=item [TestingInformation => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::CreateControl>

Returns: a L<Paws::AuditManager::CreateControlResponse> instance

Creates a new custom control in Audit Manager.


=head2 DeleteAssessment

=over

=item AssessmentId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::DeleteAssessment>

Returns: a L<Paws::AuditManager::DeleteAssessmentResponse> instance

Deletes an assessment in Audit Manager.


=head2 DeleteAssessmentFramework

=over

=item FrameworkId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::DeleteAssessmentFramework>

Returns: a L<Paws::AuditManager::DeleteAssessmentFrameworkResponse> instance

Deletes a custom framework in Audit Manager.


=head2 DeleteAssessmentFrameworkShare

=over

=item RequestId => Str

=item RequestType => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::DeleteAssessmentFrameworkShare>

Returns: a L<Paws::AuditManager::DeleteAssessmentFrameworkShareResponse> instance

Deletes a share request for a custom framework in Audit Manager.


=head2 DeleteAssessmentReport

=over

=item AssessmentId => Str

=item AssessmentReportId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::DeleteAssessmentReport>

Returns: a L<Paws::AuditManager::DeleteAssessmentReportResponse> instance

Deletes an assessment report in Audit Manager.

When you run the C<DeleteAssessmentReport> operation, Audit Manager
attempts to delete the following data:

=over

=item 1.

The specified assessment report thatE<rsquo>s stored in your S3 bucket

=item 2.

The associated metadata thatE<rsquo>s stored in Audit Manager

=back

If Audit Manager canE<rsquo>t access the assessment report in your S3
bucket, the report isnE<rsquo>t deleted. In this event, the
C<DeleteAssessmentReport> operation doesnE<rsquo>t fail. Instead, it
proceeds to delete the associated metadata only. You must then delete
the assessment report from the S3 bucket yourself.

This scenario happens when Audit Manager receives a C<403 (Forbidden)>
or C<404 (Not Found)> error from Amazon S3. To avoid this, make sure
that your S3 bucket is available, and that you configured the correct
permissions for Audit Manager to delete resources in your S3 bucket.
For an example permissions policy that you can use, see Assessment
report destination permissions
(https://docs.aws.amazon.com/audit-manager/latest/userguide/security_iam_id-based-policy-examples.html#full-administrator-access-assessment-report-destination)
in the I<Audit Manager User Guide>. For information about the issues
that could cause a C<403 (Forbidden)> or C<404 (Not Found>) error from
Amazon S3, see List of Error Codes
(https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList)
in the I<Amazon Simple Storage Service API Reference>.


=head2 DeleteControl

=over

=item ControlId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::DeleteControl>

Returns: a L<Paws::AuditManager::DeleteControlResponse> instance

Deletes a custom control in Audit Manager.

When you invoke this operation, the custom control is deleted from any
frameworks or assessments that itE<rsquo>s currently part of. As a
result, Audit Manager will stop collecting evidence for that custom
control in all of your assessments. This includes assessments that you
previously created before you deleted the custom control.


=head2 DeregisterAccount






Each argument is described in detail in: L<Paws::AuditManager::DeregisterAccount>

Returns: a L<Paws::AuditManager::DeregisterAccountResponse> instance

Deregisters an account in Audit Manager.

Before you deregister, you can use the UpdateSettings
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_UpdateSettings.html)
API operation to set your preferred data retention policy. By default,
Audit Manager retains your data. If you want to delete your data, you
can use the C<DeregistrationPolicy> attribute to request the deletion
of your data.

For more information about data retention, see Data Protection
(https://docs.aws.amazon.com/audit-manager/latest/userguide/data-protection.html)
in the I<Audit Manager User Guide>.


=head2 DeregisterOrganizationAdminAccount

=over

=item [AdminAccountId => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::DeregisterOrganizationAdminAccount>

Returns: a L<Paws::AuditManager::DeregisterOrganizationAdminAccountResponse> instance

Removes the specified Amazon Web Services account as a delegated
administrator for Audit Manager.

When you remove a delegated administrator from your Audit Manager
settings, you continue to have access to the evidence that you
previously collected under that account. This is also the case when you
deregister a delegated administrator from Organizations. However, Audit
Manager stops collecting and attaching evidence to that delegated
administrator account moving forward.

Keep in mind the following cleanup task if you use evidence finder:

Before you use your management account to remove a delegated
administrator, make sure that the current delegated administrator
account signs in to Audit Manager and disables evidence finder first.
Disabling evidence finder automatically deletes the event data store
that was created in their account when they enabled evidence finder. If
this task isnE<rsquo>t completed, the event data store remains in their
account. In this case, we recommend that the original delegated
administrator goes to CloudTrail Lake and manually deletes the event
data store
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-eds-disable-termination.html).

This cleanup task is necessary to ensure that you don't end up with
multiple event data stores. Audit Manager ignores an unused event data
store after you remove or change a delegated administrator account.
However, the unused event data store continues to incur storage costs
from CloudTrail Lake if you don't delete it.

When you deregister a delegated administrator account for Audit
Manager, the data for that account isnE<rsquo>t deleted. If you want to
delete resource data for a delegated administrator account, you must
perform that task separately before you deregister the account. Either,
you can do this in the Audit Manager console. Or, you can use one of
the delete API operations that are provided by Audit Manager.

To delete your Audit Manager resource data, see the following
instructions:

=over

=item *

DeleteAssessment
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessment.html)
(see also: Deleting an assessment
(https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-assessment.html)
in the I<Audit Manager User Guide>)

=item *

DeleteAssessmentFramework
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFramework.html)
(see also: Deleting a custom framework
(https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-custom-framework.html)
in the I<Audit Manager User Guide>)

=item *

DeleteAssessmentFrameworkShare
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFrameworkShare.html)
(see also: Deleting a share request
(https://docs.aws.amazon.com/audit-manager/latest/userguide/deleting-shared-framework-requests.html)
in the I<Audit Manager User Guide>)

=item *

DeleteAssessmentReport
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentReport.html)
(see also: Deleting an assessment report
(https://docs.aws.amazon.com/audit-manager/latest/userguide/generate-assessment-report.html#delete-assessment-report-steps)
in the I<Audit Manager User Guide>)

=item *

DeleteControl
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteControl.html)
(see also: Deleting a custom control
(https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-controls.html)
in the I<Audit Manager User Guide>)

=back

At this time, Audit Manager doesn't provide an option to delete
evidence for a specific delegated administrator. Instead, when your
management account deregisters Audit Manager, we perform a cleanup for
the current delegated administrator account at the time of
deregistration.


=head2 DisassociateAssessmentReportEvidenceFolder

=over

=item AssessmentId => Str

=item EvidenceFolderId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::DisassociateAssessmentReportEvidenceFolder>

Returns: a L<Paws::AuditManager::DisassociateAssessmentReportEvidenceFolderResponse> instance

Disassociates an evidence folder from the specified assessment report
in Audit Manager.


=head2 GetAccountStatus






Each argument is described in detail in: L<Paws::AuditManager::GetAccountStatus>

Returns: a L<Paws::AuditManager::GetAccountStatusResponse> instance

Gets the registration status of an account in Audit Manager.


=head2 GetAssessment

=over

=item AssessmentId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetAssessment>

Returns: a L<Paws::AuditManager::GetAssessmentResponse> instance

Gets information about a specified assessment.


=head2 GetAssessmentFramework

=over

=item FrameworkId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetAssessmentFramework>

Returns: a L<Paws::AuditManager::GetAssessmentFrameworkResponse> instance

Gets information about a specified framework.


=head2 GetAssessmentReportUrl

=over

=item AssessmentId => Str

=item AssessmentReportId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetAssessmentReportUrl>

Returns: a L<Paws::AuditManager::GetAssessmentReportUrlResponse> instance

Gets the URL of an assessment report in Audit Manager.


=head2 GetChangeLogs

=over

=item AssessmentId => Str

=item [ControlId => Str]

=item [ControlSetId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::GetChangeLogs>

Returns: a L<Paws::AuditManager::GetChangeLogsResponse> instance

Gets a list of changelogs from Audit Manager.


=head2 GetControl

=over

=item ControlId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetControl>

Returns: a L<Paws::AuditManager::GetControlResponse> instance

Gets information about a specified control.


=head2 GetDelegations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::GetDelegations>

Returns: a L<Paws::AuditManager::GetDelegationsResponse> instance

Gets a list of delegations from an audit owner to a delegate.


=head2 GetEvidence

=over

=item AssessmentId => Str

=item ControlSetId => Str

=item EvidenceFolderId => Str

=item EvidenceId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetEvidence>

Returns: a L<Paws::AuditManager::GetEvidenceResponse> instance

Gets information about a specified evidence item.


=head2 GetEvidenceByEvidenceFolder

=over

=item AssessmentId => Str

=item ControlSetId => Str

=item EvidenceFolderId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::GetEvidenceByEvidenceFolder>

Returns: a L<Paws::AuditManager::GetEvidenceByEvidenceFolderResponse> instance

Gets all evidence from a specified evidence folder in Audit Manager.


=head2 GetEvidenceFileUploadUrl

=over

=item FileName => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetEvidenceFileUploadUrl>

Returns: a L<Paws::AuditManager::GetEvidenceFileUploadUrlResponse> instance

Creates a presigned Amazon S3 URL that can be used to upload a file as
manual evidence. For instructions on how to use this operation, see
Upload a file from your browser
(https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#how-to-upload-manual-evidence-files)
in the I<Audit Manager User Guide>.

The following restrictions apply to this operation:

=over

=item *

Maximum size of an individual evidence file: 100 MB

=item *

Number of daily manual evidence uploads per control: 100

=item *

Supported file formats: See Supported file types for manual evidence
(https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#supported-manual-evidence-files)
in the I<Audit Manager User Guide>

=back

For more information about Audit Manager service restrictions, see
Quotas and restrictions for Audit Manager
(https://docs.aws.amazon.com/audit-manager/latest/userguide/service-quotas.html).


=head2 GetEvidenceFolder

=over

=item AssessmentId => Str

=item ControlSetId => Str

=item EvidenceFolderId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetEvidenceFolder>

Returns: a L<Paws::AuditManager::GetEvidenceFolderResponse> instance

Gets an evidence folder from a specified assessment in Audit Manager.


=head2 GetEvidenceFoldersByAssessment

=over

=item AssessmentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::GetEvidenceFoldersByAssessment>

Returns: a L<Paws::AuditManager::GetEvidenceFoldersByAssessmentResponse> instance

Gets the evidence folders from a specified assessment in Audit Manager.


=head2 GetEvidenceFoldersByAssessmentControl

=over

=item AssessmentId => Str

=item ControlId => Str

=item ControlSetId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::GetEvidenceFoldersByAssessmentControl>

Returns: a L<Paws::AuditManager::GetEvidenceFoldersByAssessmentControlResponse> instance

Gets a list of evidence folders that are associated with a specified
control in an Audit Manager assessment.


=head2 GetInsights






Each argument is described in detail in: L<Paws::AuditManager::GetInsights>

Returns: a L<Paws::AuditManager::GetInsightsResponse> instance

Gets the latest analytics data for all your current active assessments.


=head2 GetInsightsByAssessment

=over

=item AssessmentId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetInsightsByAssessment>

Returns: a L<Paws::AuditManager::GetInsightsByAssessmentResponse> instance

Gets the latest analytics data for a specific active assessment.


=head2 GetOrganizationAdminAccount






Each argument is described in detail in: L<Paws::AuditManager::GetOrganizationAdminAccount>

Returns: a L<Paws::AuditManager::GetOrganizationAdminAccountResponse> instance

Gets the name of the delegated Amazon Web Services administrator
account for a specified organization.


=head2 GetServicesInScope






Each argument is described in detail in: L<Paws::AuditManager::GetServicesInScope>

Returns: a L<Paws::AuditManager::GetServicesInScopeResponse> instance

Gets a list of the Amazon Web Services from which Audit Manager can
collect evidence.

Audit Manager defines which Amazon Web Services are in scope for an
assessment. Audit Manager infers this scope by examining the
assessmentE<rsquo>s controls and their data sources, and then mapping
this information to one or more of the corresponding Amazon Web
Services that are in this list.

For information about why it's no longer possible to specify services
in scope manually, see I can't edit the services in scope for my
assessment
(https://docs.aws.amazon.com/audit-manager/latest/userguide/evidence-collection-issues.html#unable-to-edit-services)
in the I<Troubleshooting> section of the Audit Manager user guide.


=head2 GetSettings

=over

=item Attribute => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::GetSettings>

Returns: a L<Paws::AuditManager::GetSettingsResponse> instance

Gets the settings for a specified Amazon Web Services account.


=head2 ListAssessmentControlInsightsByControlDomain

=over

=item AssessmentId => Str

=item ControlDomainId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListAssessmentControlInsightsByControlDomain>

Returns: a L<Paws::AuditManager::ListAssessmentControlInsightsByControlDomainResponse> instance

Lists the latest analytics data for controls within a specific control
domain and a specific active assessment.

Control insights are listed only if the control belongs to the control
domain and assessment that was specified. Moreover, the control must
have collected evidence on the C<lastUpdated> date of
C<controlInsightsByAssessment>. If neither of these conditions are met,
no data is listed for that control.


=head2 ListAssessmentFrameworks

=over

=item FrameworkType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListAssessmentFrameworks>

Returns: a L<Paws::AuditManager::ListAssessmentFrameworksResponse> instance

Returns a list of the frameworks that are available in the Audit
Manager framework library.


=head2 ListAssessmentFrameworkShareRequests

=over

=item RequestType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListAssessmentFrameworkShareRequests>

Returns: a L<Paws::AuditManager::ListAssessmentFrameworkShareRequestsResponse> instance

Returns a list of sent or received share requests for custom frameworks
in Audit Manager.


=head2 ListAssessmentReports

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListAssessmentReports>

Returns: a L<Paws::AuditManager::ListAssessmentReportsResponse> instance

Returns a list of assessment reports created in Audit Manager.


=head2 ListAssessments

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListAssessments>

Returns: a L<Paws::AuditManager::ListAssessmentsResponse> instance

Returns a list of current and past assessments from Audit Manager.


=head2 ListControlDomainInsights

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListControlDomainInsights>

Returns: a L<Paws::AuditManager::ListControlDomainInsightsResponse> instance

Lists the latest analytics data for control domains across all of your
active assessments.

Audit Manager supports the control domains that are provided by Amazon
Web Services Control Catalog. For information about how to find a list
of available control domains, see C<ListDomains>
(https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html)
in the Amazon Web Services Control Catalog API Reference.

A control domain is listed only if at least one of the controls within
that domain collected evidence on the C<lastUpdated> date of
C<controlDomainInsights>. If this condition isnE<rsquo>t met, no data
is listed for that control domain.


=head2 ListControlDomainInsightsByAssessment

=over

=item AssessmentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListControlDomainInsightsByAssessment>

Returns: a L<Paws::AuditManager::ListControlDomainInsightsByAssessmentResponse> instance

Lists analytics data for control domains within a specified active
assessment.

Audit Manager supports the control domains that are provided by Amazon
Web Services Control Catalog. For information about how to find a list
of available control domains, see C<ListDomains>
(https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_ListDomains.html)
in the Amazon Web Services Control Catalog API Reference.

A control domain is listed only if at least one of the controls within
that domain collected evidence on the C<lastUpdated> date of
C<controlDomainInsights>. If this condition isnE<rsquo>t met, no data
is listed for that domain.


=head2 ListControlInsightsByControlDomain

=over

=item ControlDomainId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListControlInsightsByControlDomain>

Returns: a L<Paws::AuditManager::ListControlInsightsByControlDomainResponse> instance

Lists the latest analytics data for controls within a specific control
domain across all active assessments.

Control insights are listed only if the control belongs to the control
domain that was specified and the control collected evidence on the
C<lastUpdated> date of C<controlInsightsMetadata>. If neither of these
conditions are met, no data is listed for that control.


=head2 ListControls

=over

=item ControlType => Str

=item [ControlCatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListControls>

Returns: a L<Paws::AuditManager::ListControlsResponse> instance

Returns a list of controls from Audit Manager.


=head2 ListKeywordsForDataSource

=over

=item Source => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListKeywordsForDataSource>

Returns: a L<Paws::AuditManager::ListKeywordsForDataSourceResponse> instance

Returns a list of keywords that are pre-mapped to the specified control
data source.


=head2 ListNotifications

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::ListNotifications>

Returns: a L<Paws::AuditManager::ListNotificationsResponse> instance

Returns a list of all Audit Manager notifications.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::ListTagsForResource>

Returns: a L<Paws::AuditManager::ListTagsForResourceResponse> instance

Returns a list of tags for the specified resource in Audit Manager.


=head2 RegisterAccount

=over

=item [DelegatedAdminAccount => Str]

=item [KmsKey => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::RegisterAccount>

Returns: a L<Paws::AuditManager::RegisterAccountResponse> instance

Enables Audit Manager for the specified Amazon Web Services account.


=head2 RegisterOrganizationAdminAccount

=over

=item AdminAccountId => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::RegisterOrganizationAdminAccount>

Returns: a L<Paws::AuditManager::RegisterOrganizationAdminAccountResponse> instance

Enables an Amazon Web Services account within the organization as the
delegated administrator for Audit Manager.


=head2 StartAssessmentFrameworkShare

=over

=item DestinationAccount => Str

=item DestinationRegion => Str

=item FrameworkId => Str

=item [Comment => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::StartAssessmentFrameworkShare>

Returns: a L<Paws::AuditManager::StartAssessmentFrameworkShareResponse> instance

Creates a share request for a custom framework in Audit Manager.

The share request specifies a recipient and notifies them that a custom
framework is available. Recipients have 120 days to accept or decline
the request. If no action is taken, the share request expires.

When you create a share request, Audit Manager stores a snapshot of
your custom framework in the US East (N. Virginia) Amazon Web Services
Region. Audit Manager also stores a backup of the same snapshot in the
US West (Oregon) Amazon Web Services Region.

Audit Manager deletes the snapshot and the backup snapshot when one of
the following events occurs:

=over

=item *

The sender revokes the share request.

=item *

The recipient declines the share request.

=item *

The recipient encounters an error and doesn't successfully accept the
share request.

=item *

The share request expires before the recipient responds to the request.

=back

When a sender resends a share request
(https://docs.aws.amazon.com/audit-manager/latest/userguide/framework-sharing.html#framework-sharing-resend),
the snapshot is replaced with an updated version that corresponds with
the latest version of the custom framework.

When a recipient accepts a share request, the snapshot is replicated
into their Amazon Web Services account under the Amazon Web Services
Region that was specified in the share request.

When you invoke the C<StartAssessmentFrameworkShare> API, you are about
to share a custom framework with another Amazon Web Services account.
You may not share a custom framework that is derived from a standard
framework if the standard framework is designated as not eligible for
sharing by Amazon Web Services, unless you have obtained permission to
do so from the owner of the standard framework. To learn more about
which standard frameworks are eligible for sharing, see Framework
sharing eligibility
(https://docs.aws.amazon.com/audit-manager/latest/userguide/share-custom-framework-concepts-and-terminology.html#eligibility)
in the I<Audit Manager User Guide>.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::AuditManager::TagMap>


=back

Each argument is described in detail in: L<Paws::AuditManager::TagResource>

Returns: a L<Paws::AuditManager::TagResourceResponse> instance

Tags the specified resource in Audit Manager.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AuditManager::UntagResource>

Returns: a L<Paws::AuditManager::UntagResourceResponse> instance

Removes a tag from a resource in Audit Manager.


=head2 UpdateAssessment

=over

=item AssessmentId => Str

=item Scope => L<Paws::AuditManager::Scope>

=item [AssessmentDescription => Str]

=item [AssessmentName => Str]

=item [AssessmentReportsDestination => L<Paws::AuditManager::AssessmentReportsDestination>]

=item [Roles => ArrayRef[L<Paws::AuditManager::Role>]]


=back

Each argument is described in detail in: L<Paws::AuditManager::UpdateAssessment>

Returns: a L<Paws::AuditManager::UpdateAssessmentResponse> instance

Edits an Audit Manager assessment.


=head2 UpdateAssessmentControl

=over

=item AssessmentId => Str

=item ControlId => Str

=item ControlSetId => Str

=item [CommentBody => Str]

=item [ControlStatus => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::UpdateAssessmentControl>

Returns: a L<Paws::AuditManager::UpdateAssessmentControlResponse> instance

Updates a control within an assessment in Audit Manager.


=head2 UpdateAssessmentControlSetStatus

=over

=item AssessmentId => Str

=item Comment => Str

=item ControlSetId => Str

=item Status => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::UpdateAssessmentControlSetStatus>

Returns: a L<Paws::AuditManager::UpdateAssessmentControlSetStatusResponse> instance

Updates the status of a control set in an Audit Manager assessment.


=head2 UpdateAssessmentFramework

=over

=item ControlSets => ArrayRef[L<Paws::AuditManager::UpdateAssessmentFrameworkControlSet>]

=item FrameworkId => Str

=item Name => Str

=item [ComplianceType => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::UpdateAssessmentFramework>

Returns: a L<Paws::AuditManager::UpdateAssessmentFrameworkResponse> instance

Updates a custom framework in Audit Manager.


=head2 UpdateAssessmentFrameworkShare

=over

=item Action => Str

=item RequestId => Str

=item RequestType => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::UpdateAssessmentFrameworkShare>

Returns: a L<Paws::AuditManager::UpdateAssessmentFrameworkShareResponse> instance

Updates a share request for a custom framework in Audit Manager.


=head2 UpdateAssessmentStatus

=over

=item AssessmentId => Str

=item Status => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::UpdateAssessmentStatus>

Returns: a L<Paws::AuditManager::UpdateAssessmentStatusResponse> instance

Updates the status of an assessment in Audit Manager.


=head2 UpdateControl

=over

=item ControlId => Str

=item ControlMappingSources => ArrayRef[L<Paws::AuditManager::ControlMappingSource>]

=item Name => Str

=item [ActionPlanInstructions => Str]

=item [ActionPlanTitle => Str]

=item [Description => Str]

=item [TestingInformation => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::UpdateControl>

Returns: a L<Paws::AuditManager::UpdateControlResponse> instance

Updates a custom control in Audit Manager.


=head2 UpdateSettings

=over

=item [DefaultAssessmentReportsDestination => L<Paws::AuditManager::AssessmentReportsDestination>]

=item [DefaultExportDestination => L<Paws::AuditManager::DefaultExportDestination>]

=item [DefaultProcessOwners => ArrayRef[L<Paws::AuditManager::Role>]]

=item [DeregistrationPolicy => L<Paws::AuditManager::DeregistrationPolicy>]

=item [EvidenceFinderEnabled => Bool]

=item [KmsKey => Str]

=item [SnsTopic => Str]


=back

Each argument is described in detail in: L<Paws::AuditManager::UpdateSettings>

Returns: a L<Paws::AuditManager::UpdateSettingsResponse> instance

Updates Audit Manager settings for the current account.


=head2 ValidateAssessmentReportIntegrity

=over

=item S3RelativePath => Str


=back

Each argument is described in detail in: L<Paws::AuditManager::ValidateAssessmentReportIntegrity>

Returns: a L<Paws::AuditManager::ValidateAssessmentReportIntegrityResponse> instance

Validates the integrity of an assessment report in Audit Manager.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

