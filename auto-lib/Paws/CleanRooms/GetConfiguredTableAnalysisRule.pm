
package Paws::CleanRooms::GetConfiguredTableAnalysisRule;
  use Moose;
  has AnalysisRuleType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'analysisRuleType', required => 1);
  has ConfiguredTableIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredTableIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConfiguredTableAnalysisRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::GetConfiguredTableAnalysisRuleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetConfiguredTableAnalysisRule - Arguments for method GetConfiguredTableAnalysisRule on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfiguredTableAnalysisRule on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method GetConfiguredTableAnalysisRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfiguredTableAnalysisRule.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $GetConfiguredTableAnalysisRuleOutput =
      $cleanrooms->GetConfiguredTableAnalysisRule(
      AnalysisRuleType          => 'AGGREGATION',
      ConfiguredTableIdentifier => 'MyConfiguredTableIdentifier',

      );

    # Results:
    my $AnalysisRule = $GetConfiguredTableAnalysisRuleOutput->AnalysisRule;

   # Returns a L<Paws::CleanRooms::GetConfiguredTableAnalysisRuleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/GetConfiguredTableAnalysisRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisRuleType => Str

The analysis rule to be retrieved. Configured table analysis rules are
uniquely identified by their configured table identifier and analysis
rule type.

Valid values are: C<"AGGREGATION">, C<"LIST">, C<"CUSTOM">

=head2 B<REQUIRED> ConfiguredTableIdentifier => Str

The unique identifier for the configured table to retrieve. Currently
accepts the configured table ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfiguredTableAnalysisRule in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

