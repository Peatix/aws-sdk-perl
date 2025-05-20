
package Paws::CleanRooms::UpdateConfiguredTableAssociationAnalysisRuleOutput;
  use Moose;
  has AnalysisRule => (is => 'ro', isa => 'Paws::CleanRooms::ConfiguredTableAssociationAnalysisRule', traits => ['NameInRequest'], request_name => 'analysisRule', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::UpdateConfiguredTableAssociationAnalysisRuleOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisRule => L<Paws::CleanRooms::ConfiguredTableAssociationAnalysisRule>

The updated analysis rule for the congured table association. In the
console, the C<ConfiguredTableAssociationAnalysisRule> is referred to
as the I<collaboration analysis rule>.


=head2 _request_id => Str


=cut

