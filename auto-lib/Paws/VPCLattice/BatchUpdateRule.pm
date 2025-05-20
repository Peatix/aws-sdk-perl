
package Paws::VPCLattice::BatchUpdateRule;
  use Moose;
  has ListenerIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'listenerIdentifier', required => 1);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::VPCLattice::RuleUpdate]', traits => ['NameInRequest'], request_name => 'rules', required => 1);
  has ServiceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::BatchUpdateRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::BatchUpdateRule - Arguments for method BatchUpdateRule on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateRule on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method BatchUpdateRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateRule.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $BatchUpdateRuleResponse = $vpc -lattice->BatchUpdateRule(
      ListenerIdentifier => 'MyListenerIdentifier',
      Rules              => [
        {
          RuleIdentifier => 'MyRuleIdentifier',    # min: 20, max: 2048
          Action         => {
            FixedResponse => {
              StatusCode => 1,                     # min: 100, max: 599

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
                    Exact  => 'MyHeaderMatchExact', # min: 1, max: 200; OPTIONAL
                    Prefix =>
                      'MyHeaderMatchPrefix',        # min: 1, max: 200; OPTIONAL
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
          Priority => 1,    # min: 1, max: 100; OPTIONAL
        },
        ...
      ],
      ServiceIdentifier => 'MyServiceIdentifier',

    );

    # Results:
    my $Successful   = $BatchUpdateRuleResponse->Successful;
    my $Unsuccessful = $BatchUpdateRuleResponse->Unsuccessful;

    # Returns a L<Paws::VPCLattice::BatchUpdateRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/BatchUpdateRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ListenerIdentifier => Str

The ID or ARN of the listener.



=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::VPCLattice::RuleUpdate>]

The rules for the specified listener.



=head2 B<REQUIRED> ServiceIdentifier => Str

The ID or ARN of the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateRule in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

