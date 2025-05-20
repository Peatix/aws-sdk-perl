
package Paws::FraudDetector::CreateDetectorVersion;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorId' , required => 1);
  has ExternalModelEndpoints => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'externalModelEndpoints' );
  has ModelVersions => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::ModelVersion]', traits => ['NameInRequest'], request_name => 'modelVersions' );
  has RuleExecutionMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ruleExecutionMode' );
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Rule]', traits => ['NameInRequest'], request_name => 'rules' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDetectorVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::CreateDetectorVersionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::CreateDetectorVersion - Arguments for method CreateDetectorVersion on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDetectorVersion on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method CreateDetectorVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDetectorVersion.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $CreateDetectorVersionResult = $frauddetector->CreateDetectorVersion(
      DetectorId => 'Myidentifier',
      Rules      => [
        {
          DetectorId  => 'Myidentifier',                  # min: 1, max: 64
          RuleId      => 'Myidentifier',                  # min: 1, max: 64
          RuleVersion => 'MywholeNumberVersionString',    # min: 1, max: 5

        },
        ...
      ],
      Description            => 'Mydescription',        # OPTIONAL
      ExternalModelEndpoints => [ 'Mystring', ... ],    # OPTIONAL
      ModelVersions          => [
        {
          ModelId   => 'MymodelIdentifier',                # min: 1, max: 64
          ModelType => 'ONLINE_FRAUD_INSIGHTS'
          , # values: ONLINE_FRAUD_INSIGHTS, TRANSACTION_FRAUD_INSIGHTS, ACCOUNT_TAKEOVER_INSIGHTS
          ModelVersionNumber => 'MyfloatVersionString',    # min: 3, max: 7
          Arn => 'MyfraudDetectorArn',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      RuleExecutionMode => 'ALL_MATCHED',    # OPTIONAL
      Tags              => [
        {
          Key   => 'MytagKey',      # min: 1, max: 128
          Value => 'MytagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DetectorId        = $CreateDetectorVersionResult->DetectorId;
    my $DetectorVersionId = $CreateDetectorVersionResult->DetectorVersionId;
    my $Status            = $CreateDetectorVersionResult->Status;

    # Returns a L<Paws::FraudDetector::CreateDetectorVersionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/CreateDetectorVersion>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the detector version.



=head2 B<REQUIRED> DetectorId => Str

The ID of the detector under which you want to create a new version.



=head2 ExternalModelEndpoints => ArrayRef[Str|Undef]

The Amazon Sagemaker model endpoints to include in the detector
version.



=head2 ModelVersions => ArrayRef[L<Paws::FraudDetector::ModelVersion>]

The model versions to include in the detector version.



=head2 RuleExecutionMode => Str

The rule execution mode for the rules included in the detector version.

You can define and edit the rule mode at the detector version level,
when it is in draft status.

If you specify C<FIRST_MATCHED>, Amazon Fraud Detector evaluates rules
sequentially, first to last, stopping at the first matched rule. Amazon
Fraud dectector then provides the outcomes for that single rule.

If you specifiy C<ALL_MATCHED>, Amazon Fraud Detector evaluates all
rules and returns the outcomes for all matched rules.

The default behavior is C<FIRST_MATCHED>.

Valid values are: C<"ALL_MATCHED">, C<"FIRST_MATCHED">

=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::FraudDetector::Rule>]

The rules to include in the detector version.



=head2 Tags => ArrayRef[L<Paws::FraudDetector::Tag>]

A collection of key and value pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDetectorVersion in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

