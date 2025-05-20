
package Paws::Tnb::PutSolFunctionPackageContentOutput;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::Tnb::PutSolFunctionPackageContentMetadata', traits => ['NameInRequest'], request_name => 'metadata', required => 1);
  has VnfdId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vnfdId', required => 1);
  has VnfdVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vnfdVersion', required => 1);
  has VnfProductName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vnfProductName', required => 1);
  has VnfProvider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vnfProvider', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::PutSolFunctionPackageContentOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

Function package ID.


=head2 B<REQUIRED> Metadata => L<Paws::Tnb::PutSolFunctionPackageContentMetadata>

Function package metadata.


=head2 B<REQUIRED> VnfdId => Str

Function package descriptor ID.


=head2 B<REQUIRED> VnfdVersion => Str

Function package descriptor version.


=head2 B<REQUIRED> VnfProductName => Str

Function product name.


=head2 B<REQUIRED> VnfProvider => Str

Function provider.


=head2 _request_id => Str


=cut

