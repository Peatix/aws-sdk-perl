
package Paws::MediaConnect::UpdateFlow;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FlowArn', required => 1);
  has Maintenance => (is => 'ro', isa => 'Paws::MediaConnect::UpdateMaintenance', traits => ['NameInRequest'], request_name => 'maintenance');
  has NdiConfig => (is => 'ro', isa => 'Paws::MediaConnect::NdiConfig', traits => ['NameInRequest'], request_name => 'ndiConfig');
  has SourceFailoverConfig => (is => 'ro', isa => 'Paws::MediaConnect::UpdateFailoverConfig', traits => ['NameInRequest'], request_name => 'sourceFailoverConfig');
  has SourceMonitoringConfig => (is => 'ro', isa => 'Paws::MediaConnect::MonitoringConfig', traits => ['NameInRequest'], request_name => 'sourceMonitoringConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/{FlowArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::UpdateFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateFlow - Arguments for method UpdateFlow on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFlow on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method UpdateFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFlow.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $UpdateFlowResponse = $mediaconnect->UpdateFlow(
      FlowArn     => 'MyUpdateFlowRequestFlowArnString',
      Maintenance => {
        MaintenanceDay => 'Monday'
        , # values: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday; OPTIONAL
        MaintenanceScheduledDate => 'MyString',    # OPTIONAL
        MaintenanceStartHour     => 'MyString',    # OPTIONAL
      },    # OPTIONAL
      NdiConfig => {
        MachineName         => 'MyString',    # OPTIONAL
        NdiDiscoveryServers => [
          {
            DiscoveryServerAddress => 'MyString',    # OPTIONAL
            VpcInterfaceAdapter    => 'MyString',    # OPTIONAL
            DiscoveryServerPort    => 1,             # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        NdiState => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      SourceFailoverConfig => {
        FailoverMode   => 'MERGE',    # values: MERGE, FAILOVER; OPTIONAL
        RecoveryWindow => 1,          # OPTIONAL
        SourcePriority => {
          PrimarySource => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        State => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      SourceMonitoringConfig => {
        AudioMonitoringSettings => [
          {
            SilentAudio => {
              State => 'ENABLED',       # values: ENABLED, DISABLED; OPTIONAL
              ThresholdSeconds => 1,    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        ContentQualityAnalysisState =>
          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        ThumbnailState => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        VideoMonitoringSettings => [
          {
            BlackFrames => {
              State => 'ENABLED',       # values: ENABLED, DISABLED; OPTIONAL
              ThresholdSeconds => 1,    # OPTIONAL
            },    # OPTIONAL
            FrozenFrames => {
              State => 'ENABLED',       # values: ENABLED, DISABLED; OPTIONAL
              ThresholdSeconds => 1,    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Flow = $UpdateFlowResponse->Flow;

    # Returns a L<Paws::MediaConnect::UpdateFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/UpdateFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowArn => Str

The Amazon Resource Name (ARN) of the flow that you want to update.



=head2 Maintenance => L<Paws::MediaConnect::UpdateMaintenance>

The maintenance setting of the flow.



=head2 NdiConfig => L<Paws::MediaConnect::NdiConfig>

Specifies the configuration settings for NDI outputs. Required when the
flow includes NDI outputs.



=head2 SourceFailoverConfig => L<Paws::MediaConnect::UpdateFailoverConfig>

The settings for source failover.



=head2 SourceMonitoringConfig => L<Paws::MediaConnect::MonitoringConfig>

The settings for source monitoring.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFlow in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

