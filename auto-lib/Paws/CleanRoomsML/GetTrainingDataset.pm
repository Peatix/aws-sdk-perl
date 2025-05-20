
package Paws::CleanRoomsML::GetTrainingDataset;
  use Moose;
  has TrainingDatasetArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'trainingDatasetArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTrainingDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/training-dataset/{trainingDatasetArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::GetTrainingDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetTrainingDataset - Arguments for method GetTrainingDataset on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTrainingDataset on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method GetTrainingDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTrainingDataset.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $GetTrainingDatasetResponse = $cleanrooms -ml->GetTrainingDataset(
      TrainingDatasetArn => 'MyTrainingDatasetArn',

    );

    # Results:
    my $CreateTime         = $GetTrainingDatasetResponse->CreateTime;
    my $Description        = $GetTrainingDatasetResponse->Description;
    my $Name               = $GetTrainingDatasetResponse->Name;
    my $RoleArn            = $GetTrainingDatasetResponse->RoleArn;
    my $Status             = $GetTrainingDatasetResponse->Status;
    my $Tags               = $GetTrainingDatasetResponse->Tags;
    my $TrainingData       = $GetTrainingDatasetResponse->TrainingData;
    my $TrainingDatasetArn = $GetTrainingDatasetResponse->TrainingDatasetArn;
    my $UpdateTime         = $GetTrainingDatasetResponse->UpdateTime;

    # Returns a L<Paws::CleanRoomsML::GetTrainingDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/GetTrainingDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrainingDatasetArn => Str

The Amazon Resource Name (ARN) of the training dataset that you are
interested in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTrainingDataset in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

