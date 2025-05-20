
package Paws::Comprehend::UpdateFlywheel;
  use Moose;
  has ActiveModelArn => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str');
  has DataSecurityConfig => (is => 'ro', isa => 'Paws::Comprehend::UpdateDataSecurityConfig');
  has FlywheelArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFlywheel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::UpdateFlywheelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::UpdateFlywheel - Arguments for method UpdateFlywheel on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFlywheel on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method UpdateFlywheel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFlywheel.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $UpdateFlywheelResponse = $comprehend->UpdateFlywheel(
      FlywheelArn        => 'MyComprehendFlywheelArn',
      ActiveModelArn     => 'MyComprehendModelArn',      # OPTIONAL
      DataAccessRoleArn  => 'MyIamRoleArn',              # OPTIONAL
      DataSecurityConfig => {
        ModelKmsKeyId  => 'MyKmsKeyId',                  # max: 2048; OPTIONAL
        VolumeKmsKeyId => 'MyKmsKeyId',                  # max: 2048; OPTIONAL
        VpcConfig      => {
          SecurityGroupIds => [
            'MySecurityGroupId', ...                     # min: 1, max: 32
          ],    # min: 1, max: 5
          Subnets => [
            'MySubnetId', ...    # min: 1, max: 32
          ],    # min: 1, max: 16

        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $FlywheelProperties = $UpdateFlywheelResponse->FlywheelProperties;

    # Returns a L<Paws::Comprehend::UpdateFlywheelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/UpdateFlywheel>

=head1 ATTRIBUTES


=head2 ActiveModelArn => Str

The Amazon Resource Number (ARN) of the active model version.



=head2 DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that grants Amazon
Comprehend permission to access the flywheel data.



=head2 DataSecurityConfig => L<Paws::Comprehend::UpdateDataSecurityConfig>

Flywheel data security configuration.



=head2 B<REQUIRED> FlywheelArn => Str

The Amazon Resource Number (ARN) of the flywheel to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFlywheel in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

