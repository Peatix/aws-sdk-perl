
package Paws::LookoutEquipment::UpdateModel;
  use Moose;
  has LabelsInputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::LabelsInputConfiguration');
  has ModelDiagnosticsOutputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::ModelDiagnosticsOutputConfiguration');
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateModel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::UpdateModel - Arguments for method UpdateModel on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateModel on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method UpdateModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateModel.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    $lookoutequipment->UpdateModel(
      ModelName                => 'MyModelName',
      LabelsInputConfiguration => {
        LabelGroupName       => 'MyLabelGroupName', # min: 1, max: 200; OPTIONAL
        S3InputConfiguration => {
          Bucket => 'MyS3Bucket',                   # min: 3, max: 63
          Prefix => 'MyS3Prefix',                   # max: 1024; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ModelDiagnosticsOutputConfiguration => {
        S3OutputConfiguration => {
          Bucket => 'MyS3Bucket',    # min: 3, max: 63
          Prefix => 'MyS3Prefix',    # max: 1024; OPTIONAL
        },
        KmsKeyId => 'MyNameOrArn',    # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
      RoleArn => 'MyIamRoleArn',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/UpdateModel>

=head1 ATTRIBUTES


=head2 LabelsInputConfiguration => L<Paws::LookoutEquipment::LabelsInputConfiguration>





=head2 ModelDiagnosticsOutputConfiguration => L<Paws::LookoutEquipment::ModelDiagnosticsOutputConfiguration>

The Amazon S3 location where you want Amazon Lookout for Equipment to
save the pointwise model diagnostics for the model. You must also
specify the C<RoleArn> request parameter.



=head2 B<REQUIRED> ModelName => Str

The name of the model to update.



=head2 RoleArn => Str

The ARN of the model to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateModel in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

