
package Paws::CleanRooms::DeleteConfiguredTableAssociationAnalysisRule;
  use Moose;
  has AnalysisRuleType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'analysisRuleType', required => 1);
  has ConfiguredTableAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredTableAssociationIdentifier', required => 1);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConfiguredTableAssociationAnalysisRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::DeleteConfiguredTableAssociationAnalysisRuleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::DeleteConfiguredTableAssociationAnalysisRule - Arguments for method DeleteConfiguredTableAssociationAnalysisRule on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConfiguredTableAssociationAnalysisRule on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method DeleteConfiguredTableAssociationAnalysisRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConfiguredTableAssociationAnalysisRule.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $DeleteConfiguredTableAssociationAnalysisRuleOutput =
      $cleanrooms->DeleteConfiguredTableAssociationAnalysisRule(
      AnalysisRuleType                     => 'AGGREGATION',
      ConfiguredTableAssociationIdentifier =>
        'MyConfiguredTableAssociationIdentifier',
      MembershipIdentifier => 'MyMembershipIdentifier',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/DeleteConfiguredTableAssociationAnalysisRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisRuleType => Str

The type of the analysis rule that you want to delete.

Valid values are: C<"AGGREGATION">, C<"LIST">, C<"CUSTOM">

=head2 B<REQUIRED> ConfiguredTableAssociationIdentifier => Str

The identier for the congured table association that's related to the
analysis rule that you want to delete.



=head2 B<REQUIRED> MembershipIdentifier => Str

A unique identifier for the membership that the configured table
association belongs to. Currently accepts the membership ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConfiguredTableAssociationAnalysisRule in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

