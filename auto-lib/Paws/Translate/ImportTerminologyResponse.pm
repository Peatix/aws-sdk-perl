
package Paws::Translate::ImportTerminologyResponse;
  use Moose;
  has AuxiliaryDataLocation => (is => 'ro', isa => 'Paws::Translate::TerminologyDataLocation');
  has TerminologyProperties => (is => 'ro', isa => 'Paws::Translate::TerminologyProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::ImportTerminologyResponse

=head1 ATTRIBUTES


=head2 AuxiliaryDataLocation => L<Paws::Translate::TerminologyDataLocation>

The Amazon S3 location of a file that provides any errors or warnings
that were produced by your input file. This file was created when
Amazon Translate attempted to create a terminology resource. The
location is returned as a presigned URL to that has a 30 minute
expiration.


=head2 TerminologyProperties => L<Paws::Translate::TerminologyProperties>

The properties of the custom terminology being imported.


=head2 _request_id => Str


=cut

1;