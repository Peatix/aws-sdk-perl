
package Paws::FraudDetector::GetListElementsResult;
  use Moose;
  has Elements => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'elements' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetListElementsResult

=head1 ATTRIBUTES


=head2 Elements => ArrayRef[Str|Undef]

The list elements.


=head2 NextToken => Str

The next page token.


=head2 _request_id => Str


=cut

1;