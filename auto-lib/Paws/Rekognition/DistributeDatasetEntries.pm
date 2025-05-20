
package Paws::Rekognition::DistributeDatasetEntries;
  use Moose;
  has Datasets => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::DistributeDataset]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DistributeDatasetEntries');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::DistributeDatasetEntriesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DistributeDatasetEntries - Arguments for method DistributeDatasetEntries on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DistributeDatasetEntries on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method DistributeDatasetEntries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DistributeDatasetEntries.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $DistributeDatasetEntriesResponse =
      $rekognition->DistributeDatasetEntries(
      Datasets => [
        {
          Arn => 'MyDatasetArn',    # min: 20, max: 2048

        },
        ...
      ],

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/DistributeDatasetEntries>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Datasets => ArrayRef[L<Paws::Rekognition::DistributeDataset>]

The ARNS for the training dataset and test dataset that you want to
use. The datasets must belong to the same project. The test dataset
must be empty.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DistributeDatasetEntries in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

