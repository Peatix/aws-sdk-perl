
package Paws::Personalize::DescribeBatchSegmentJob;
  use Moose;
  has BatchSegmentJobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'batchSegmentJobArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBatchSegmentJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::DescribeBatchSegmentJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeBatchSegmentJob - Arguments for method DescribeBatchSegmentJob on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBatchSegmentJob on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method DescribeBatchSegmentJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBatchSegmentJob.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $DescribeBatchSegmentJobResponse = $personalize->DescribeBatchSegmentJob(
      BatchSegmentJobArn => 'MyArn',

    );

    # Results:
    my $BatchSegmentJob = $DescribeBatchSegmentJobResponse->BatchSegmentJob;

    # Returns a L<Paws::Personalize::DescribeBatchSegmentJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/DescribeBatchSegmentJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BatchSegmentJobArn => Str

The ARN of the batch segment job to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBatchSegmentJob in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

