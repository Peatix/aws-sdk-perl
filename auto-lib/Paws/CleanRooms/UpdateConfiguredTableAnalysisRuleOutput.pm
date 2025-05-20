
package Paws::CleanRooms::UpdateConfiguredTableAnalysisRuleOutput;
  use Moose;
  has AnalysisRule => (is => 'ro', isa => 'Paws::CleanRooms::ConfiguredTableAnalysisRule', traits => ['NameInRequest'], request_name => 'analysisRule', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::UpdateConfiguredTableAnalysisRuleOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisRule => L<Paws::CleanRooms::ConfiguredTableAnalysisRule>

The entire updated analysis rule.


=head2 _request_id => Str


=cut

