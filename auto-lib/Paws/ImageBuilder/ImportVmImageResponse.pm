
package Paws::ImageBuilder::ImportVmImageResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ImageArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageArn');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ImportVmImageResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token that uniquely identifies the request.


=head2 ImageArn => Str

The Amazon Resource Name (ARN) of the AMI that was created during the
VM import process. This AMI is used as the base image for the recipe
that imported the VM.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

