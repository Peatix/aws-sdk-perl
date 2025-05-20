
package Paws::VPCLattice::UpdateRule;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::VPCLattice::RuleAction', traits => ['NameInRequest'], request_name => 'action');
  has ListenerIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'listenerIdentifier', required => 1);
  has Match => (is => 'ro', isa => 'Paws::VPCLattice::RuleMatch', traits => ['NameInRequest'], request_name => 'match');
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority');
  has RuleIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ruleIdentifier', required => 1);
  has ServiceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::UpdateRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::UpdateRule - Arguments for method UpdateRule on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRule on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method UpdateRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRule.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $UpdateRuleResponse = $vpc -lattice->UpdateRule(
      ListenerIdentifier => 'MyListenerIdentifier',
      RuleIdentifier     => 'MyRuleIdentifier',
      ServiceIdentifier  => 'MyServiceIdentifier',
      Action             => {
        FixedResponse => {
          StatusCode => 1,    # min: 100, max: 599

        },    # OPTIONAL
        Forward => {
          TargetGroups => [
            {
              TargetGroupIdentifier =>
                'MyTargetGroupIdentifier',    # min: 17, max: 2048
              Weight => 1,                    # max: 999; OPTIONAL
            },
            ...
          ],    # min: 1, max: 10

        },    # OPTIONAL
      },    # OPTIONAL
      Match => {
        HttpMatch => {
          HeaderMatches => [
            {
              Match => {
                Contains =>
                  'MyHeaderMatchContains',    # min: 1, max: 200; OPTIONAL
                Exact  => 'MyHeaderMatchExact',     # min: 1, max: 200; OPTIONAL
                Prefix => 'MyHeaderMatchPrefix',    # min: 1, max: 200; OPTIONAL
              },
              Name          => 'MyHeaderMatchName',    # min: 1, max: 100
              CaseSensitive => 1,                      # OPTIONAL
            },
            ...
          ],    # min: 1, max: 5; OPTIONAL
          Method    => 'MyHttpMethod',    # max: 16; OPTIONAL
          PathMatch => {
            Match => {
              Exact  => 'MyPathMatchExact',     # min: 1, max: 200; OPTIONAL
              Prefix => 'MyPathMatchPrefix',    # min: 1, max: 200; OPTIONAL
            },
            CaseSensitive => 1,                 # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Priority => 1,    # OPTIONAL
    );

    # Results:
    my $Action    = $UpdateRuleResponse->Action;
    my $Arn       = $UpdateRuleResponse->Arn;
    my $Id        = $UpdateRuleResponse->Id;
    my $IsDefault = $UpdateRuleResponse->IsDefault;
    my $Match     = $UpdateRuleResponse->Match;
    my $Name      = $UpdateRuleResponse->Name;
    my $Priority  = $UpdateRuleResponse->Priority;

    # Returns a L<Paws::VPCLattice::UpdateRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/UpdateRule>

=head1 ATTRIBUTES


=head2 Action => L<Paws::VPCLattice::RuleAction>

Information about the action for the specified listener rule.



=head2 B<REQUIRED> ListenerIdentifier => Str

The ID or ARN of the listener.



=head2 Match => L<Paws::VPCLattice::RuleMatch>

The rule match.



=head2 Priority => Int

The rule priority. A listener can't have multiple rules with the same
priority.



=head2 B<REQUIRED> RuleIdentifier => Str

The ID or ARN of the rule.



=head2 B<REQUIRED> ServiceIdentifier => Str

The ID or ARN of the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRule in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

