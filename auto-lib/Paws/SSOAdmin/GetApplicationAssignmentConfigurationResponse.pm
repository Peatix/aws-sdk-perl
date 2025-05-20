
package Paws::SSOAdmin::GetApplicationAssignmentConfigurationResponse;
  use Moose;
  has AssignmentRequired => (is => 'ro', isa => 'Bool', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::GetApplicationAssignmentConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssignmentRequired => Bool

If C<AssignmentsRequired> is C<true> (default value), users
donE<rsquo>t have access to the application unless an assignment is
created using the CreateApplicationAssignment API
(https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html).
If C<false>, all users have access to the application.


=head2 _request_id => Str


=cut

1;