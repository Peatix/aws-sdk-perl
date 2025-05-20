
package Paws::CleanRoomsML::CreateAudienceModelResponse;
  use Moose;
  has AudienceModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'audienceModelArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::CreateAudienceModelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AudienceModelArn => Str

The Amazon Resource Name (ARN) of the audience model.


=head2 _request_id => Str


=cut

