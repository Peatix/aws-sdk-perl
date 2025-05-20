
package Paws::Tnb::GetSolNetworkPackageContentOutput;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has NsdContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdContent');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'NsdContent');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolNetworkPackageContentOutput

=head1 ATTRIBUTES


=head2 ContentType => Str

Indicates the media type of the resource.

Valid values are: C<"application/zip">
=head2 NsdContent => Str

Content of the network service descriptor in the network package.


=head2 _request_id => Str


=cut

