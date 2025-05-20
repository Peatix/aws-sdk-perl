
package Paws::MediaTailor::DescribeSourceLocationResponse;
  use Moose;
  has AccessConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::AccessConfiguration');
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DefaultSegmentDeliveryConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::DefaultSegmentDeliveryConfiguration');
  has HttpConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::HttpConfiguration');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has SegmentDeliveryConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::SegmentDeliveryConfiguration]');
  has SourceLocationName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MediaTailor::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::DescribeSourceLocationResponse

=head1 ATTRIBUTES


=head2 AccessConfiguration => L<Paws::MediaTailor::AccessConfiguration>

The access configuration for the source location.


=head2 Arn => Str

The ARN of the source location.


=head2 CreationTime => Str

The timestamp that indicates when the source location was created.


=head2 DefaultSegmentDeliveryConfiguration => L<Paws::MediaTailor::DefaultSegmentDeliveryConfiguration>

The default segment delivery configuration settings.


=head2 HttpConfiguration => L<Paws::MediaTailor::HttpConfiguration>

The HTTP package configuration settings for the source location.


=head2 LastModifiedTime => Str

The timestamp that indicates when the source location was last
modified.


=head2 SegmentDeliveryConfigurations => ArrayRef[L<Paws::MediaTailor::SegmentDeliveryConfiguration>]

A list of the segment delivery configurations associated with this
resource.


=head2 SourceLocationName => Str

The name of the source location.


=head2 Tags => L<Paws::MediaTailor::__mapOf__string>

The tags assigned to the source location. Tags are key-value pairs that
you can associate with Amazon resources to help with organization,
access control, and cost tracking. For more information, see Tagging
AWS Elemental MediaTailor Resources
(https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).


=head2 _request_id => Str


=cut

