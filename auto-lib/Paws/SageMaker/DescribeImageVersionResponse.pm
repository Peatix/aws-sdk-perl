
package Paws::SageMaker::DescribeImageVersionResponse;
  use Moose;
  has BaseImage => (is => 'ro', isa => 'Str');
  has ContainerImage => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has Horovod => (is => 'ro', isa => 'Bool');
  has ImageArn => (is => 'ro', isa => 'Str');
  has ImageVersionArn => (is => 'ro', isa => 'Str');
  has ImageVersionStatus => (is => 'ro', isa => 'Str');
  has JobType => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has MLFramework => (is => 'ro', isa => 'Str');
  has Processor => (is => 'ro', isa => 'Str');
  has ProgrammingLang => (is => 'ro', isa => 'Str');
  has ReleaseNotes => (is => 'ro', isa => 'Str');
  has VendorGuidance => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeImageVersionResponse

=head1 ATTRIBUTES


=head2 BaseImage => Str

The registry path of the container image on which this image version is
based.


=head2 ContainerImage => Str

The registry path of the container image that contains this image
version.


=head2 CreationTime => Str

When the version was created.


=head2 FailureReason => Str

When a create or delete operation fails, the reason for the failure.


=head2 Horovod => Bool

Indicates Horovod compatibility.


=head2 ImageArn => Str

The ARN of the image the version is based on.


=head2 ImageVersionArn => Str

The ARN of the version.


=head2 ImageVersionStatus => Str

The status of the version.

Valid values are: C<"CREATING">, C<"CREATED">, C<"CREATE_FAILED">, C<"DELETING">, C<"DELETE_FAILED">
=head2 JobType => Str

Indicates SageMaker AI job type compatibility.

=over

=item *

C<TRAINING>: The image version is compatible with SageMaker AI training
jobs.

=item *

C<INFERENCE>: The image version is compatible with SageMaker AI
inference jobs.

=item *

C<NOTEBOOK_KERNEL>: The image version is compatible with SageMaker AI
notebook kernels.

=back


Valid values are: C<"TRAINING">, C<"INFERENCE">, C<"NOTEBOOK_KERNEL">
=head2 LastModifiedTime => Str

When the version was last modified.


=head2 MLFramework => Str

The machine learning framework vended in the image version.


=head2 Processor => Str

Indicates CPU or GPU compatibility.

=over

=item *

C<CPU>: The image version is compatible with CPU.

=item *

C<GPU>: The image version is compatible with GPU.

=back


Valid values are: C<"CPU">, C<"GPU">
=head2 ProgrammingLang => Str

The supported programming language and its version.


=head2 ReleaseNotes => Str

The maintainer description of the image version.


=head2 VendorGuidance => Str

The stability of the image version specified by the maintainer.

=over

=item *

C<NOT_PROVIDED>: The maintainers did not provide a status for image
version stability.

=item *

C<STABLE>: The image version is stable.

=item *

C<TO_BE_ARCHIVED>: The image version is set to be archived. Custom
image versions that are set to be archived are automatically archived
after three months.

=item *

C<ARCHIVED>: The image version is archived. Archived image versions are
not searchable and are no longer actively supported.

=back


Valid values are: C<"NOT_PROVIDED">, C<"STABLE">, C<"TO_BE_ARCHIVED">, C<"ARCHIVED">
=head2 Version => Int

The version number.


=head2 _request_id => Str


=cut

1;