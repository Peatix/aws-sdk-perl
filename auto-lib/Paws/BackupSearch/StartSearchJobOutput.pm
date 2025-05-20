
package Paws::BackupSearch::StartSearchJobOutput;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has SearchJobArn => (is => 'ro', isa => 'Str');
  has SearchJobIdentifier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::StartSearchJobOutput

=head1 ATTRIBUTES


=head2 CreationTime => Str

The date and time that a job was created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CompletionTime> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 SearchJobArn => Str

The unique string that identifies the Amazon Resource Name (ARN) of the
specified search job.


=head2 SearchJobIdentifier => Str

The unique string that specifies the search job.


=head2 _request_id => Str


=cut

