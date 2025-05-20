
package Paws::Tnb::GetSolFunctionInstanceOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has InstantiatedVnfInfo => (is => 'ro', isa => 'Paws::Tnb::GetSolVnfInfo', traits => ['NameInRequest'], request_name => 'instantiatedVnfInfo');
  has InstantiationState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instantiationState', required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::Tnb::GetSolFunctionInstanceMetadata', traits => ['NameInRequest'], request_name => 'metadata', required => 1);
  has NsInstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsInstanceId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Tnb::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VnfdId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vnfdId', required => 1);
  has VnfdVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vnfdVersion');
  has VnfPkgId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vnfPkgId', required => 1);
  has VnfProductName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vnfProductName');
  has VnfProvider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vnfProvider');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolFunctionInstanceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

Network function instance ARN.


=head2 B<REQUIRED> Id => Str

Network function instance ID.


=head2 InstantiatedVnfInfo => L<Paws::Tnb::GetSolVnfInfo>




=head2 B<REQUIRED> InstantiationState => Str

Network function instantiation state.

Valid values are: C<"INSTANTIATED">, C<"NOT_INSTANTIATED">
=head2 B<REQUIRED> Metadata => L<Paws::Tnb::GetSolFunctionInstanceMetadata>




=head2 B<REQUIRED> NsInstanceId => Str

Network instance ID.


=head2 Tags => L<Paws::Tnb::TagMap>

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. You can use tags to
search and filter your resources or track your Amazon Web Services
costs.


=head2 B<REQUIRED> VnfdId => Str

Function package descriptor ID.


=head2 VnfdVersion => Str

Function package descriptor version.


=head2 B<REQUIRED> VnfPkgId => Str

Function package ID.


=head2 VnfProductName => Str

Network function product name.


=head2 VnfProvider => Str

Network function provider.


=head2 _request_id => Str


=cut

