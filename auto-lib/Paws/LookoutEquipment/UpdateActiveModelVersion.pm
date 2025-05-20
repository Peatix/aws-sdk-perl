
package Paws::LookoutEquipment::UpdateActiveModelVersion;
  use Moose;
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has ModelVersion => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateActiveModelVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::UpdateActiveModelVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::UpdateActiveModelVersion - Arguments for method UpdateActiveModelVersion on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateActiveModelVersion on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method UpdateActiveModelVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateActiveModelVersion.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $UpdateActiveModelVersionResponse =
      $lookoutequipment->UpdateActiveModelVersion(
      ModelName    => 'MyModelName',
      ModelVersion => 1,

      );

    # Results:
    my $CurrentActiveVersion =
      $UpdateActiveModelVersionResponse->CurrentActiveVersion;
    my $CurrentActiveVersionArn =
      $UpdateActiveModelVersionResponse->CurrentActiveVersionArn;
    my $ModelArn  = $UpdateActiveModelVersionResponse->ModelArn;
    my $ModelName = $UpdateActiveModelVersionResponse->ModelName;
    my $PreviousActiveVersion =
      $UpdateActiveModelVersionResponse->PreviousActiveVersion;
    my $PreviousActiveVersionArn =
      $UpdateActiveModelVersionResponse->PreviousActiveVersionArn;

 # Returns a L<Paws::LookoutEquipment::UpdateActiveModelVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/UpdateActiveModelVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelName => Str

The name of the machine learning model for which the active model
version is being set.



=head2 B<REQUIRED> ModelVersion => Int

The version of the machine learning model for which the active model
version is being set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateActiveModelVersion in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

