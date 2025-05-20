
package Paws::Tnb::GetSolNetworkPackageOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::Tnb::GetSolNetworkPackageMetadata', traits => ['NameInRequest'], request_name => 'metadata', required => 1);
  has NsdId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdId', required => 1);
  has NsdName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdName', required => 1);
  has NsdOnboardingState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdOnboardingState', required => 1);
  has NsdOperationalState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdOperationalState', required => 1);
  has NsdUsageState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdUsageState', required => 1);
  has NsdVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdVersion', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Tnb::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VnfPkgIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'vnfPkgIds', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolNetworkPackageOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

Network package ARN.


=head2 B<REQUIRED> Id => Str

Network package ID.


=head2 B<REQUIRED> Metadata => L<Paws::Tnb::GetSolNetworkPackageMetadata>




=head2 B<REQUIRED> NsdId => Str

Network service descriptor ID.


=head2 B<REQUIRED> NsdName => Str

Network service descriptor name.


=head2 B<REQUIRED> NsdOnboardingState => Str

Network service descriptor onboarding state.

Valid values are: C<"CREATED">, C<"ONBOARDED">, C<"ERROR">
=head2 B<REQUIRED> NsdOperationalState => Str

Network service descriptor operational state.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 B<REQUIRED> NsdUsageState => Str

Network service descriptor usage state.

Valid values are: C<"IN_USE">, C<"NOT_IN_USE">
=head2 B<REQUIRED> NsdVersion => Str

Network service descriptor version.


=head2 Tags => L<Paws::Tnb::TagMap>

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. You can use tags to
search and filter your resources or track your Amazon Web Services
costs.


=head2 B<REQUIRED> VnfPkgIds => ArrayRef[Str|Undef]

Identifies the function package for the function package descriptor
referenced by the onboarded network package.


=head2 _request_id => Str


=cut

