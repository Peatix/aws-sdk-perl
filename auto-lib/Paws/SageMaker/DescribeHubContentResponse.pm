
package Paws::SageMaker::DescribeHubContentResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DocumentSchemaVersion => (is => 'ro', isa => 'Str', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str');
  has HubArn => (is => 'ro', isa => 'Str', required => 1);
  has HubContentArn => (is => 'ro', isa => 'Str', required => 1);
  has HubContentDependencies => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::HubContentDependency]');
  has HubContentDescription => (is => 'ro', isa => 'Str');
  has HubContentDisplayName => (is => 'ro', isa => 'Str');
  has HubContentDocument => (is => 'ro', isa => 'Str', required => 1);
  has HubContentMarkdown => (is => 'ro', isa => 'Str');
  has HubContentName => (is => 'ro', isa => 'Str', required => 1);
  has HubContentSearchKeywords => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has HubContentStatus => (is => 'ro', isa => 'Str', required => 1);
  has HubContentType => (is => 'ro', isa => 'Str', required => 1);
  has HubContentVersion => (is => 'ro', isa => 'Str', required => 1);
  has HubName => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has ReferenceMinVersion => (is => 'ro', isa => 'Str');
  has SageMakerPublicHubContentArn => (is => 'ro', isa => 'Str');
  has SupportStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeHubContentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The date and time that hub content was created.


=head2 B<REQUIRED> DocumentSchemaVersion => Str

The document schema version for the hub content.


=head2 FailureReason => Str

The failure reason if importing hub content failed.


=head2 B<REQUIRED> HubArn => Str

The Amazon Resource Name (ARN) of the hub that contains the content.


=head2 B<REQUIRED> HubContentArn => Str

The Amazon Resource Name (ARN) of the hub content.


=head2 HubContentDependencies => ArrayRef[L<Paws::SageMaker::HubContentDependency>]

The location of any dependencies that the hub content has, such as
scripts, model artifacts, datasets, or notebooks.


=head2 HubContentDescription => Str

A description of the hub content.


=head2 HubContentDisplayName => Str

The display name of the hub content.


=head2 B<REQUIRED> HubContentDocument => Str

The hub content document that describes information about the hub
content such as type, associated containers, scripts, and more.


=head2 HubContentMarkdown => Str

A string that provides a description of the hub content. This string
can include links, tables, and standard markdown formating.


=head2 B<REQUIRED> HubContentName => Str

The name of the hub content.


=head2 HubContentSearchKeywords => ArrayRef[Str|Undef]

The searchable keywords for the hub content.


=head2 B<REQUIRED> HubContentStatus => Str

The status of the hub content.

Valid values are: C<"Available">, C<"Importing">, C<"Deleting">, C<"ImportFailed">, C<"DeleteFailed">
=head2 B<REQUIRED> HubContentType => Str

The type of hub content.

Valid values are: C<"Model">, C<"Notebook">, C<"ModelReference">
=head2 B<REQUIRED> HubContentVersion => Str

The version of the hub content.


=head2 B<REQUIRED> HubName => Str

The name of the hub that contains the content.


=head2 LastModifiedTime => Str

The last modified time of the hub content.


=head2 ReferenceMinVersion => Str

The minimum version of the hub content.


=head2 SageMakerPublicHubContentArn => Str

The ARN of the public hub content.


=head2 SupportStatus => Str

The support status of the hub content.

Valid values are: C<"Supported">, C<"Deprecated">, C<"Restricted">
=head2 _request_id => Str


=cut

1;