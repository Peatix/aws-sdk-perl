
package Paws::GuardDuty::UpdateMemberDetectors;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds', required => 1);
  has DataSources => (is => 'ro', isa => 'Paws::GuardDuty::DataSourceConfigurations', traits => ['NameInRequest'], request_name => 'dataSources');
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has Features => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::MemberFeaturesConfiguration]', traits => ['NameInRequest'], request_name => 'features');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMemberDetectors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/member/detector/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::UpdateMemberDetectorsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::UpdateMemberDetectors - Arguments for method UpdateMemberDetectors on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMemberDetectors on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method UpdateMemberDetectors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMemberDetectors.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $UpdateMemberDetectorsResponse = $guardduty->UpdateMemberDetectors(
      AccountIds => [
        'MyAccountId', ...    # min: 12, max: 12
      ],
      DetectorId  => 'MyDetectorId',
      DataSources => {
        Kubernetes => {
          AuditLogs => {
            Enable => 1,

          },

        },                    # OPTIONAL
        MalwareProtection => {
          ScanEc2InstanceWithFindings => { EbsVolumes => 1, },    # OPTIONAL
        },    # OPTIONAL
        S3Logs => {
          Enable => 1,

        },    # OPTIONAL
      },    # OPTIONAL
      Features => [
        {
          AdditionalConfiguration => [
            {
              Name => 'EKS_ADDON_MANAGEMENT'
              , # values: EKS_ADDON_MANAGEMENT, ECS_FARGATE_AGENT_MANAGEMENT, EC2_AGENT_MANAGEMENT; OPTIONAL
              Status => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          Name => 'S3_DATA_EVENTS'
          , # values: S3_DATA_EVENTS, EKS_AUDIT_LOGS, EBS_MALWARE_PROTECTION, RDS_LOGIN_EVENTS, EKS_RUNTIME_MONITORING, LAMBDA_NETWORK_LOGS, RUNTIME_MONITORING; OPTIONAL
          Status => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $UnprocessedAccounts =
      $UpdateMemberDetectorsResponse->UnprocessedAccounts;

    # Returns a L<Paws::GuardDuty::UpdateMemberDetectorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/UpdateMemberDetectors>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

A list of member account IDs to be updated.



=head2 DataSources => L<Paws::GuardDuty::DataSourceConfigurations>

Describes which data sources will be updated.



=head2 B<REQUIRED> DetectorId => Str

The detector ID of the administrator account.

To find the C<detectorId> in the current Region, see the Settings page
in the GuardDuty console, or run the ListDetectors
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html)
API.



=head2 Features => ArrayRef[L<Paws::GuardDuty::MemberFeaturesConfiguration>]

A list of features that will be updated for the specified member
accounts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMemberDetectors in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

