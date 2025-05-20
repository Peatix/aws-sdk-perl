
package Paws::IoTData::ListRetainedMessages;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRetainedMessages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/retainedMessage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTData::ListRetainedMessagesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTData::ListRetainedMessages - Arguments for method ListRetainedMessages on L<Paws::IoTData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRetainedMessages on the
L<AWS IoT Data Plane|Paws::IoTData> service. Use the attributes of this class
as arguments to method ListRetainedMessages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRetainedMessages.

=head1 SYNOPSIS

    my $data-ats.iot = Paws->service('IoTData');
    my $ListRetainedMessagesResponse = $data -ats . iot->ListRetainedMessages(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListRetainedMessagesResponse->NextToken;
    my $RetainedTopics = $ListRetainedMessagesResponse->RetainedTopics;

    # Returns a L<Paws::IoTData::ListRetainedMessagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data-ats.iot/ListRetainedMessages>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

To retrieve the next set of results, the C<nextToken> value from a
previous response; otherwise B<null> to receive the first set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRetainedMessages in L<Paws::IoTData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

