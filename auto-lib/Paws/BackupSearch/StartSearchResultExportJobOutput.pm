
package Paws::BackupSearch::StartSearchResultExportJobOutput;
  use Moose;
  has ExportJobArn => (is => 'ro', isa => 'Str');
  has ExportJobIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::StartSearchResultExportJobOutput

=head1 ATTRIBUTES


=head2 ExportJobArn => Str

This is the unique ARN (Amazon Resource Name) that belongs to the new
export job.


=head2 B<REQUIRED> ExportJobIdentifier => Str

This is the unique identifier that specifies the new export job.


=head2 _request_id => Str


=cut

