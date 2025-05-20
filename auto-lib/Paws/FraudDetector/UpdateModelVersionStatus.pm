
package Paws::FraudDetector::UpdateModelVersionStatus;
  use Moose;
  has ModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelId' , required => 1);
  has ModelType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelType' , required => 1);
  has ModelVersionNumber => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelVersionNumber' , required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateModelVersionStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::UpdateModelVersionStatusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::UpdateModelVersionStatus - Arguments for method UpdateModelVersionStatus on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateModelVersionStatus on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method UpdateModelVersionStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateModelVersionStatus.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $UpdateModelVersionStatusResult =
      $frauddetector->UpdateModelVersionStatus(
      ModelId            => 'MymodelIdentifier',
      ModelType          => 'ONLINE_FRAUD_INSIGHTS',
      ModelVersionNumber => 'MyfloatVersionString',
      Status             => 'ACTIVE',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/UpdateModelVersionStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelId => Str

The model ID of the model version to update.



=head2 B<REQUIRED> ModelType => Str

The model type.

Valid values are: C<"ONLINE_FRAUD_INSIGHTS">, C<"TRANSACTION_FRAUD_INSIGHTS">, C<"ACCOUNT_TAKEOVER_INSIGHTS">

=head2 B<REQUIRED> ModelVersionNumber => Str

The model version number.



=head2 B<REQUIRED> Status => Str

The model version status.

Valid values are: C<"ACTIVE">, C<"INACTIVE">, C<"TRAINING_CANCELLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateModelVersionStatus in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

