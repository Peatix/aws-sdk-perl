package Paws::EC2::AdditionalDetail;
  use Moose;
  has AdditionalDetailType => (is => 'ro', isa => 'Str', request_name => 'additionalDetailType', traits => ['NameInRequest']);
  has Component => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'component', traits => ['NameInRequest']);
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AnalysisComponent]', request_name => 'loadBalancerSet', traits => ['NameInRequest']);
  has RuleGroupRuleOptionsPairs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RuleGroupRuleOptionsPair]', request_name => 'ruleGroupRuleOptionsPairSet', traits => ['NameInRequest']);
  has RuleGroupTypePairs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RuleGroupTypePair]', request_name => 'ruleGroupTypePairSet', traits => ['NameInRequest']);
  has RuleOptions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RuleOption]', request_name => 'ruleOptionSet', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);
  has VpcEndpointService => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'vpcEndpointService', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AdditionalDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AdditionalDetail object:

  $service_obj->Method(Att1 => { AdditionalDetailType => $value, ..., VpcEndpointService => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AdditionalDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalDetailType

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AdditionalDetailType => Str

The additional detail code.


=head2 Component => L<Paws::EC2::AnalysisComponent>

The path component.


=head2 LoadBalancers => ArrayRef[L<Paws::EC2::AnalysisComponent>]

The load balancers.


=head2 RuleGroupRuleOptionsPairs => ArrayRef[L<Paws::EC2::RuleGroupRuleOptionsPair>]

The rule options.


=head2 RuleGroupTypePairs => ArrayRef[L<Paws::EC2::RuleGroupTypePair>]

The rule group type.


=head2 RuleOptions => ArrayRef[L<Paws::EC2::RuleOption>]

The rule options.


=head2 ServiceName => Str

The name of the VPC endpoint service.


=head2 VpcEndpointService => L<Paws::EC2::AnalysisComponent>

The VPC endpoint service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
