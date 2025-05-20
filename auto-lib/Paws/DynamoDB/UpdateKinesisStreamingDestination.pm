
package Paws::DynamoDB::UpdateKinesisStreamingDestination;
  use Moose;
  has StreamArn => (is => 'ro', isa => 'Str', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has UpdateKinesisStreamingConfiguration => (is => 'ro', isa => 'Paws::DynamoDB::UpdateKinesisStreamingConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateKinesisStreamingDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::UpdateKinesisStreamingDestinationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateKinesisStreamingDestination - Arguments for method UpdateKinesisStreamingDestination on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateKinesisStreamingDestination on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method UpdateKinesisStreamingDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateKinesisStreamingDestination.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $UpdateKinesisStreamingDestinationOutput =
      $dynamodb->UpdateKinesisStreamingDestination(
      StreamArn                           => 'MyStreamArn',
      TableName                           => 'MyTableArn',
      UpdateKinesisStreamingConfiguration => {
        ApproximateCreationDateTimePrecision =>
          'MILLISECOND',    # values: MILLISECOND, MICROSECOND; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $DestinationStatus =
      $UpdateKinesisStreamingDestinationOutput->DestinationStatus;
    my $StreamArn = $UpdateKinesisStreamingDestinationOutput->StreamArn;
    my $TableName = $UpdateKinesisStreamingDestinationOutput->TableName;
    my $UpdateKinesisStreamingConfiguration =
      $UpdateKinesisStreamingDestinationOutput
      ->UpdateKinesisStreamingConfiguration;

  # Returns a L<Paws::DynamoDB::UpdateKinesisStreamingDestinationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/UpdateKinesisStreamingDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamArn => Str

The Amazon Resource Name (ARN) for the Kinesis stream input.



=head2 B<REQUIRED> TableName => Str

The table name for the Kinesis streaming destination input. You can
also provide the ARN of the table in this parameter.



=head2 UpdateKinesisStreamingConfiguration => L<Paws::DynamoDB::UpdateKinesisStreamingConfiguration>

The command to update the Kinesis stream configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateKinesisStreamingDestination in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

