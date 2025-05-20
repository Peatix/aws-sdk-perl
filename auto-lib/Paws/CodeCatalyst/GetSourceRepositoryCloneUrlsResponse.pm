
package Paws::CodeCatalyst::GetSourceRepositoryCloneUrlsResponse;
  use Moose;
  has Https => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'https', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::GetSourceRepositoryCloneUrlsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Https => Str

The HTTPS URL to use when cloning the source repository.


=head2 _request_id => Str


=cut

