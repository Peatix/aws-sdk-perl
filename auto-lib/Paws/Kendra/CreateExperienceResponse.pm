
package Paws::Kendra::CreateExperienceResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::CreateExperienceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of your Amazon Kendra experience.


=head2 _request_id => Str


=cut

1;