
package Paws::Translate::GetTerminologyResponse;
  use Moose;
  has AuxiliaryDataLocation => (is => 'ro', isa => 'Paws::Translate::TerminologyDataLocation');
  has TerminologyDataLocation => (is => 'ro', isa => 'Paws::Translate::TerminologyDataLocation');
  has TerminologyProperties => (is => 'ro', isa => 'Paws::Translate::TerminologyProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::GetTerminologyResponse

=head1 ATTRIBUTES


=head2 AuxiliaryDataLocation => L<Paws::Translate::TerminologyDataLocation>

The Amazon S3 location of a file that provides any errors or warnings
that were produced by your input file. This file was created when
Amazon Translate attempted to create a terminology resource. The
location is returned as a presigned URL to that has a 30-minute
expiration.


=head2 TerminologyDataLocation => L<Paws::Translate::TerminologyDataLocation>

The Amazon S3 location of the most recent custom terminology input file
that was successfully imported into Amazon Translate. The location is
returned as a presigned URL that has a 30-minute expiration.

Amazon Translate doesn't scan all input files for the risk of CSV
injection attacks.

CSV injection occurs when a .csv or .tsv file is altered so that a
record contains malicious code. The record begins with a special
character, such as =, +, -, or @. When the file is opened in a
spreadsheet program, the program might interpret the record as a
formula and run the code within it.

Before you download an input file from Amazon S3, ensure that you
recognize the file and trust its creator.


=head2 TerminologyProperties => L<Paws::Translate::TerminologyProperties>

The properties of the custom terminology being retrieved.


=head2 _request_id => Str


=cut

1;