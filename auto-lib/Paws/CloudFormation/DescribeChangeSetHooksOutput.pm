
package Paws::CloudFormation::DescribeChangeSetHooksOutput;
  use Moose;
  has ChangeSetId => (is => 'ro', isa => 'Str');
  has ChangeSetName => (is => 'ro', isa => 'Str');
  has Hooks => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ChangeSetHook]');
  has NextToken => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeChangeSetHooksOutput

=head1 ATTRIBUTES


=head2 ChangeSetId => Str

The change set identifier (stack ID).


=head2 ChangeSetName => Str

The change set name.


=head2 Hooks => ArrayRef[L<Paws::CloudFormation::ChangeSetHook>]

List of hook objects.


=head2 NextToken => Str

Pagination token, C<null> or empty if no more results.


=head2 StackId => Str

The stack identifier (stack ID).


=head2 StackName => Str

The stack name.


=head2 Status => Str

Provides the status of the change set hook.

Valid values are: C<"PLANNING">, C<"PLANNED">, C<"UNAVAILABLE">
=head2 _request_id => Str


=cut

