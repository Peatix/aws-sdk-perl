
package Paws::QBusiness::CreateWebExperienceResponse;
  use Moose;
  has WebExperienceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'webExperienceArn');
  has WebExperienceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'webExperienceId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreateWebExperienceResponse

=head1 ATTRIBUTES


=head2 WebExperienceArn => Str

The Amazon Resource Name (ARN) of an Amazon Q Business web experience.


=head2 WebExperienceId => Str

The identifier of the Amazon Q Business web experience.


=head2 _request_id => Str


=cut

