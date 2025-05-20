
package Paws::IoT::UpdateSecurityProfileResponse;
  use Moose;
  has AdditionalMetricsToRetain => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'additionalMetricsToRetain');
  has AdditionalMetricsToRetainV2 => (is => 'ro', isa => 'ArrayRef[Paws::IoT::MetricToRetain]', traits => ['NameInRequest'], request_name => 'additionalMetricsToRetainV2');
  has AlertTargets => (is => 'ro', isa => 'Paws::IoT::AlertTargets', traits => ['NameInRequest'], request_name => 'alertTargets');
  has Behaviors => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Behavior]', traits => ['NameInRequest'], request_name => 'behaviors');
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate');
  has LastModifiedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedDate');
  has MetricsExportConfig => (is => 'ro', isa => 'Paws::IoT::MetricsExportConfig', traits => ['NameInRequest'], request_name => 'metricsExportConfig');
  has SecurityProfileArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'securityProfileArn');
  has SecurityProfileDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'securityProfileDescription');
  has SecurityProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'securityProfileName');
  has Version => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'version');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateSecurityProfileResponse

=head1 ATTRIBUTES


=head2 AdditionalMetricsToRetain => ArrayRef[Str|Undef]

I<Please use UpdateSecurityProfileResponse$additionalMetricsToRetainV2
instead.>

A list of metrics whose data is retained (stored). By default, data is
retained for any metric used in the security profile's C<behaviors>,
but it is also retained for any metric specified here.


=head2 AdditionalMetricsToRetainV2 => ArrayRef[L<Paws::IoT::MetricToRetain>]

A list of metrics whose data is retained (stored). By default, data is
retained for any metric used in the profile's behaviors, but it is also
retained for any metric specified here. Can be used with custom
metrics; cannot be used with dimensions.


=head2 AlertTargets => L<Paws::IoT::AlertTargets>

Where the alerts are sent. (Alerts are always sent to the console.)


=head2 Behaviors => ArrayRef[L<Paws::IoT::Behavior>]

Specifies the behaviors that, when violated by a device (thing), cause
an alert.


=head2 CreationDate => Str

The time the security profile was created.


=head2 LastModifiedDate => Str

The time the security profile was last modified.


=head2 MetricsExportConfig => L<Paws::IoT::MetricsExportConfig>

Specifies the MQTT topic and role ARN required for metric export.


=head2 SecurityProfileArn => Str

The ARN of the security profile that was updated.


=head2 SecurityProfileDescription => Str

The description of the security profile.


=head2 SecurityProfileName => Str

The name of the security profile that was updated.


=head2 Version => Int

The updated version of the security profile.


=head2 _request_id => Str


=cut

