
package Paws::VPCLattice::GetRule;
  use Moose;
  has ListenerIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'listenerIdentifier', required => 1);
  has RuleIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ruleIdentifier', required => 1);
  has ServiceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::GetRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetRule - Arguments for method GetRule on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRule on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method GetRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRule.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $GetRuleResponse = $vpc -lattice->GetRule(
      ListenerIdentifier => 'MyListenerIdentifier',
      RuleIdentifier     => 'MyRuleIdentifier',
      ServiceIdentifier  => 'MyServiceIdentifier',

    );

    # Results:
    my $Action        = $GetRuleResponse->Action;
    my $Arn           = $GetRuleResponse->Arn;
    my $CreatedAt     = $GetRuleResponse->CreatedAt;
    my $Id            = $GetRuleResponse->Id;
    my $IsDefault     = $GetRuleResponse->IsDefault;
    my $LastUpdatedAt = $GetRuleResponse->LastUpdatedAt;
    my $Match         = $GetRuleResponse->Match;
    my $Name          = $GetRuleResponse->Name;
    my $Priority      = $GetRuleResponse->Priority;

    # Returns a L<Paws::VPCLattice::GetRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/GetRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ListenerIdentifier => Str

The ID or ARN of the listener.



=head2 B<REQUIRED> RuleIdentifier => Str

The ID or ARN of the listener rule.



=head2 B<REQUIRED> ServiceIdentifier => Str

The ID or ARN of the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRule in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

