
package Paws::Tnb::GetSolFunctionPackageOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::Tnb::GetSolFunctionPackageMetadata', traits => ['NameInRequest'], request_name => 'metadata');
  has OnboardingState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'onboardingState', required => 1);
  has OperationalState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationalState', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Tnb::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UsageState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'usageState', required => 1);
  has VnfdId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vnfdId');
  has VnfdVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vnfdVersion');
  has VnfProductName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vnfProductName');
  has VnfProvider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vnfProvider');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolFunctionPackageOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

Function package ARN.


=head2 B<REQUIRED> Id => Str

Function package ID.


=head2 Metadata => L<Paws::Tnb::GetSolFunctionPackageMetadata>




=head2 B<REQUIRED> OnboardingState => Str

Function package onboarding state.

Valid values are: C<"CREATED">, C<"ONBOARDED">, C<"ERROR">
=head2 B<REQUIRED> OperationalState => Str

Function package operational state.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 Tags => L<Paws::Tnb::TagMap>

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. You can use tags to
search and filter your resources or track your Amazon Web Services
costs.


=head2 B<REQUIRED> UsageState => Str

Function package usage state.

Valid values are: C<"IN_USE">, C<"NOT_IN_USE">
=head2 VnfdId => Str

Function package descriptor ID.


=head2 VnfdVersion => Str

Function package descriptor version.


=head2 VnfProductName => Str

Network function product name.


=head2 VnfProvider => Str

Network function provider.


=head2 _request_id => Str


=cut

