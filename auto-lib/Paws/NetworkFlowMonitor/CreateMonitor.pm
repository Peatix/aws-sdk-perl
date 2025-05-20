
package Paws::NetworkFlowMonitor::CreateMonitor;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has LocalResources => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFlowMonitor::MonitorLocalResource]', traits => ['NameInRequest'], request_name => 'localResources', required => 1);
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'monitorName', required => 1);
  has RemoteResources => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFlowMonitor::MonitorRemoteResource]', traits => ['NameInRequest'], request_name => 'remoteResources');
  has ScopeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scopeArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NetworkFlowMonitor::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMonitor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/monitors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFlowMonitor::CreateMonitorOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::CreateMonitor - Arguments for method CreateMonitor on L<Paws::NetworkFlowMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMonitor on the
L<Network Flow Monitor|Paws::NetworkFlowMonitor> service. Use the attributes of this class
as arguments to method CreateMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMonitor.

=head1 SYNOPSIS

    my $networkflowmonitor = Paws->service('NetworkFlowMonitor');
    my $CreateMonitorOutput = $networkflowmonitor->CreateMonitor(
      LocalResources => [
        {
          Identifier => 'MyString',
          Type       => 'AWS::EC2::VPC'
          ,    # values: AWS::EC2::VPC, AWS::AvailabilityZone, AWS::EC2::Subnet

        },
        ...
      ],
      MonitorName     => 'MyResourceName',
      ScopeArn        => 'MyArn',
      ClientToken     => 'MyUuidString',     # OPTIONAL
      RemoteResources => [
        {
          Identifier => 'MyString',
          Type       => 'AWS::EC2::VPC'
          , # values: AWS::EC2::VPC, AWS::AvailabilityZone, AWS::EC2::Subnet, AWS::AWSService

        },
        ...
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CreatedAt       = $CreateMonitorOutput->CreatedAt;
    my $LocalResources  = $CreateMonitorOutput->LocalResources;
    my $ModifiedAt      = $CreateMonitorOutput->ModifiedAt;
    my $MonitorArn      = $CreateMonitorOutput->MonitorArn;
    my $MonitorName     = $CreateMonitorOutput->MonitorName;
    my $MonitorStatus   = $CreateMonitorOutput->MonitorStatus;
    my $RemoteResources = $CreateMonitorOutput->RemoteResources;
    my $Tags            = $CreateMonitorOutput->Tags;

    # Returns a L<Paws::NetworkFlowMonitor::CreateMonitorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor/CreateMonitor>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive string of up to 64 ASCII characters that you
specify to make an idempotent API request. Don't reuse the same client
token for other API requests.



=head2 B<REQUIRED> LocalResources => ArrayRef[L<Paws::NetworkFlowMonitor::MonitorLocalResource>]

The local resources to monitor. A local resource, in a bi-directional
flow of a workload, is the host where the agent is installed. For
example, if a workload consists of an interaction between a web service
and a backend database (for example, Amazon Relational Database Service
(RDS)), the EC2 instance hosting the web service, which also runs the
agent, is the local resource.



=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.



=head2 RemoteResources => ArrayRef[L<Paws::NetworkFlowMonitor::MonitorRemoteResource>]

The remote resources to monitor. A remote resource is the other
endpoint in the bi-directional flow of a workload, with a local
resource. For example, Amazon Relational Database Service (RDS) can be
a remote resource.



=head2 B<REQUIRED> ScopeArn => Str

The Amazon Resource Name (ARN) of the scope for the monitor.



=head2 Tags => L<Paws::NetworkFlowMonitor::TagMap>

The tags for a monitor. You can add a maximum of 200 tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMonitor in L<Paws::NetworkFlowMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

