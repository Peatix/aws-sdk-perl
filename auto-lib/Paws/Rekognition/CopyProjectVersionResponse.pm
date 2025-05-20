
package Paws::Rekognition::CopyProjectVersionResponse;
  use Moose;
  has ProjectVersionArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CopyProjectVersionResponse

=head1 ATTRIBUTES


=head2 ProjectVersionArn => Str

The ARN of the copied model version in the destination project.


=head2 _request_id => Str


=cut

1;