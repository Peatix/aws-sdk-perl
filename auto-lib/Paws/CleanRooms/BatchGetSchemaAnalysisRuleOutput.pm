
package Paws::CleanRooms::BatchGetSchemaAnalysisRuleOutput;
  use Moose;
  has AnalysisRules => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::AnalysisRule]', traits => ['NameInRequest'], request_name => 'analysisRules', required => 1);
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::BatchGetSchemaAnalysisRuleError]', traits => ['NameInRequest'], request_name => 'errors', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::BatchGetSchemaAnalysisRuleOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisRules => ArrayRef[L<Paws::CleanRooms::AnalysisRule>]

The retrieved list of analysis rules.


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::CleanRooms::BatchGetSchemaAnalysisRuleError>]

Error reasons for schemas that could not be retrieved. One error is
returned for every schema that could not be retrieved.


=head2 _request_id => Str


=cut

