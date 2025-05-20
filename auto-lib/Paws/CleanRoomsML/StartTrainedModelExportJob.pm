
package Paws::CleanRoomsML::StartTrainedModelExportJob;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OutputConfiguration => (is => 'ro', isa => 'Paws::CleanRoomsML::TrainedModelExportOutputConfiguration', traits => ['NameInRequest'], request_name => 'outputConfiguration', required => 1);
  has TrainedModelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'trainedModelArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTrainedModelExportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}/export-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::StartTrainedModelExportJob - Arguments for method StartTrainedModelExportJob on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTrainedModelExportJob on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method StartTrainedModelExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTrainedModelExportJob.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    $cleanrooms -ml->StartTrainedModelExportJob(
      MembershipIdentifier => 'MyUUID',
      Name                 => 'MyNameString',
      OutputConfiguration  => {
        Members => [
          {
            AccountId => 'MyAccountId',    # min: 12, max: 12

          },
          ...
        ],    # min: 1, max: 1

      },
      TrainedModelArn => 'MyTrainedModelArn',
      Description     => 'MyResourceDescription',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/StartTrainedModelExportJob>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the trained model export job.



=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the member that is receiving the exported trained
model artifacts.



=head2 B<REQUIRED> Name => Str

The name of the trained model export job.



=head2 B<REQUIRED> OutputConfiguration => L<Paws::CleanRoomsML::TrainedModelExportOutputConfiguration>

The output configuration information for the trained model export job.



=head2 B<REQUIRED> TrainedModelArn => Str

The Amazon Resource Name (ARN) of the trained model that you want to
export.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTrainedModelExportJob in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

