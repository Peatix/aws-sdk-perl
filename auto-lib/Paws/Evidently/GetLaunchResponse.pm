
package Paws::Evidently::GetLaunchResponse;
  use Moose;
  has Launch => (is => 'ro', isa => 'Paws::Evidently::Launch', traits => ['NameInRequest'], request_name => 'launch');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::GetLaunchResponse

=head1 ATTRIBUTES


=head2 Launch => L<Paws::Evidently::Launch>

A structure containing the configuration details of the launch.


=head2 _request_id => Str


=cut

