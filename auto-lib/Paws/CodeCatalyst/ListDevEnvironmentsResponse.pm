
package Paws::CodeCatalyst::ListDevEnvironmentsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CodeCatalyst::DevEnvironmentSummary]', traits => ['NameInRequest'], request_name => 'items', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::ListDevEnvironmentsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[L<Paws::CodeCatalyst::DevEnvironmentSummary>]

Information about the Dev Environments in a project.


=head2 NextToken => Str

A token returned from a call to this API to indicate the next batch of
results to return, if any.


=head2 _request_id => Str


=cut

