
package Paws::Glue::GetDataQualityRuleset;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataQualityRuleset');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetDataQualityRulesetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDataQualityRuleset - Arguments for method GetDataQualityRuleset on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataQualityRuleset on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetDataQualityRuleset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataQualityRuleset.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetDataQualityRulesetResponse = $glue->GetDataQualityRuleset(
      Name => 'MyNameString',

    );

    # Results:
    my $CreatedOn = $GetDataQualityRulesetResponse->CreatedOn;
    my $DataQualitySecurityConfiguration =
      $GetDataQualityRulesetResponse->DataQualitySecurityConfiguration;
    my $Description    = $GetDataQualityRulesetResponse->Description;
    my $LastModifiedOn = $GetDataQualityRulesetResponse->LastModifiedOn;
    my $Name           = $GetDataQualityRulesetResponse->Name;
    my $RecommendationRunId =
      $GetDataQualityRulesetResponse->RecommendationRunId;
    my $Ruleset     = $GetDataQualityRulesetResponse->Ruleset;
    my $TargetTable = $GetDataQualityRulesetResponse->TargetTable;

    # Returns a L<Paws::Glue::GetDataQualityRulesetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetDataQualityRuleset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the ruleset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataQualityRuleset in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

