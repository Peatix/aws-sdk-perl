
package Paws::CleanRoomsML::DeleteTrainingDataset;
  use Moose;
  has TrainingDatasetArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'trainingDatasetArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTrainingDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/training-dataset/{trainingDatasetArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::DeleteTrainingDataset - Arguments for method DeleteTrainingDataset on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTrainingDataset on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method DeleteTrainingDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTrainingDataset.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    $cleanrooms -ml->DeleteTrainingDataset(
      TrainingDatasetArn => 'MyTrainingDatasetArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/DeleteTrainingDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrainingDatasetArn => Str

The Amazon Resource Name (ARN) of the training dataset that you want to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTrainingDataset in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

