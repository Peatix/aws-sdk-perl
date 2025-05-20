
package Paws::SSOAdmin::GetApplicationAccessScopeResponse;
  use Moose;
  has AuthorizedTargets => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Scope => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::GetApplicationAccessScopeResponse

=head1 ATTRIBUTES


=head2 AuthorizedTargets => ArrayRef[Str|Undef]

An array of authorized targets associated with this access scope.


=head2 B<REQUIRED> Scope => Str

The name of the access scope that can be used with the authorized
targets.


=head2 _request_id => Str


=cut

1;