
package Paws::CleanRooms::CreateAnalysisTemplateOutput;
  use Moose;
  has AnalysisTemplate => (is => 'ro', isa => 'Paws::CleanRooms::AnalysisTemplate', traits => ['NameInRequest'], request_name => 'analysisTemplate', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreateAnalysisTemplateOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisTemplate => L<Paws::CleanRooms::AnalysisTemplate>

The analysis template.


=head2 _request_id => Str


=cut

