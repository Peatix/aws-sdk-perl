
package Paws::Tnb::CreateSolFunctionPackageOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has OnboardingState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'onboardingState', required => 1);
  has OperationalState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationalState', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Tnb::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UsageState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'usageState', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::CreateSolFunctionPackageOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

Function package ARN.


=head2 B<REQUIRED> Id => Str

ID of the function package.


=head2 B<REQUIRED> OnboardingState => Str

Onboarding state of the function package.

Valid values are: C<"CREATED">, C<"ONBOARDED">, C<"ERROR">
=head2 B<REQUIRED> OperationalState => Str

Operational state of the function package.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 Tags => L<Paws::Tnb::TagMap>

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. You can use tags to
search and filter your resources or track your Amazon Web Services
costs.


=head2 B<REQUIRED> UsageState => Str

Usage state of the function package.

Valid values are: C<"IN_USE">, C<"NOT_IN_USE">
=head2 _request_id => Str


=cut

