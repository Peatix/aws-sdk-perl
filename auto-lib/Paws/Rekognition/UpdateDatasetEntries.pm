
package Paws::Rekognition::UpdateDatasetEntries;
  use Moose;
  has Changes => (is => 'ro', isa => 'Paws::Rekognition::DatasetChanges', required => 1);
  has DatasetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDatasetEntries');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::UpdateDatasetEntriesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::UpdateDatasetEntries - Arguments for method UpdateDatasetEntries on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDatasetEntries on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method UpdateDatasetEntries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDatasetEntries.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $UpdateDatasetEntriesResponse = $rekognition->UpdateDatasetEntries(
      Changes => {
        GroundTruth => 'BlobGroundTruthBlob',    # min: 1, max: 5242880

      },
      DatasetArn => 'MyDatasetArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/UpdateDatasetEntries>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Changes => L<Paws::Rekognition::DatasetChanges>

The changes that you want to make to the dataset.



=head2 B<REQUIRED> DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset that you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDatasetEntries in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

