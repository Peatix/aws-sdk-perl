
package Paws::CleanRoomsML::StartAudienceGenerationJobResponse;
  use Moose;
  has AudienceGenerationJobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'audienceGenerationJobArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::StartAudienceGenerationJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AudienceGenerationJobArn => Str

The Amazon Resource Name (ARN) of the audience generation job.


=head2 _request_id => Str


=cut

