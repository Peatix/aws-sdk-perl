
package Paws::Route53RecoveryReadiness::GetResourceSetResponse;
  use Moose;
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryReadiness::Resource]', traits => ['NameInRequest'], request_name => 'resources');
  has ResourceSetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceSetArn');
  has ResourceSetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceSetName');
  has ResourceSetType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceSetType');
  has Tags => (is => 'ro', isa => 'Paws::Route53RecoveryReadiness::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::GetResourceSetResponse

=head1 ATTRIBUTES


=head2 Resources => ArrayRef[L<Paws::Route53RecoveryReadiness::Resource>]

A list of resource objects.


=head2 ResourceSetArn => Str

The Amazon Resource Name (ARN) for the resource set.


=head2 ResourceSetName => Str

The name of the resource set.


=head2 ResourceSetType => Str

The resource type of the resources in the resource set. Enter one of
the following values for resource type:

AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage,
AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm,
AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume,
AWS::ElasticLoadBalancing::LoadBalancer,
AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function,
AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck,
AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription,
AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway,
AWS::Route53RecoveryReadiness::DNSTargetResource


=head2 Tags => L<Paws::Route53RecoveryReadiness::Tags>




=head2 _request_id => Str


=cut

