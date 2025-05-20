
package Paws::Panorama::DescribeNodeFromTemplateJobResponse;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str', required => 1);
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has JobTags => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::JobResourceTags]');
  has LastUpdatedTime => (is => 'ro', isa => 'Str', required => 1);
  has NodeDescription => (is => 'ro', isa => 'Str');
  has NodeName => (is => 'ro', isa => 'Str', required => 1);
  has OutputPackageName => (is => 'ro', isa => 'Str', required => 1);
  has OutputPackageVersion => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', required => 1);
  has TemplateParameters => (is => 'ro', isa => 'Paws::Panorama::TemplateParametersMap', required => 1);
  has TemplateType => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribeNodeFromTemplateJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedTime => Str

When the job was created.


=head2 B<REQUIRED> JobId => Str

The job's ID.


=head2 JobTags => ArrayRef[L<Paws::Panorama::JobResourceTags>]

The job's tags.


=head2 B<REQUIRED> LastUpdatedTime => Str

When the job was updated.


=head2 NodeDescription => Str

The node's description.


=head2 B<REQUIRED> NodeName => Str

The node's name.


=head2 B<REQUIRED> OutputPackageName => Str

The job's output package name.


=head2 B<REQUIRED> OutputPackageVersion => Str

The job's output package version.


=head2 B<REQUIRED> Status => Str

The job's status.

Valid values are: C<"PENDING">, C<"SUCCEEDED">, C<"FAILED">
=head2 B<REQUIRED> StatusMessage => Str

The job's status message.


=head2 B<REQUIRED> TemplateParameters => L<Paws::Panorama::TemplateParametersMap>

The job's template parameters.


=head2 B<REQUIRED> TemplateType => Str

The job's template type.

Valid values are: C<"RTSP_CAMERA_STREAM">
=head2 _request_id => Str


=cut

