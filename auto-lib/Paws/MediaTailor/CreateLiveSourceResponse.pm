
package Paws::MediaTailor::CreateLiveSourceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has HttpPackageConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::HttpPackageConfiguration]');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has LiveSourceName => (is => 'ro', isa => 'Str');
  has SourceLocationName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MediaTailor::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::CreateLiveSourceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN to assign to the live source.


=head2 CreationTime => Str

The time the live source was created.


=head2 HttpPackageConfigurations => ArrayRef[L<Paws::MediaTailor::HttpPackageConfiguration>]

A list of HTTP package configuration parameters for this live source.


=head2 LastModifiedTime => Str

The time the live source was last modified.


=head2 LiveSourceName => Str

The name to assign to the live source.


=head2 SourceLocationName => Str

The name to assign to the source location of the live source.


=head2 Tags => L<Paws::MediaTailor::__mapOf__string>

The tags to assign to the live source. Tags are key-value pairs that
you can associate with Amazon resources to help with organization,
access control, and cost tracking. For more information, see Tagging
AWS Elemental MediaTailor Resources
(https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).


=head2 _request_id => Str


=cut

