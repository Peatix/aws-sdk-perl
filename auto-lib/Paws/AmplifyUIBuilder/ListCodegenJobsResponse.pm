
package Paws::AmplifyUIBuilder::ListCodegenJobsResponse;
  use Moose;
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::AmplifyUIBuilder::CodegenJobSummary]', traits => ['NameInRequest'], request_name => 'entities', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::ListCodegenJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entities => ArrayRef[L<Paws::AmplifyUIBuilder::CodegenJobSummary>]

The list of code generation jobs for the Amplify app.


=head2 NextToken => Str

The pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

