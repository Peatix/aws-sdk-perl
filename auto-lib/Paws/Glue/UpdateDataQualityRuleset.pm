
package Paws::Glue::UpdateDataQualityRuleset;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Ruleset => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataQualityRuleset');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateDataQualityRulesetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateDataQualityRuleset - Arguments for method UpdateDataQualityRuleset on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataQualityRuleset on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateDataQualityRuleset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataQualityRuleset.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateDataQualityRulesetResponse = $glue->UpdateDataQualityRuleset(
      Name        => 'MyNameString',
      Description => 'MyDescriptionString',           # OPTIONAL
      Ruleset     => 'MyDataQualityRulesetString',    # OPTIONAL
    );

    # Results:
    my $Description = $UpdateDataQualityRulesetResponse->Description;
    my $Name        = $UpdateDataQualityRulesetResponse->Name;
    my $Ruleset     = $UpdateDataQualityRulesetResponse->Ruleset;

    # Returns a L<Paws::Glue::UpdateDataQualityRulesetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateDataQualityRuleset>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the ruleset.



=head2 B<REQUIRED> Name => Str

The name of the data quality ruleset.



=head2 Ruleset => Str

A Data Quality Definition Language (DQDL) ruleset. For more
information, see the Glue developer guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataQualityRuleset in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

