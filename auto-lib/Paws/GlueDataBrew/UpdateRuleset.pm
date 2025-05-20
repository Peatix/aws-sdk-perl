
package Paws::GlueDataBrew::UpdateRuleset;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::Rule]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRuleset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rulesets/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::UpdateRulesetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::UpdateRuleset - Arguments for method UpdateRuleset on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRuleset on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method UpdateRuleset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRuleset.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $UpdateRulesetResponse = $databrew->UpdateRuleset(
      Name  => 'MyRulesetName',
      Rules => [
        {
          CheckExpression => 'MyExpression',    # min: 4, max: 1024
          Name            => 'MyRuleName',      # min: 1, max: 128
          ColumnSelectors => [
            {
              Name  => 'MyColumnName',    # min: 1, max: 255; OPTIONAL
              Regex => 'MyColumnName',    # min: 1, max: 255; OPTIONAL
            },
            ...
          ],    # min: 1; OPTIONAL
          Disabled        => 1,    # OPTIONAL
          SubstitutionMap => {
            'MyValueReference' =>
              'MyConditionValue',    # key: min: 2, max: 128, value: max: 1024
          },    # OPTIONAL
          Threshold => {
            Value => 1,
            Type  => 'GREATER_THAN_OR_EQUAL'
            , # values: GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN; OPTIONAL
            Unit => 'COUNT',    # values: COUNT, PERCENTAGE; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      Description => 'MyRulesetDescription',    # OPTIONAL
    );

    # Results:
    my $Name = $UpdateRulesetResponse->Name;

    # Returns a L<Paws::GlueDataBrew::UpdateRulesetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/UpdateRuleset>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the ruleset.



=head2 B<REQUIRED> Name => Str

The name of the ruleset to be updated.



=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::GlueDataBrew::Rule>]

A list of rules that are defined with the ruleset. A rule includes one
or more checks to be validated on a DataBrew dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRuleset in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

