
package Paws::CloudWatchLogs::PutDeliverySource;
  use Moose;
  has LogType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logType' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CloudWatchLogs::Tags', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDeliverySource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::PutDeliverySourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutDeliverySource - Arguments for method PutDeliverySource on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDeliverySource on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method PutDeliverySource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDeliverySource.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $PutDeliverySourceResponse = $logs->PutDeliverySource(
      LogType     => 'MyLogType',
      Name        => 'MyDeliverySourceName',
      ResourceArn => 'MyArn',
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $DeliverySource = $PutDeliverySourceResponse->DeliverySource;

    # Returns a L<Paws::CloudWatchLogs::PutDeliverySourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/PutDeliverySource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogType => Str

Defines the type of log that the source is sending.

=over

=item *

For Amazon Bedrock, the valid value is C<APPLICATION_LOGS>.

=item *

For CloudFront, the valid value is C<ACCESS_LOGS>.

=item *

For Amazon CodeWhisperer, the valid value is C<EVENT_LOGS>.

=item *

For Elemental MediaPackage, the valid values are C<EGRESS_ACCESS_LOGS>
and C<INGRESS_ACCESS_LOGS>.

=item *

For Elemental MediaTailor, the valid values are
C<AD_DECISION_SERVER_LOGS>, C<MANIFEST_SERVICE_LOGS>, and
C<TRANSCODE_LOGS>.

=item *

For IAM Identity Center, the valid value is C<ERROR_LOGS>.

=item *

For Amazon Q, the valid value is C<EVENT_LOGS>.

=item *

For Amazon SES mail manager, the valid value is C<APPLICATION_LOG>.

=item *

For Amazon WorkMail, the valid values are C<ACCESS_CONTROL_LOGS>,
C<AUTHENTICATION_LOGS>, C<WORKMAIL_AVAILABILITY_PROVIDER_LOGS>,
C<WORKMAIL_MAILBOX_ACCESS_LOGS>, and
C<WORKMAIL_PERSONAL_ACCESS_TOKEN_LOGS>.

=back




=head2 B<REQUIRED> Name => Str

A name for this delivery source. This name must be unique for all
delivery sources in your account.



=head2 B<REQUIRED> ResourceArn => Str

The ARN of the Amazon Web Services resource that is generating and
sending logs. For example,
C<arn:aws:workmail:us-east-1:123456789012:organization/m-1234EXAMPLEabcd1234abcd1234abcd1234>



=head2 Tags => L<Paws::CloudWatchLogs::Tags>

An optional list of key-value pairs to associate with the resource.

For more information about tagging, see Tagging Amazon Web Services
resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDeliverySource in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

