
package Paws::ECS::DescribeServiceRevisionsResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]', traits => ['NameInRequest'], request_name => 'failures' );
  has ServiceRevisions => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ServiceRevision]', traits => ['NameInRequest'], request_name => 'serviceRevisions' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeServiceRevisionsResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::ECS::Failure>]

Any failures associated with the call.


=head2 ServiceRevisions => ArrayRef[L<Paws::ECS::ServiceRevision>]

The list of service revisions described.


=head2 _request_id => Str


=cut

1;