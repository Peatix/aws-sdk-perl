
package Paws::SageMakerGeospatial::GetTileOutput;
  use Moose;
  has BinaryFile => (is => 'ro', isa => 'Str');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'BinaryFile');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::GetTileOutput

=head1 ATTRIBUTES


=head2 BinaryFile => Str

The output binary file.


=head2 _request_id => Str


=cut

