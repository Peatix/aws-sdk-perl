
package Paws::AuditManager::BatchDeleteDelegationByAssessment;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assessmentId', required => 1);
  has DelegationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'delegationIds', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteDelegationByAssessment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessments/{assessmentId}/delegations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::BatchDeleteDelegationByAssessmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::BatchDeleteDelegationByAssessment - Arguments for method BatchDeleteDelegationByAssessment on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteDelegationByAssessment on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method BatchDeleteDelegationByAssessment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteDelegationByAssessment.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $BatchDeleteDelegationByAssessmentResponse =
      $auditmanager->BatchDeleteDelegationByAssessment(
      AssessmentId  => 'MyUUID',
      DelegationIds => [
        'MyUUID', ...    # min: 36, max: 36
      ],

      );

    # Results:
    my $Errors = $BatchDeleteDelegationByAssessmentResponse->Errors;

# Returns a L<Paws::AuditManager::BatchDeleteDelegationByAssessmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/BatchDeleteDelegationByAssessment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentId => Str

The identifier for the assessment.



=head2 B<REQUIRED> DelegationIds => ArrayRef[Str|Undef]

The identifiers for the delegations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteDelegationByAssessment in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

