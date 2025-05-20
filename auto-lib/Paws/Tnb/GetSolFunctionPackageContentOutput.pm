
package Paws::Tnb::GetSolFunctionPackageContentOutput;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has PackageContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'packageContent');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'PackageContent');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolFunctionPackageContentOutput

=head1 ATTRIBUTES


=head2 ContentType => Str

Indicates the media type of the resource.

Valid values are: C<"application/zip">
=head2 PackageContent => Str

Contents of the function package.


=head2 _request_id => Str


=cut

