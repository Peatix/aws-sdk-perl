
package Paws::M2::UpdateApplicationResponse;
  use Moose;
  has ApplicationVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'applicationVersion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::UpdateApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationVersion => Int

The new version of the application.


=head2 _request_id => Str


=cut

