
package Paws::QApps::PredictQAppOutput;
  use Moose;
  has App => (is => 'ro', isa => 'Paws::QApps::PredictAppDefinition', traits => ['NameInRequest'], request_name => 'app', required => 1);
  has ProblemStatement => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'problemStatement', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::PredictQAppOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> App => L<Paws::QApps::PredictAppDefinition>

The generated Q App definition.


=head2 B<REQUIRED> ProblemStatement => Str

The problem statement extracted from the input conversation, if
provided.


=head2 _request_id => Str


=cut

