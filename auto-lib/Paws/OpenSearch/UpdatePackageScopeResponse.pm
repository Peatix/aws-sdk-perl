
package Paws::OpenSearch::UpdatePackageScopeResponse;
  use Moose;
  has Operation => (is => 'ro', isa => 'Str');
  has PackageID => (is => 'ro', isa => 'Str');
  has PackageUserList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::UpdatePackageScopeResponse

=head1 ATTRIBUTES


=head2 Operation => Str

The operation that was performed on the package scope.

Valid values are: C<"ADD">, C<"OVERRIDE">, C<"REMOVE">
=head2 PackageID => Str

ID of the package whose scope was updated.


=head2 PackageUserList => ArrayRef[Str|Undef]

List of users who have access to the package after the scope update.


=head2 _request_id => Str


=cut

