
package Paws::GlueDataBrew::DeleteRuleset;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRuleset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rulesets/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::DeleteRulesetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DeleteRuleset - Arguments for method DeleteRuleset on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRuleset on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method DeleteRuleset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRuleset.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $DeleteRulesetResponse = $databrew->DeleteRuleset(
      Name => 'MyRulesetName',

    );

    # Results:
    my $Name = $DeleteRulesetResponse->Name;

    # Returns a L<Paws::GlueDataBrew::DeleteRulesetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/DeleteRuleset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the ruleset to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRuleset in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

