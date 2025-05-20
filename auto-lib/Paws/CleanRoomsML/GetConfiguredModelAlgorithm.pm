
package Paws::CleanRoomsML::GetConfiguredModelAlgorithm;
  use Moose;
  has ConfiguredModelAlgorithmArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredModelAlgorithmArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConfiguredModelAlgorithm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configured-model-algorithms/{configuredModelAlgorithmArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::GetConfiguredModelAlgorithmResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetConfiguredModelAlgorithm - Arguments for method GetConfiguredModelAlgorithm on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfiguredModelAlgorithm on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method GetConfiguredModelAlgorithm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfiguredModelAlgorithm.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $GetConfiguredModelAlgorithmResponse =
      $cleanrooms -ml->GetConfiguredModelAlgorithm(
      ConfiguredModelAlgorithmArn => 'MyConfiguredModelAlgorithmArn',

      );

    # Results:
    my $ConfiguredModelAlgorithmArn =
      $GetConfiguredModelAlgorithmResponse->ConfiguredModelAlgorithmArn;
    my $CreateTime  = $GetConfiguredModelAlgorithmResponse->CreateTime;
    my $Description = $GetConfiguredModelAlgorithmResponse->Description;
    my $InferenceContainerConfig =
      $GetConfiguredModelAlgorithmResponse->InferenceContainerConfig;
    my $KmsKeyArn = $GetConfiguredModelAlgorithmResponse->KmsKeyArn;
    my $Name      = $GetConfiguredModelAlgorithmResponse->Name;
    my $RoleArn   = $GetConfiguredModelAlgorithmResponse->RoleArn;
    my $Tags      = $GetConfiguredModelAlgorithmResponse->Tags;
    my $TrainingContainerConfig =
      $GetConfiguredModelAlgorithmResponse->TrainingContainerConfig;
    my $UpdateTime = $GetConfiguredModelAlgorithmResponse->UpdateTime;

  # Returns a L<Paws::CleanRoomsML::GetConfiguredModelAlgorithmResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/GetConfiguredModelAlgorithm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredModelAlgorithmArn => Str

The Amazon Resource Name (ARN) of the configured model algorithm that
you want to return information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfiguredModelAlgorithm in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

