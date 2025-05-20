
package Paws::SQS::ListMessageMoveTasks;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has SourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMessageMoveTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::ListMessageMoveTasksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ListMessageMoveTasks - Arguments for method ListMessageMoveTasks on L<Paws::SQS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMessageMoveTasks on the
L<Amazon Simple Queue Service|Paws::SQS> service. Use the attributes of this class
as arguments to method ListMessageMoveTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMessageMoveTasks.

=head1 SYNOPSIS

    my $sqs = Paws->service('SQS');
    my $ListMessageMoveTasksResult = $sqs->ListMessageMoveTasks(
      SourceArn  => 'MyString',
      MaxResults => 1,            # OPTIONAL
    );

    # Results:
    my $Results = $ListMessageMoveTasksResult->Results;

    # Returns a L<Paws::SQS::ListMessageMoveTasksResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sqs/ListMessageMoveTasks>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to include in the response. The default
is 1, which provides the most recent message movement task. The upper
limit is 10.



=head2 B<REQUIRED> SourceArn => Str

The ARN of the queue whose message movement tasks are to be listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMessageMoveTasks in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

