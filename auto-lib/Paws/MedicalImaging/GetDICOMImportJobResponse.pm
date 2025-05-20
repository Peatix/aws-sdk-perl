
package Paws::MedicalImaging::GetDICOMImportJobResponse;
  use Moose;
  has JobProperties => (is => 'ro', isa => 'Paws::MedicalImaging::DICOMImportJobProperties', traits => ['NameInRequest'], request_name => 'jobProperties', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::GetDICOMImportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobProperties => L<Paws::MedicalImaging::DICOMImportJobProperties>

The properties of the import job.


=head2 _request_id => Str


=cut

