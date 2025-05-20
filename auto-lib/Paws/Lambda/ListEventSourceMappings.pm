
package Paws::Lambda::ListEventSourceMappings;
  use Moose;
  has EventSourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'EventSourceArn');
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'FunctionName');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Marker');
  has MaxItems => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxItems');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEventSourceMappings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/event-source-mappings/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::ListEventSourceMappingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListEventSourceMappings - Arguments for method ListEventSourceMappings on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEventSourceMappings on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method ListEventSourceMappings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEventSourceMappings.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To list the event source mappings for a function
    # The following example returns a list of the event source mappings for a
    # function named my-function.
    my $ListEventSourceMappingsResponse =
      $lambda->ListEventSourceMappings( 'FunctionName' => 'my-function' );

    # Results:
    my $EventSourceMappings =
      $ListEventSourceMappingsResponse->EventSourceMappings;

    # Returns a L<Paws::Lambda::ListEventSourceMappingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/ListEventSourceMappings>

=head1 ATTRIBUTES


=head2 EventSourceArn => Str

The Amazon Resource Name (ARN) of the event source.

=over

=item *

B<Amazon Kinesis> E<ndash> The ARN of the data stream or a stream
consumer.

=item *

B<Amazon DynamoDB Streams> E<ndash> The ARN of the stream.

=item *

B<Amazon Simple Queue Service> E<ndash> The ARN of the queue.

=item *

B<Amazon Managed Streaming for Apache Kafka> E<ndash> The ARN of the
cluster or the ARN of the VPC connection (for cross-account event
source mappings
(https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#msk-multi-vpc)).

=item *

B<Amazon MQ> E<ndash> The ARN of the broker.

=item *

B<Amazon DocumentDB> E<ndash> The ARN of the DocumentDB change stream.

=back




=head2 FunctionName => Str

The name or ARN of the Lambda function.

B<Name formats>

=over

=item *

B<Function name> E<ndash> C<MyFunction>.

=item *

B<Function ARN> E<ndash>
C<arn:aws:lambda:us-west-2:123456789012:function:MyFunction>.

=item *

B<Version or Alias ARN> E<ndash>
C<arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD>.

=item *

B<Partial ARN> E<ndash> C<123456789012:function:MyFunction>.

=back

The length constraint applies only to the full ARN. If you specify only
the function name, it's limited to 64 characters in length.



=head2 Marker => Str

A pagination token returned by a previous call.



=head2 MaxItems => Int

The maximum number of event source mappings to return. Note that
ListEventSourceMappings returns a maximum of 100 items in each
response, even if you set the number higher.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEventSourceMappings in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

