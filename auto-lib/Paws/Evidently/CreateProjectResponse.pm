
package Paws::Evidently::CreateProjectResponse;
  use Moose;
  has Project => (is => 'ro', isa => 'Paws::Evidently::Project', traits => ['NameInRequest'], request_name => 'project', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::CreateProjectResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Project => L<Paws::Evidently::Project>

A structure that contains information about the created project.


=head2 _request_id => Str


=cut

