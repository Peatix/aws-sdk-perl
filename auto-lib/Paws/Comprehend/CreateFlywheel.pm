
package Paws::Comprehend::CreateFlywheel;
  use Moose;
  has ActiveModelArn => (is => 'ro', isa => 'Str');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has DataLakeS3Uri => (is => 'ro', isa => 'Str', required => 1);
  has DataSecurityConfig => (is => 'ro', isa => 'Paws::Comprehend::DataSecurityConfig');
  has FlywheelName => (is => 'ro', isa => 'Str', required => 1);
  has ModelType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::Tag]');
  has TaskConfig => (is => 'ro', isa => 'Paws::Comprehend::TaskConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFlywheel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::CreateFlywheelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::CreateFlywheel - Arguments for method CreateFlywheel on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFlywheel on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method CreateFlywheel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFlywheel.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $CreateFlywheelResponse = $comprehend->CreateFlywheel(
      DataAccessRoleArn  => 'MyIamRoleArn',
      DataLakeS3Uri      => 'MyFlywheelS3Uri',
      FlywheelName       => 'MyComprehendArnName',
      ActiveModelArn     => 'MyComprehendModelArn',          # OPTIONAL
      ClientRequestToken => 'MyClientRequestTokenString',    # OPTIONAL
      DataSecurityConfig => {
        DataLakeKmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
        ModelKmsKeyId    => 'MyKmsKeyId',    # max: 2048; OPTIONAL
        VolumeKmsKeyId   => 'MyKmsKeyId',    # max: 2048; OPTIONAL
        VpcConfig        => {
          SecurityGroupIds => [
            'MySecurityGroupId', ...         # min: 1, max: 32
          ],    # min: 1, max: 5
          Subnets => [
            'MySubnetId', ...    # min: 1, max: 32
          ],    # min: 1, max: 16

        },    # OPTIONAL
      },    # OPTIONAL
      ModelType => 'DOCUMENT_CLASSIFIER',    # OPTIONAL
      Tags      => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TaskConfig => {
        LanguageCode =>
          'en',    # values: en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
        DocumentClassificationConfig => {
          Mode   => 'MULTI_CLASS',    # values: MULTI_CLASS, MULTI_LABEL
          Labels => [
            'MyLabelListItem', ...    # max: 5000
          ],    # max: 1000; OPTIONAL
        },    # OPTIONAL
        EntityRecognitionConfig => {
          EntityTypes => [
            {
              Type => 'MyEntityTypeName',    # max: 64

            },
            ...
          ],

        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ActiveModelArn = $CreateFlywheelResponse->ActiveModelArn;
    my $FlywheelArn    = $CreateFlywheelResponse->FlywheelArn;

    # Returns a L<Paws::Comprehend::CreateFlywheelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/CreateFlywheel>

=head1 ATTRIBUTES


=head2 ActiveModelArn => Str

To associate an existing model with the flywheel, specify the Amazon
Resource Number (ARN) of the model version. Do not set C<TaskConfig> or
C<ModelType> if you specify an C<ActiveModelArn>.



=head2 ClientRequestToken => Str

A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that grants Amazon
Comprehend the permissions required to access the flywheel data in the
data lake.



=head2 B<REQUIRED> DataLakeS3Uri => Str

Enter the S3 location for the data lake. You can specify a new S3
bucket or a new folder of an existing S3 bucket. The flywheel creates
the data lake at this location.



=head2 DataSecurityConfig => L<Paws::Comprehend::DataSecurityConfig>

Data security configurations.



=head2 B<REQUIRED> FlywheelName => Str

Name for the flywheel.



=head2 ModelType => Str

The model type. You need to set C<ModelType> if you are creating a
flywheel for a new model.

Valid values are: C<"DOCUMENT_CLASSIFIER">, C<"ENTITY_RECOGNIZER">

=head2 Tags => ArrayRef[L<Paws::Comprehend::Tag>]

The tags to associate with this flywheel.



=head2 TaskConfig => L<Paws::Comprehend::TaskConfig>

Configuration about the model associated with the flywheel. You need to
set C<TaskConfig> if you are creating a flywheel for a new model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFlywheel in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

