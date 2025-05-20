
package Paws::M2::GetApplicationResponse;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationArn', required => 1);
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has DeployedVersion => (is => 'ro', isa => 'Paws::M2::DeployedVersionSummary', traits => ['NameInRequest'], request_name => 'deployedVersion');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EngineType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineType', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId');
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');
  has LastStartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastStartTime');
  has LatestVersion => (is => 'ro', isa => 'Paws::M2::ApplicationVersionSummary', traits => ['NameInRequest'], request_name => 'latestVersion', required => 1);
  has ListenerArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'listenerArns');
  has ListenerPorts => (is => 'ro', isa => 'ArrayRef[Int]', traits => ['NameInRequest'], request_name => 'listenerPorts');
  has LoadBalancerDnsName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loadBalancerDnsName');
  has LogGroups => (is => 'ro', isa => 'ArrayRef[Paws::M2::LogGroupSummary]', traits => ['NameInRequest'], request_name => 'logGroups');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');
  has Tags => (is => 'ro', isa => 'Paws::M2::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TargetGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targetGroupArns');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationArn => Str

The Amazon Resource Name (ARN) of the application.


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application.


=head2 B<REQUIRED> CreationTime => Str

The timestamp when this application was created.


=head2 DeployedVersion => L<Paws::M2::DeployedVersionSummary>

The version of the application that is deployed.


=head2 Description => Str

The description of the application.


=head2 B<REQUIRED> EngineType => Str

The type of the target platform for the application.

Valid values are: C<"microfocus">, C<"bluage">
=head2 EnvironmentId => Str

The identifier of the runtime environment where you want to deploy the
application.


=head2 KmsKeyId => Str

The identifier of a customer managed key.


=head2 LastStartTime => Str

The timestamp when you last started the application. Null until the
application runs for the first time.


=head2 B<REQUIRED> LatestVersion => L<Paws::M2::ApplicationVersionSummary>

The latest version of the application.


=head2 ListenerArns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) for the network load balancer listener
created in your Amazon Web Services account. Amazon Web Services
Mainframe Modernization creates this listener for you the first time
you deploy an application.


=head2 ListenerPorts => ArrayRef[Int]

The port associated with the network load balancer listener created in
your Amazon Web Services account.


=head2 LoadBalancerDnsName => Str

The public DNS name of the load balancer created in your Amazon Web
Services account.


=head2 LogGroups => ArrayRef[L<Paws::M2::LogGroupSummary>]

The list of log summaries. Each log summary includes the log type as
well as the log group identifier. These are CloudWatch logs. Amazon Web
Services Mainframe Modernization pushes the application log to
CloudWatch under the customer's account.


=head2 B<REQUIRED> Name => Str

The unique identifier of the application.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role associated with the
application.


=head2 B<REQUIRED> Status => Str

The status of the application.

Valid values are: C<"Creating">, C<"Created">, C<"Available">, C<"Ready">, C<"Starting">, C<"Running">, C<"Stopping">, C<"Stopped">, C<"Failed">, C<"Deleting">, C<"Deleting From Environment">
=head2 StatusReason => Str

The reason for the reported status.


=head2 Tags => L<Paws::M2::TagMap>

A list of tags associated with the application.


=head2 TargetGroupArns => ArrayRef[Str|Undef]

Returns the Amazon Resource Names (ARNs) of the target groups that are
attached to the network load balancer.


=head2 _request_id => Str


=cut

