
package Paws::Tnb::ValidateSolNetworkPackageContentOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::Tnb::ValidateSolNetworkPackageContentMetadata', traits => ['NameInRequest'], request_name => 'metadata', required => 1);
  has NsdId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdId', required => 1);
  has NsdName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdName', required => 1);
  has NsdVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdVersion', required => 1);
  has VnfPkgIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'vnfPkgIds', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::ValidateSolNetworkPackageContentOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

Network package ARN.


=head2 B<REQUIRED> Id => Str

Network package ID.


=head2 B<REQUIRED> Metadata => L<Paws::Tnb::ValidateSolNetworkPackageContentMetadata>

Network package metadata.


=head2 B<REQUIRED> NsdId => Str

Network service descriptor ID.


=head2 B<REQUIRED> NsdName => Str

Network service descriptor name.


=head2 B<REQUIRED> NsdVersion => Str

Network service descriptor version.


=head2 B<REQUIRED> VnfPkgIds => ArrayRef[Str|Undef]

Function package IDs.


=head2 _request_id => Str


=cut

