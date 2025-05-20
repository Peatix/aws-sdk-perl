
package Paws::AuditManager::UpdateSettings;
  use Moose;
  has DefaultAssessmentReportsDestination => (is => 'ro', isa => 'Paws::AuditManager::AssessmentReportsDestination', traits => ['NameInRequest'], request_name => 'defaultAssessmentReportsDestination');
  has DefaultExportDestination => (is => 'ro', isa => 'Paws::AuditManager::DefaultExportDestination', traits => ['NameInRequest'], request_name => 'defaultExportDestination');
  has DefaultProcessOwners => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::Role]', traits => ['NameInRequest'], request_name => 'defaultProcessOwners');
  has DeregistrationPolicy => (is => 'ro', isa => 'Paws::AuditManager::DeregistrationPolicy', traits => ['NameInRequest'], request_name => 'deregistrationPolicy');
  has EvidenceFinderEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'evidenceFinderEnabled');
  has KmsKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKey');
  has SnsTopic => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'snsTopic');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::UpdateSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::UpdateSettings - Arguments for method UpdateSettings on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSettings on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method UpdateSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSettings.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $UpdateSettingsResponse = $auditmanager->UpdateSettings(
      DefaultAssessmentReportsDestination => {
        Destination     => 'MyS3Url',    # min: 1, max: 1024; OPTIONAL
        DestinationType => 'S3',         # values: S3; OPTIONAL
      },    # OPTIONAL
      DefaultExportDestination => {
        Destination     => 'MyS3Url',    # min: 1, max: 1024; OPTIONAL
        DestinationType => 'S3',         # values: S3; OPTIONAL
      },    # OPTIONAL
      DefaultProcessOwners => [
        {
          RoleArn  => 'MyIamArn',        # min: 20, max: 2048
          RoleType => 'PROCESS_OWNER',   # values: PROCESS_OWNER, RESOURCE_OWNER

        },
        ...
      ],    # OPTIONAL
      DeregistrationPolicy => {
        DeleteResources => 'ALL',    # values: ALL, DEFAULT; OPTIONAL
      },    # OPTIONAL
      EvidenceFinderEnabled => 1,             # OPTIONAL
      KmsKey                => 'MyKmsKey',    # OPTIONAL
      SnsTopic              => 'MySnsArn',    # OPTIONAL
    );

    # Results:
    my $Settings = $UpdateSettingsResponse->Settings;

    # Returns a L<Paws::AuditManager::UpdateSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/UpdateSettings>

=head1 ATTRIBUTES


=head2 DefaultAssessmentReportsDestination => L<Paws::AuditManager::AssessmentReportsDestination>

The default S3 destination bucket for storing assessment reports.



=head2 DefaultExportDestination => L<Paws::AuditManager::DefaultExportDestination>

The default S3 destination bucket for storing evidence finder exports.



=head2 DefaultProcessOwners => ArrayRef[L<Paws::AuditManager::Role>]

A list of the default audit owners.



=head2 DeregistrationPolicy => L<Paws::AuditManager::DeregistrationPolicy>

The deregistration policy for your Audit Manager data. You can use this
attribute to determine how your data is handled when you deregister
Audit Manager.



=head2 EvidenceFinderEnabled => Bool

Specifies whether the evidence finder feature is enabled. Change this
attribute to enable or disable evidence finder.

When you use this attribute to disable evidence finder, Audit Manager
deletes the event data store thatE<rsquo>s used to query your evidence
data. As a result, you canE<rsquo>t re-enable evidence finder and use
the feature again. Your only alternative is to deregister
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeregisterAccount.html)
and then re-register
(https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_RegisterAccount.html)
Audit Manager.



=head2 KmsKey => Str

The KMS key details.



=head2 SnsTopic => Str

The Amazon Simple Notification Service (Amazon SNS) topic that Audit
Manager sends notifications to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSettings in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

