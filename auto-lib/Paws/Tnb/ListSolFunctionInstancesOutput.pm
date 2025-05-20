
package Paws::Tnb::ListSolFunctionInstancesOutput;
  use Moose;
  has FunctionInstances => (is => 'ro', isa => 'ArrayRef[Paws::Tnb::ListSolFunctionInstanceInfo]', traits => ['NameInRequest'], request_name => 'functionInstances');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::ListSolFunctionInstancesOutput

=head1 ATTRIBUTES


=head2 FunctionInstances => ArrayRef[L<Paws::Tnb::ListSolFunctionInstanceInfo>]

Network function instances.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

