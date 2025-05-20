
package Paws::SageMaker::DescribeSpaceResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DomainId => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has HomeEfsFileSystemUid => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has OwnershipSettings => (is => 'ro', isa => 'Paws::SageMaker::OwnershipSettings');
  has SpaceArn => (is => 'ro', isa => 'Str');
  has SpaceDisplayName => (is => 'ro', isa => 'Str');
  has SpaceName => (is => 'ro', isa => 'Str');
  has SpaceSettings => (is => 'ro', isa => 'Paws::SageMaker::SpaceSettings');
  has SpaceSharingSettings => (is => 'ro', isa => 'Paws::SageMaker::SpaceSharingSettings');
  has Status => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeSpaceResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The creation time.


=head2 DomainId => Str

The ID of the associated domain.


=head2 FailureReason => Str

The failure reason.


=head2 HomeEfsFileSystemUid => Str

The ID of the space's profile in the Amazon EFS volume.


=head2 LastModifiedTime => Str

The last modified time.


=head2 OwnershipSettings => L<Paws::SageMaker::OwnershipSettings>

The collection of ownership settings for a space.


=head2 SpaceArn => Str

The space's Amazon Resource Name (ARN).


=head2 SpaceDisplayName => Str

The name of the space that appears in the Amazon SageMaker Studio UI.


=head2 SpaceName => Str

The name of the space.


=head2 SpaceSettings => L<Paws::SageMaker::SpaceSettings>

A collection of space settings.


=head2 SpaceSharingSettings => L<Paws::SageMaker::SpaceSharingSettings>

The collection of space sharing settings for a space.


=head2 Status => Str

The status.

Valid values are: C<"Deleting">, C<"Failed">, C<"InService">, C<"Pending">, C<"Updating">, C<"Update_Failed">, C<"Delete_Failed">
=head2 Url => Str

Returns the URL of the space. If the space is created with Amazon Web
Services IAM Identity Center (Successor to Amazon Web Services Single
Sign-On) authentication, users can navigate to the URL after appending
the respective redirect parameter for the application type to be
federated through Amazon Web Services IAM Identity Center.

The following application types are supported:

=over

=item *

Studio Classic: C<&redirect=JupyterServer>

=item *

JupyterLab: C<&redirect=JupyterLab>

=item *

Code Editor, based on Code-OSS, Visual Studio Code - Open Source:
C<&redirect=CodeEditor>

=back



=head2 _request_id => Str


=cut

1;