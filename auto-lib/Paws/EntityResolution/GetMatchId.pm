
package Paws::EntityResolution::GetMatchId;
  use Moose;
  has ApplyNormalization => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'applyNormalization');
  has Record => (is => 'ro', isa => 'Paws::EntityResolution::RecordAttributeMap', traits => ['NameInRequest'], request_name => 'record', required => 1);
  has WorkflowName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workflowName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMatchId');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/matchingworkflows/{workflowName}/matches');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::GetMatchIdOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::GetMatchId - Arguments for method GetMatchId on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMatchId on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method GetMatchId.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMatchId.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $GetMatchIdOutput = $entityresolution->GetMatchId(
      Record => {
        'MyRecordAttributeMapKeyString' =>
          'MyRecordAttributeMapValueString',    # key: max: 255, value: max: 255
      },
      WorkflowName       => 'MyEntityName',
      ApplyNormalization => 1,                  # OPTIONAL
    );

    # Results:
    my $MatchId   = $GetMatchIdOutput->MatchId;
    my $MatchRule = $GetMatchIdOutput->MatchRule;

    # Returns a L<Paws::EntityResolution::GetMatchIdOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/GetMatchId>

=head1 ATTRIBUTES


=head2 ApplyNormalization => Bool

Normalizes the attributes defined in the schema in the input data. For
example, if an attribute has an C<AttributeType> of C<PHONE_NUMBER>,
and the data in the input table is in a format of 1234567890, Entity
Resolution will normalize this field in the output to (123)-456-7890.



=head2 B<REQUIRED> Record => L<Paws::EntityResolution::RecordAttributeMap>

The record to fetch the Match ID for.



=head2 B<REQUIRED> WorkflowName => Str

The name of the workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMatchId in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

