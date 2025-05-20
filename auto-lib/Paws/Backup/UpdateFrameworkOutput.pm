
package Paws::Backup::UpdateFrameworkOutput;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has FrameworkArn => (is => 'ro', isa => 'Str');
  has FrameworkName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::UpdateFrameworkOutput

=head1 ATTRIBUTES


=head2 CreationTime => Str

The date and time that a framework is created, in ISO 8601
representation. The value of C<CreationTime> is accurate to
milliseconds. For example, 2020-07-10T15:00:00.000-08:00 represents the
10th of July 2020 at 3:00 PM 8 hours behind UTC.


=head2 FrameworkArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a resource. The
format of the ARN depends on the resource type.


=head2 FrameworkName => Str

The unique name of a framework. This name is between 1 and 256
characters, starting with a letter, and consisting of letters (a-z,
A-Z), numbers (0-9), and underscores (_).


=head2 _request_id => Str


=cut

