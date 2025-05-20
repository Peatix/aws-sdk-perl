
package Paws::IoTData::GetRetainedMessage;
  use Moose;
  has Topic => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'topic', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRetainedMessage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/retainedMessage/{topic}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTData::GetRetainedMessageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTData::GetRetainedMessage - Arguments for method GetRetainedMessage on L<Paws::IoTData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRetainedMessage on the
L<AWS IoT Data Plane|Paws::IoTData> service. Use the attributes of this class
as arguments to method GetRetainedMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRetainedMessage.

=head1 SYNOPSIS

    my $data-ats.iot = Paws->service('IoTData');
    my $GetRetainedMessageResponse = $data -ats . iot->GetRetainedMessage(
      Topic => 'MyTopic',

    );

    # Results:
    my $LastModifiedTime = $GetRetainedMessageResponse->LastModifiedTime;
    my $Payload          = $GetRetainedMessageResponse->Payload;
    my $Qos              = $GetRetainedMessageResponse->Qos;
    my $Topic            = $GetRetainedMessageResponse->Topic;
    my $UserProperties   = $GetRetainedMessageResponse->UserProperties;

    # Returns a L<Paws::IoTData::GetRetainedMessageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data-ats.iot/GetRetainedMessage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Topic => Str

The topic name of the retained message to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRetainedMessage in L<Paws::IoTData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

