
package Paws::StepFunctions::UpdateStateMachine;
  use Moose;
  has Definition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definition' );
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::StepFunctions::EncryptionConfiguration', traits => ['NameInRequest'], request_name => 'encryptionConfiguration' );
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::StepFunctions::LoggingConfiguration', traits => ['NameInRequest'], request_name => 'loggingConfiguration' );
  has Publish => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publish' );
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' );
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);
  has TracingConfiguration => (is => 'ro', isa => 'Paws::StepFunctions::TracingConfiguration', traits => ['NameInRequest'], request_name => 'tracingConfiguration' );
  has VersionDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionDescription' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStateMachine');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::UpdateStateMachineOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::UpdateStateMachine - Arguments for method UpdateStateMachine on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStateMachine on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method UpdateStateMachine.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStateMachine.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $UpdateStateMachineOutput = $states->UpdateStateMachine(
      StateMachineArn         => 'MyArn',
      Definition              => 'MyDefinition',    # OPTIONAL
      EncryptionConfiguration => {
        Type =>
          'AWS_OWNED_KEY',    # values: AWS_OWNED_KEY, CUSTOMER_MANAGED_KMS_KEY
        KmsDataKeyReusePeriodSeconds => 1,    # min: 60, max: 900; OPTIONAL
        KmsKeyId => 'MyKmsKeyId',             # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
      LoggingConfiguration => {
        Destinations => [
          {
            CloudWatchLogsLogGroup => {
              LogGroupArn => 'MyArn',    # min: 1, max: 256
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        IncludeExecutionData => 1,    # OPTIONAL
        Level => 'ALL',               # values: ALL, ERROR, FATAL, OFF; OPTIONAL
      },    # OPTIONAL
      Publish              => 1,          # OPTIONAL
      RoleArn              => 'MyArn',    # OPTIONAL
      TracingConfiguration => {
        Enabled => 1,                     # OPTIONAL
      },    # OPTIONAL
      VersionDescription => 'MyVersionDescription',    # OPTIONAL
    );

    # Results:
    my $RevisionId = $UpdateStateMachineOutput->RevisionId;
    my $StateMachineVersionArn =
      $UpdateStateMachineOutput->StateMachineVersionArn;
    my $UpdateDate = $UpdateStateMachineOutput->UpdateDate;

    # Returns a L<Paws::StepFunctions::UpdateStateMachineOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Definition => Str

The Amazon States Language definition of the state machine. See Amazon
States Language
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html).



=head2 EncryptionConfiguration => L<Paws::StepFunctions::EncryptionConfiguration>

Settings to configure server-side encryption.



=head2 LoggingConfiguration => L<Paws::StepFunctions::LoggingConfiguration>

Use the C<LoggingConfiguration> data type to set CloudWatch Logs
options.



=head2 Publish => Bool

Specifies whether the state machine version is published. The default
is C<false>. To publish a version after updating the state machine, set
C<publish> to C<true>.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role of the state machine.



=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) of the state machine.



=head2 TracingConfiguration => L<Paws::StepFunctions::TracingConfiguration>

Selects whether X-Ray tracing is enabled.



=head2 VersionDescription => Str

An optional description of the state machine version to publish.

You can only specify the C<versionDescription> parameter if you've set
C<publish> to C<true>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStateMachine in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

