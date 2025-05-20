
package Paws::Backup::CreateFrameworkOutput;
  use Moose;
  has FrameworkArn => (is => 'ro', isa => 'Str');
  has FrameworkName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CreateFrameworkOutput

=head1 ATTRIBUTES


=head2 FrameworkArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a resource. The
format of the ARN depends on the resource type.


=head2 FrameworkName => Str

The unique name of the framework. The name must be between 1 and 256
characters, starting with a letter, and consisting of letters (a-z,
A-Z), numbers (0-9), and underscores (_).


=head2 _request_id => Str


=cut

