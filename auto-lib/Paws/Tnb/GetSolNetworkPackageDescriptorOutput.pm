
package Paws::Tnb::GetSolNetworkPackageDescriptorOutput;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has Nsd => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsd');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Nsd');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolNetworkPackageDescriptorOutput

=head1 ATTRIBUTES


=head2 ContentType => Str

Indicates the media type of the resource.

Valid values are: C<"text/plain">
=head2 Nsd => Str

Contents of the network service descriptor in the network package.


=head2 _request_id => Str


=cut

