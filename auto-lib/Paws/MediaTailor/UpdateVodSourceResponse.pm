
package Paws::MediaTailor::UpdateVodSourceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has HttpPackageConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::HttpPackageConfiguration]');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has SourceLocationName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MediaTailor::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');
  has VodSourceName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::UpdateVodSourceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) associated with the VOD source.


=head2 CreationTime => Str

The timestamp that indicates when the VOD source was created.


=head2 HttpPackageConfigurations => ArrayRef[L<Paws::MediaTailor::HttpPackageConfiguration>]

A list of HTTP package configurations for the VOD source on this
account.


=head2 LastModifiedTime => Str

The timestamp that indicates when the VOD source was last modified.


=head2 SourceLocationName => Str

The name of the source location associated with the VOD source.


=head2 Tags => L<Paws::MediaTailor::__mapOf__string>

The tags to assign to the VOD source. Tags are key-value pairs that you
can associate with Amazon resources to help with organization, access
control, and cost tracking. For more information, see Tagging AWS
Elemental MediaTailor Resources
(https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).


=head2 VodSourceName => Str

The name of the VOD source.


=head2 _request_id => Str


=cut

