
package Paws::Inspector2::UpdateEc2DeepInspectionConfigurationResponse;
  use Moose;
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage');
  has OrgPackagePaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'orgPackagePaths');
  has PackagePaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'packagePaths');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::UpdateEc2DeepInspectionConfigurationResponse

=head1 ATTRIBUTES


=head2 ErrorMessage => Str

An error message explaining why new Amazon Inspector deep inspection
custom paths could not be added.


=head2 OrgPackagePaths => ArrayRef[Str|Undef]

The current Amazon Inspector deep inspection custom paths for the
organization.


=head2 PackagePaths => ArrayRef[Str|Undef]

The current Amazon Inspector deep inspection custom paths for your
account.


=head2 Status => Str

The status of Amazon Inspector deep inspection in your account.

Valid values are: C<"ACTIVATED">, C<"DEACTIVATED">, C<"PENDING">, C<"FAILED">
=head2 _request_id => Str


=cut

