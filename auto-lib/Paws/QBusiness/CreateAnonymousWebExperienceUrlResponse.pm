
package Paws::QBusiness::CreateAnonymousWebExperienceUrlResponse;
  use Moose;
  has AnonymousUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'anonymousUrl');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreateAnonymousWebExperienceUrlResponse

=head1 ATTRIBUTES


=head2 AnonymousUrl => Str

The unique URL for accessing the web experience.

This URL can only be used once and must be used within 5 minutes after
it's generated.


=head2 _request_id => Str


=cut

