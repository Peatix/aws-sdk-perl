
package Paws::CloudTrailData::PutAuditEvents;
  use Moose;
  has AuditEvents => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrailData::AuditEvent]', traits => ['NameInRequest'], request_name => 'auditEvents', required => 1);
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'channelArn', required => 1);
  has ExternalId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'externalId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAuditEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutAuditEvents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrailData::PutAuditEventsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrailData::PutAuditEvents - Arguments for method PutAuditEvents on L<Paws::CloudTrailData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAuditEvents on the
L<AWS CloudTrail Data Service|Paws::CloudTrailData> service. Use the attributes of this class
as arguments to method PutAuditEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAuditEvents.

=head1 SYNOPSIS

    my $cloudtrail-data = Paws->service('CloudTrailData');
    my $PutAuditEventsResponse = $cloudtrail -data->PutAuditEvents(
      AuditEvents => [
        {
          EventData         => 'MyString',
          Id                => 'MyUuid',     # min: 1, max: 128
          EventDataChecksum => 'MyString',
        },
        ...
      ],
      ChannelArn => 'MyChannelArn',
      ExternalId => 'MyExternalId',    # OPTIONAL
    );

    # Results:
    my $Failed     = $PutAuditEventsResponse->Failed;
    my $Successful = $PutAuditEventsResponse->Successful;

    # Returns a L<Paws::CloudTrailData::PutAuditEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail-data/PutAuditEvents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuditEvents => ArrayRef[L<Paws::CloudTrailData::AuditEvent>]

The JSON payload of events that you want to ingest. You can also point
to the JSON event payload in a file.



=head2 B<REQUIRED> ChannelArn => Str

The ARN or ID (the ARN suffix) of a channel.



=head2 ExternalId => Str

A unique identifier that is conditionally required when the channel's
resource policy includes an external ID. This value can be any string,
such as a passphrase or account number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAuditEvents in L<Paws::CloudTrailData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

