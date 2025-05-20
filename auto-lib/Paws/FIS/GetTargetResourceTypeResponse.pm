
package Paws::FIS::GetTargetResourceTypeResponse;
  use Moose;
  has TargetResourceType => (is => 'ro', isa => 'Paws::FIS::TargetResourceType', traits => ['NameInRequest'], request_name => 'targetResourceType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::GetTargetResourceTypeResponse

=head1 ATTRIBUTES


=head2 TargetResourceType => L<Paws::FIS::TargetResourceType>

Information about the resource type.


=head2 _request_id => Str


=cut

