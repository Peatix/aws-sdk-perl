
package Paws::SNS::PublishBatch;
  use Moose;
  has PublishBatchRequestEntries => (is => 'ro', isa => 'ArrayRef[Paws::SNS::PublishBatchRequestEntry]', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PublishBatch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::PublishBatchResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PublishBatchResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::PublishBatch - Arguments for method PublishBatch on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PublishBatch on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method PublishBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PublishBatch.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $PublishBatchResponse = $sns->PublishBatch(
      PublishBatchRequestEntries => [
        {
          Id                => 'MyString',
          Message           => 'Mymessage',
          MessageAttributes => {
            'MyString' => {
              DataType    => 'MyString',
              BinaryValue => 'BlobBinary',    # OPTIONAL
              StringValue => 'MyString',
            },
          },    # OPTIONAL
          MessageDeduplicationId => 'MyString',
          MessageGroupId         => 'MyString',
          MessageStructure       => 'MymessageStructure',    # OPTIONAL
          Subject                => 'Mysubject',             # OPTIONAL
        },
        ...
      ],
      TopicArn => 'MytopicARN',

    );

    # Results:
    my $Failed     = $PublishBatchResponse->Failed;
    my $Successful = $PublishBatchResponse->Successful;

    # Returns a L<Paws::SNS::PublishBatchResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/PublishBatch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PublishBatchRequestEntries => ArrayRef[L<Paws::SNS::PublishBatchRequestEntry>]

A list of C<PublishBatch> request entries to be sent to the SNS topic.



=head2 B<REQUIRED> TopicArn => Str

The Amazon resource name (ARN) of the topic you want to batch publish
to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PublishBatch in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

