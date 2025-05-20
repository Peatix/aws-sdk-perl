
package Paws::Evidently::CreateLaunchResponse;
  use Moose;
  has Launch => (is => 'ro', isa => 'Paws::Evidently::Launch', traits => ['NameInRequest'], request_name => 'launch', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::CreateLaunchResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Launch => L<Paws::Evidently::Launch>

A structure that contains the configuration of the launch that was
created.


=head2 _request_id => Str


=cut

