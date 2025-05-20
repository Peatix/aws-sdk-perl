
package Paws::BackupSearch::GetSearchResultExportJobOutput;
  use Moose;
  has CompletionTime => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has ExportJobArn => (is => 'ro', isa => 'Str');
  has ExportJobIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ExportSpecification => (is => 'ro', isa => 'Paws::BackupSearch::ExportSpecification');
  has SearchJobArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::GetSearchResultExportJobOutput

=head1 ATTRIBUTES


=head2 CompletionTime => Str

The date and time that an export job completed, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationTime> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CreationTime => Str

The date and time that an export job was created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationTime> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 ExportJobArn => Str

The unique Amazon Resource Name (ARN) that uniquely identifies the
export job.


=head2 B<REQUIRED> ExportJobIdentifier => Str

This is the unique string that identifies the specified export job.


=head2 ExportSpecification => L<Paws::BackupSearch::ExportSpecification>

The export specification consists of the destination S3 bucket to which
the search results were exported, along with the destination prefix.


=head2 SearchJobArn => Str

The unique string that identifies the Amazon Resource Name (ARN) of the
specified search job.


=head2 Status => Str

This is the current status of the export job.

Valid values are: C<"RUNNING">, C<"FAILED">, C<"COMPLETED">
=head2 StatusMessage => Str

A status message is a string that is returned for search job with a
status of C<FAILED>, along with steps to remedy and retry the
operation.


=head2 _request_id => Str


=cut

