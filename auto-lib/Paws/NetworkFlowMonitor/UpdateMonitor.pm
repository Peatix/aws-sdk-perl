
package Paws::NetworkFlowMonitor::UpdateMonitor;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has LocalResourcesToAdd => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFlowMonitor::MonitorLocalResource]', traits => ['NameInRequest'], request_name => 'localResourcesToAdd');
  has LocalResourcesToRemove => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFlowMonitor::MonitorLocalResource]', traits => ['NameInRequest'], request_name => 'localResourcesToRemove');
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'monitorName', required => 1);
  has RemoteResourcesToAdd => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFlowMonitor::MonitorRemoteResource]', traits => ['NameInRequest'], request_name => 'remoteResourcesToAdd');
  has RemoteResourcesToRemove => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFlowMonitor::MonitorRemoteResource]', traits => ['NameInRequest'], request_name => 'remoteResourcesToRemove');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMonitor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/monitors/{monitorName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFlowMonitor::UpdateMonitorOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::UpdateMonitor - Arguments for method UpdateMonitor on L<Paws::NetworkFlowMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMonitor on the
L<Network Flow Monitor|Paws::NetworkFlowMonitor> service. Use the attributes of this class
as arguments to method UpdateMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMonitor.

=head1 SYNOPSIS

    my $networkflowmonitor = Paws->service('NetworkFlowMonitor');
    my $UpdateMonitorOutput = $networkflowmonitor->UpdateMonitor(
      MonitorName         => 'MyResourceName',
      ClientToken         => 'MyUuidString',     # OPTIONAL
      LocalResourcesToAdd => [
        {
          Identifier => 'MyString',
          Type       => 'AWS::EC2::VPC'
          ,    # values: AWS::EC2::VPC, AWS::AvailabilityZone, AWS::EC2::Subnet

        },
        ...
      ],    # OPTIONAL
      LocalResourcesToRemove => [
        {
          Identifier => 'MyString',
          Type       => 'AWS::EC2::VPC'
          ,    # values: AWS::EC2::VPC, AWS::AvailabilityZone, AWS::EC2::Subnet

        },
        ...
      ],    # OPTIONAL
      RemoteResourcesToAdd => [
        {
          Identifier => 'MyString',
          Type       => 'AWS::EC2::VPC'
          , # values: AWS::EC2::VPC, AWS::AvailabilityZone, AWS::EC2::Subnet, AWS::AWSService

        },
        ...
      ],    # OPTIONAL
      RemoteResourcesToRemove => [
        {
          Identifier => 'MyString',
          Type       => 'AWS::EC2::VPC'
          , # values: AWS::EC2::VPC, AWS::AvailabilityZone, AWS::EC2::Subnet, AWS::AWSService

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CreatedAt       = $UpdateMonitorOutput->CreatedAt;
    my $LocalResources  = $UpdateMonitorOutput->LocalResources;
    my $ModifiedAt      = $UpdateMonitorOutput->ModifiedAt;
    my $MonitorArn      = $UpdateMonitorOutput->MonitorArn;
    my $MonitorName     = $UpdateMonitorOutput->MonitorName;
    my $MonitorStatus   = $UpdateMonitorOutput->MonitorStatus;
    my $RemoteResources = $UpdateMonitorOutput->RemoteResources;
    my $Tags            = $UpdateMonitorOutput->Tags;

    # Returns a L<Paws::NetworkFlowMonitor::UpdateMonitorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor/UpdateMonitor>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive string of up to 64 ASCII characters that you
specify to make an idempotent API request. Don't reuse the same client
token for other API requests.



=head2 LocalResourcesToAdd => ArrayRef[L<Paws::NetworkFlowMonitor::MonitorLocalResource>]

The local resources to add, as an array of resources with identifiers
and types.



=head2 LocalResourcesToRemove => ArrayRef[L<Paws::NetworkFlowMonitor::MonitorLocalResource>]

The local resources to remove, as an array of resources with
identifiers and types.



=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.



=head2 RemoteResourcesToAdd => ArrayRef[L<Paws::NetworkFlowMonitor::MonitorRemoteResource>]

The remove resources to add, as an array of resources with identifiers
and types.



=head2 RemoteResourcesToRemove => ArrayRef[L<Paws::NetworkFlowMonitor::MonitorRemoteResource>]

The remove resources to remove, as an array of resources with
identifiers and types.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMonitor in L<Paws::NetworkFlowMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

