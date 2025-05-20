
package Paws::ChimeSDKMeetings::CreateMeeting;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has ExternalMeetingId => (is => 'ro', isa => 'Str', required => 1);
  has MediaRegion => (is => 'ro', isa => 'Str', required => 1);
  has MeetingFeatures => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::MeetingFeaturesConfiguration');
  has MeetingHostId => (is => 'ro', isa => 'Str');
  has NotificationsConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::NotificationsConfiguration');
  has PrimaryMeetingId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMeetings::Tag]');
  has TenantIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMeeting');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meetings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMeetings::CreateMeetingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::CreateMeeting - Arguments for method CreateMeeting on L<Paws::ChimeSDKMeetings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMeeting on the
L<Amazon Chime SDK Meetings|Paws::ChimeSDKMeetings> service. Use the attributes of this class
as arguments to method CreateMeeting.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMeeting.

=head1 SYNOPSIS

    my $meetings-chime = Paws->service('ChimeSDKMeetings');
    my $CreateMeetingResponse = $meetings -chime->CreateMeeting(
      ClientRequestToken => 'MyClientRequestToken',
      ExternalMeetingId  => 'MyExternalMeetingId',
      MediaRegion        => 'MyMediaRegion',
      MeetingFeatures    => {
        Attendee => {
          MaxCount => 1,    # min: 1, max: 250; OPTIONAL
        },    # OPTIONAL
        Audio => {
          EchoReduction =>
            'AVAILABLE',    # values: AVAILABLE, UNAVAILABLE; OPTIONAL
        },    # OPTIONAL
        Content => {
          MaxResolution => 'None',    # values: None, FHD, UHD; OPTIONAL
        },    # OPTIONAL
        Video => {
          MaxResolution => 'None',    # values: None, HD, FHD; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      MeetingHostId              => 'MyExternalUserId',    # OPTIONAL
      NotificationsConfiguration => {
        LambdaFunctionArn => 'MyArn',    # min: 1, max: 1024; OPTIONAL
        SnsTopicArn       => 'MyArn',    # min: 1, max: 1024; OPTIONAL
        SqsQueueArn       => 'MyArn',    # min: 1, max: 1024; OPTIONAL
      },    # OPTIONAL
      PrimaryMeetingId => 'MyPrimaryMeetingId',    # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TenantIds => [
        'MyTenantId', ...    # min: 2, max: 256
      ],    # OPTIONAL
    );

    # Results:
    my $Meeting = $CreateMeetingResponse->Meeting;

    # Returns a L<Paws::ChimeSDKMeetings::CreateMeetingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/meetings-chime/CreateMeeting>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

The unique identifier for the client request. Use a different token for
different meetings.



=head2 B<REQUIRED> ExternalMeetingId => Str

The external meeting ID.

Pattern:
C<[-_&@+=,(){}\[\]\/E<lchevron>E<rchevron>.:|'"#a-zA-Z0-9E<Agrave>-E<yuml>\s]*>

Values that begin with C<aws:> are reserved. You can't configure a
value that uses this prefix. Case insensitive.



=head2 B<REQUIRED> MediaRegion => Str

The Region in which to create the meeting.

Available values: C<af-south-1>, C<ap-northeast-1>, C<ap-northeast-2>,
C<ap-south-1>, C<ap-southeast-1>, C<ap-southeast-2>, C<ca-central-1>,
C<eu-central-1>, C<eu-north-1>, C<eu-south-1>, C<eu-west-1>,
C<eu-west-2>, C<eu-west-3>, C<sa-east-1>, C<us-east-1>, C<us-east-2>,
C<us-west-1>, C<us-west-2>.

Available values in Amazon Web Services GovCloud (US) Regions:
C<us-gov-east-1>, C<us-gov-west-1>.



=head2 MeetingFeatures => L<Paws::ChimeSDKMeetings::MeetingFeaturesConfiguration>

Lists the audio and video features enabled for a meeting, such as echo
reduction.



=head2 MeetingHostId => Str

Reserved.



=head2 NotificationsConfiguration => L<Paws::ChimeSDKMeetings::NotificationsConfiguration>

The configuration for resource targets to receive notifications when
meeting and attendee events occur.



=head2 PrimaryMeetingId => Str

When specified, replicates the media from the primary meeting to the
new meeting.



=head2 Tags => ArrayRef[L<Paws::ChimeSDKMeetings::Tag>]

Applies one or more tags to an Amazon Chime SDK meeting. Note the
following:

=over

=item *

Not all resources have tags. For a list of services with resources that
support tagging using this operation, see Services that support the
Resource Groups Tagging API
(https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html).
If the resource doesn't yet support this operation, the resource's
service might support tagging using its own API operations. For more
information, refer to the documentation for that service.

=item *

Each resource can have up to 50 tags. For other limits, see Tag Naming
and Usage Conventions
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions)
in the I<AWS General Reference>.

=item *

You can only tag resources that are located in the specified Amazon Web
Services Region for the Amazon Web Services account.

=item *

To add tags to a resource, you need the necessary permissions for the
service that the resource belongs to as well as permissions for adding
tags. For more information, see the documentation for each service.

=back

Do not store personally identifiable information (PII) or other
confidential or sensitive information in tags. We use tags to provide
you with billing and administration services. Tags are not intended to
be used for private or sensitive data.

B<Minimum permissions>

In addition to the C<tag:TagResources> permission required by this
operation, you must also have the tagging permission defined by the
service that created the resource. For example, to tag a
C<ChimeSDKMeetings> instance using the C<TagResources> operation, you
must have both of the following permissions:

C<tag:TagResources>

C<ChimeSDKMeetings:CreateTags>

Some services might have specific requirements for tagging some
resources. For example, to tag an Amazon S3 bucket, you must also have
the C<s3:GetBucketTagging> permission. If the expected minimum
permissions don't work, check the documentation for that service's
tagging APIs for more information.



=head2 TenantIds => ArrayRef[Str|Undef]

A consistent and opaque identifier, created and maintained by the
builder to represent a segment of their users.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMeeting in L<Paws::ChimeSDKMeetings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

