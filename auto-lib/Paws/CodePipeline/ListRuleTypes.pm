
package Paws::CodePipeline::ListRuleTypes;
  use Moose;
  has RegionFilter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regionFilter' );
  has RuleOwnerFilter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ruleOwnerFilter' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRuleTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::ListRuleTypesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListRuleTypes - Arguments for method ListRuleTypes on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRuleTypes on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method ListRuleTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRuleTypes.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $ListRuleTypesOutput = $codepipeline->ListRuleTypes(
      RegionFilter    => 'MyAWSRegionName',    # OPTIONAL
      RuleOwnerFilter => 'AWS',                # OPTIONAL
    );

    # Results:
    my $RuleTypes = $ListRuleTypesOutput->RuleTypes;

    # Returns a L<Paws::CodePipeline::ListRuleTypesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/ListRuleTypes>

=head1 ATTRIBUTES


=head2 RegionFilter => Str

The rule Region to filter on.



=head2 RuleOwnerFilter => Str

The rule owner to filter on.

Valid values are: C<"AWS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRuleTypes in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

