
package Paws::Tnb::GetSolFunctionPackageDescriptorOutput;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has Vnfd => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vnfd');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Vnfd');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolFunctionPackageDescriptorOutput

=head1 ATTRIBUTES


=head2 ContentType => Str

Indicates the media type of the resource.

Valid values are: C<"text/plain">
=head2 Vnfd => Str

Contents of the function package descriptor.


=head2 _request_id => Str


=cut

