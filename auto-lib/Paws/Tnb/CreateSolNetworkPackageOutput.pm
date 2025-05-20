
package Paws::Tnb::CreateSolNetworkPackageOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has NsdOnboardingState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdOnboardingState', required => 1);
  has NsdOperationalState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdOperationalState', required => 1);
  has NsdUsageState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdUsageState', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Tnb::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::CreateSolNetworkPackageOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

Network package ARN.


=head2 B<REQUIRED> Id => Str

ID of the network package.


=head2 B<REQUIRED> NsdOnboardingState => Str

Onboarding state of the network service descriptor in the network
package.

Valid values are: C<"CREATED">, C<"ONBOARDED">, C<"ERROR">
=head2 B<REQUIRED> NsdOperationalState => Str

Operational state of the network service descriptor in the network
package.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 B<REQUIRED> NsdUsageState => Str

Usage state of the network service descriptor in the network package.

Valid values are: C<"IN_USE">, C<"NOT_IN_USE">
=head2 Tags => L<Paws::Tnb::TagMap>

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. You can use tags to
search and filter your resources or track your Amazon Web Services
costs.


=head2 _request_id => Str


=cut

