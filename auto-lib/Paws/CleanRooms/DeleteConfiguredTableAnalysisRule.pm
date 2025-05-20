
package Paws::CleanRooms::DeleteConfiguredTableAnalysisRule;
  use Moose;
  has AnalysisRuleType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'analysisRuleType', required => 1);
  has ConfiguredTableIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredTableIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConfiguredTableAnalysisRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::DeleteConfiguredTableAnalysisRuleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::DeleteConfiguredTableAnalysisRule - Arguments for method DeleteConfiguredTableAnalysisRule on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConfiguredTableAnalysisRule on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method DeleteConfiguredTableAnalysisRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConfiguredTableAnalysisRule.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $DeleteConfiguredTableAnalysisRuleOutput =
      $cleanrooms->DeleteConfiguredTableAnalysisRule(
      AnalysisRuleType          => 'AGGREGATION',
      ConfiguredTableIdentifier => 'MyConfiguredTableIdentifier',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/DeleteConfiguredTableAnalysisRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisRuleType => Str

The analysis rule type to be deleted. Configured table analysis rules
are uniquely identified by their configured table identifier and
analysis rule type.

Valid values are: C<"AGGREGATION">, C<"LIST">, C<"CUSTOM">

=head2 B<REQUIRED> ConfiguredTableIdentifier => Str

The unique identifier for the configured table that the analysis rule
applies to. Currently accepts the configured table ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConfiguredTableAnalysisRule in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

