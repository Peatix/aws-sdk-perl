
package Paws::AccessAnalyzer::UpdateAnalyzerResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::AccessAnalyzer::AnalyzerConfiguration', traits => ['NameInRequest'], request_name => 'configuration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::UpdateAnalyzerResponse

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::AccessAnalyzer::AnalyzerConfiguration>




=head2 _request_id => Str


=cut

