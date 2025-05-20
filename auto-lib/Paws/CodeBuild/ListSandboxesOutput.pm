
package Paws::CodeBuild::ListSandboxesOutput;
  use Moose;
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ids' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListSandboxesOutput

=head1 ATTRIBUTES


=head2 Ids => ArrayRef[Str|Undef]

Information about the requested sandbox IDs.


=head2 NextToken => Str

Information about the next token to get paginated results.


=head2 _request_id => Str


=cut

1;