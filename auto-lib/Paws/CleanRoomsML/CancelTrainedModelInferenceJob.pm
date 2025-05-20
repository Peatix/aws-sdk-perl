
package Paws::CleanRoomsML::CancelTrainedModelInferenceJob;
  use Moose;
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has TrainedModelInferenceJobArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'trainedModelInferenceJobArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelTrainedModelInferenceJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/trained-model-inference-jobs/{trainedModelInferenceJobArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::CancelTrainedModelInferenceJob - Arguments for method CancelTrainedModelInferenceJob on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelTrainedModelInferenceJob on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method CancelTrainedModelInferenceJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelTrainedModelInferenceJob.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    $cleanrooms -ml->CancelTrainedModelInferenceJob(
      MembershipIdentifier        => 'MyUUID',
      TrainedModelInferenceJobArn => 'MyTrainedModelInferenceJobArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/CancelTrainedModelInferenceJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the trained model inference job that you want to
cancel.



=head2 B<REQUIRED> TrainedModelInferenceJobArn => Str

The Amazon Resource Name (ARN) of the trained model inference job that
you want to cancel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelTrainedModelInferenceJob in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

