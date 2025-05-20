
package Paws::ImageBuilder::ImportDiskImageResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ImageBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageBuildVersionArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ImportDiskImageResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token that uniquely identifies the request.


=head2 ImageBuildVersionArn => Str

The Amazon Resource Name (ARN) of the output AMI that was created from
the ISO disk file.


=head2 _request_id => Str


=cut

