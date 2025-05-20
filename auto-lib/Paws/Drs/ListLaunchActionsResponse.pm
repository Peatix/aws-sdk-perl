
package Paws::Drs::ListLaunchActionsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::Drs::LaunchAction]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::ListLaunchActionsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::Drs::LaunchAction>]

List of resource launch actions.


=head2 NextToken => Str

Next token returned when listing resource launch actions.


=head2 _request_id => Str


=cut

