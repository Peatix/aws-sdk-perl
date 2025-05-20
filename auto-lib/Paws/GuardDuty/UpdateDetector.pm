
package Paws::GuardDuty::UpdateDetector;
  use Moose;
  has DataSources => (is => 'ro', isa => 'Paws::GuardDuty::DataSourceConfigurations', traits => ['NameInRequest'], request_name => 'dataSources');
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has Enable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enable');
  has Features => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::DetectorFeatureConfiguration]', traits => ['NameInRequest'], request_name => 'features');
  has FindingPublishingFrequency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'findingPublishingFrequency');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDetector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::UpdateDetectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::UpdateDetector - Arguments for method UpdateDetector on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDetector on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method UpdateDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDetector.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $UpdateDetectorResponse = $guardduty->UpdateDetector(
      DetectorId  => 'MyDetectorId',
      DataSources => {
        Kubernetes => {
          AuditLogs => {
            Enable => 1,

          },

        },    # OPTIONAL
        MalwareProtection => {
          ScanEc2InstanceWithFindings => { EbsVolumes => 1, },    # OPTIONAL
        },    # OPTIONAL
        S3Logs => {
          Enable => 1,

        },    # OPTIONAL
      },    # OPTIONAL
      Enable   => 1,    # OPTIONAL
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
      FindingPublishingFrequency => 'FIFTEEN_MINUTES',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/UpdateDetector>

=head1 ATTRIBUTES


=head2 DataSources => L<Paws::GuardDuty::DataSourceConfigurations>

Describes which data sources will be updated.

There might be regional differences because some data sources might not
be available in all the Amazon Web Services Regions where GuardDuty is
presently supported. For more information, see Regions and endpoints
(https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector to update.

To find the C<detectorId> in the current Region, see the Settings page
in the GuardDuty console, or run the ListDetectors
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html)
API.



=head2 Enable => Bool

Specifies whether the detector is enabled or not enabled.



=head2 Features => ArrayRef[L<Paws::GuardDuty::DetectorFeatureConfiguration>]

Provides the features that will be updated for the detector.



=head2 FindingPublishingFrequency => Str

An enum value that specifies how frequently findings are exported, such
as to CloudWatch Events.

Valid values are: C<"FIFTEEN_MINUTES">, C<"ONE_HOUR">, C<"SIX_HOURS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDetector in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

