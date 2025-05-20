
package Paws::VPCLattice::CreateRule;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::VPCLattice::RuleAction', traits => ['NameInRequest'], request_name => 'action', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ListenerIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'listenerIdentifier', required => 1);
  has Match => (is => 'ro', isa => 'Paws::VPCLattice::RuleMatch', traits => ['NameInRequest'], request_name => 'match', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority', required => 1);
  has ServiceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceIdentifier', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::VPCLattice::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::CreateRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::CreateRule - Arguments for method CreateRule on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRule on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method CreateRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRule.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $CreateRuleResponse = $vpc -lattice->CreateRule(
      Action => {
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
      },
      ListenerIdentifier => 'MyListenerIdentifier',
      Match              => {
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
      },
      Name              => 'MyRuleName',
      Priority          => 1,
      ServiceIdentifier => 'MyServiceIdentifier',
      ClientToken       => 'MyClientToken',         # OPTIONAL
      Tags              => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Action   = $CreateRuleResponse->Action;
    my $Arn      = $CreateRuleResponse->Arn;
    my $Id       = $CreateRuleResponse->Id;
    my $Match    = $CreateRuleResponse->Match;
    my $Name     = $CreateRuleResponse->Name;
    my $Priority = $CreateRuleResponse->Priority;

    # Returns a L<Paws::VPCLattice::CreateRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/CreateRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => L<Paws::VPCLattice::RuleAction>

The action for the default rule.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you retry a request that completed
successfully using the same client token and parameters, the retry
succeeds without performing any actions. If the parameters aren't
identical, the retry fails.



=head2 B<REQUIRED> ListenerIdentifier => Str

The ID or ARN of the listener.



=head2 B<REQUIRED> Match => L<Paws::VPCLattice::RuleMatch>

The rule match.



=head2 B<REQUIRED> Name => Str

The name of the rule. The name must be unique within the listener. The
valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen
as the first or last character, or immediately after another hyphen.



=head2 B<REQUIRED> Priority => Int

The priority assigned to the rule. Each rule for a specific listener
must have a unique priority. The lower the priority number the higher
the priority.



=head2 B<REQUIRED> ServiceIdentifier => Str

The ID or ARN of the service.



=head2 Tags => L<Paws::VPCLattice::TagMap>

The tags for the rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRule in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

