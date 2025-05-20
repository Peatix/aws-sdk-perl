
package Paws::Backup::ListFrameworksOutput;
  use Moose;
  has Frameworks => (is => 'ro', isa => 'ArrayRef[Paws::Backup::Framework]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListFrameworksOutput

=head1 ATTRIBUTES


=head2 Frameworks => ArrayRef[L<Paws::Backup::Framework>]

The frameworks with details for each framework, including the framework
name, Amazon Resource Name (ARN), description, number of controls,
creation time, and deployment status.


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 _request_id => Str


=cut

