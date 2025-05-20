
package Paws::Bedrock::GetImportedModelResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has CustomModelUnits => (is => 'ro', isa => 'Paws::Bedrock::CustomModelUnits', traits => ['NameInRequest'], request_name => 'customModelUnits');
  has InstructSupported => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'instructSupported');
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn');
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName');
  has ModelArchitecture => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelArchitecture');
  has ModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelArn');
  has ModelDataSource => (is => 'ro', isa => 'Paws::Bedrock::ModelDataSource', traits => ['NameInRequest'], request_name => 'modelDataSource');
  has ModelKmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelKmsKeyArn');
  has ModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetImportedModelResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

Creation time of the imported model.


=head2 CustomModelUnits => L<Paws::Bedrock::CustomModelUnits>

Information about the hardware utilization for a single copy of the
model.


=head2 InstructSupported => Bool

Specifies if the imported model supports converse.


=head2 JobArn => Str

Job Amazon Resource Name (ARN) associated with the imported model.


=head2 JobName => Str

Job name associated with the imported model.


=head2 ModelArchitecture => Str

The architecture of the imported model.


=head2 ModelArn => Str

The Amazon Resource Name (ARN) associated with this imported model.


=head2 ModelDataSource => L<Paws::Bedrock::ModelDataSource>

The data source for this imported model.


=head2 ModelKmsKeyArn => Str

The imported model is encrypted at rest using this key.


=head2 ModelName => Str

The name of the imported model.


=head2 _request_id => Str


=cut

