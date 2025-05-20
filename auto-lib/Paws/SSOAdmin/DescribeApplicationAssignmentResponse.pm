
package Paws::SSOAdmin::DescribeApplicationAssignmentResponse;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str');
  has PrincipalId => (is => 'ro', isa => 'Str');
  has PrincipalType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::DescribeApplicationAssignmentResponse

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

Specifies the ARN of the application. For more information about ARNs,
see Amazon Resource Names (ARNs) and Amazon Web Services Service
Namespaces in the I<Amazon Web Services General Reference>.


=head2 PrincipalId => Str

An identifier for an object in IAM Identity Center, such as a user or
group. PrincipalIds are GUIDs (For example,
f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
PrincipalIds in IAM Identity Center, see the IAM Identity Center
Identity Store API Reference
(https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html).


=head2 PrincipalType => Str

The entity type for which the assignment will be created.

Valid values are: C<"USER">, C<"GROUP">
=head2 _request_id => Str


=cut

1;