
package Paws::CodeBuild::ListFleetsOutput;
  use Moose;
  has Fleets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'fleets' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListFleetsOutput

=head1 ATTRIBUTES


=head2 Fleets => ArrayRef[Str|Undef]

The list of compute fleet names.


=head2 NextToken => Str

If there are more than 100 items in the list, only the first 100 items
are returned, along with a unique string called a I<nextToken>. To get
the next batch of items in the list, call this operation again, adding
the next token to the call.


=head2 _request_id => Str


=cut

1;