
package Paws::CleanRooms::CreateConfiguredTableAssociationAnalysisRule;
  use Moose;
  has AnalysisRulePolicy => (is => 'ro', isa => 'Paws::CleanRooms::ConfiguredTableAssociationAnalysisRulePolicy', traits => ['NameInRequest'], request_name => 'analysisRulePolicy', required => 1);
  has AnalysisRuleType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'analysisRuleType', required => 1);
  has ConfiguredTableAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredTableAssociationIdentifier', required => 1);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfiguredTableAssociationAnalysisRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::CreateConfiguredTableAssociationAnalysisRuleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreateConfiguredTableAssociationAnalysisRule - Arguments for method CreateConfiguredTableAssociationAnalysisRule on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfiguredTableAssociationAnalysisRule on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method CreateConfiguredTableAssociationAnalysisRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfiguredTableAssociationAnalysisRule.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $CreateConfiguredTableAssociationAnalysisRuleOutput =
      $cleanrooms->CreateConfiguredTableAssociationAnalysisRule(
      AnalysisRulePolicy => {
        V1 => {
          Aggregation => {
            AllowedAdditionalAnalyses => [
              'MyAdditionalAnalysesResourceArn', ...    # max: 256
            ],    # max: 25; OPTIONAL
            AllowedResultReceivers => [
              'MyAccountId', ...    # min: 12, max: 12
            ],    # OPTIONAL
          },    # OPTIONAL
          Custom => {
            AllowedAdditionalAnalyses => [
              'MyAdditionalAnalysesResourceArn', ...    # max: 256
            ],    # max: 25; OPTIONAL
            AllowedResultReceivers => [
              'MyAccountId', ...    # min: 12, max: 12
            ],    # OPTIONAL
          },    # OPTIONAL
          List => {
            AllowedAdditionalAnalyses => [
              'MyAdditionalAnalysesResourceArn', ...    # max: 256
            ],    # max: 25; OPTIONAL
            AllowedResultReceivers => [
              'MyAccountId', ...    # min: 12, max: 12
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      AnalysisRuleType                     => 'AGGREGATION',
      ConfiguredTableAssociationIdentifier =>
        'MyConfiguredTableAssociationIdentifier',
      MembershipIdentifier => 'MyMembershipIdentifier',

      );

    # Results:
    my $AnalysisRule =
      $CreateConfiguredTableAssociationAnalysisRuleOutput->AnalysisRule;

# Returns a L<Paws::CleanRooms::CreateConfiguredTableAssociationAnalysisRuleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/CreateConfiguredTableAssociationAnalysisRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisRulePolicy => L<Paws::CleanRooms::ConfiguredTableAssociationAnalysisRulePolicy>

The analysis rule policy that was created for the configured table
association.



=head2 B<REQUIRED> AnalysisRuleType => Str

The type of analysis rule.

Valid values are: C<"AGGREGATION">, C<"LIST">, C<"CUSTOM">

=head2 B<REQUIRED> ConfiguredTableAssociationIdentifier => Str

The unique ID for the configured table association. Currently accepts
the configured table association ID.



=head2 B<REQUIRED> MembershipIdentifier => Str

A unique identifier for the membership that the configured table
association belongs to. Currently accepts the membership ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfiguredTableAssociationAnalysisRule in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

