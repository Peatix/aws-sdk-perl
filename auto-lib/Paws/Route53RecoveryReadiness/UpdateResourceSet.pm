
package Paws::Route53RecoveryReadiness::UpdateResourceSet;
  use Moose;
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryReadiness::Resource]', traits => ['NameInRequest'], request_name => 'resources', required => 1);
  has ResourceSetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceSetName', required => 1);
  has ResourceSetType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceSetType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResourceSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resourcesets/{resourceSetName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryReadiness::UpdateResourceSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::UpdateResourceSet - Arguments for method UpdateResourceSet on L<Paws::Route53RecoveryReadiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResourceSet on the
L<AWS Route53 Recovery Readiness|Paws::Route53RecoveryReadiness> service. Use the attributes of this class
as arguments to method UpdateResourceSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResourceSet.

=head1 SYNOPSIS

    my $route53-recovery-readiness = Paws->service('Route53RecoveryReadiness');
    my $UpdateResourceSetResponse =
      $route53 -recovery-readiness->UpdateResourceSet(
      ResourceSetName => 'My__string',
      ResourceSetType => 'My__stringPatternAWSAZaZ09AZaZ09',
      Resources       => [
        {
          ComponentId       => 'My__string',
          DnsTargetResource => {
            DomainName     => 'My__string',
            HostedZoneArn  => 'My__string',
            RecordSetId    => 'My__string',
            RecordType     => 'My__string',
            TargetResource => {
              NLBResource => { Arn => 'My__string', },    # OPTIONAL
              R53Resource => {
                DomainName  => 'My__string',
                RecordSetId => 'My__string',
              },                                          # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          ReadinessScopes => [ 'My__string', ... ],    # OPTIONAL
          ResourceArn     => 'My__string',
        },
        ...
      ],

      );

    # Results:
    my $ResourceSetArn  = $UpdateResourceSetResponse->ResourceSetArn;
    my $ResourceSetName = $UpdateResourceSetResponse->ResourceSetName;
    my $ResourceSetType = $UpdateResourceSetResponse->ResourceSetType;
    my $Resources       = $UpdateResourceSetResponse->Resources;
    my $Tags            = $UpdateResourceSetResponse->Tags;

# Returns a L<Paws::Route53RecoveryReadiness::UpdateResourceSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness/UpdateResourceSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Resources => ArrayRef[L<Paws::Route53RecoveryReadiness::Resource>]

A list of resource objects.



=head2 B<REQUIRED> ResourceSetName => Str

Name of a resource set.



=head2 B<REQUIRED> ResourceSetType => Str

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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResourceSet in L<Paws::Route53RecoveryReadiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

