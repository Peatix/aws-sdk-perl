
package Paws::CleanRooms::GetSchemaAnalysisRuleOutput;
  use Moose;
  has AnalysisRule => (is => 'ro', isa => 'Paws::CleanRooms::AnalysisRule', traits => ['NameInRequest'], request_name => 'analysisRule', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetSchemaAnalysisRuleOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisRule => L<Paws::CleanRooms::AnalysisRule>

A specification about how data from the configured table can be used.


=head2 _request_id => Str


=cut

