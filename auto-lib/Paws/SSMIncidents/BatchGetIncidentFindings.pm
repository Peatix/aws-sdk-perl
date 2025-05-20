
package Paws::SSMIncidents::BatchGetIncidentFindings;
  use Moose;
  has FindingIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'findingIds', required => 1);
  has IncidentRecordArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'incidentRecordArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetIncidentFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/batchGetIncidentFindings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::BatchGetIncidentFindingsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::BatchGetIncidentFindings - Arguments for method BatchGetIncidentFindings on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetIncidentFindings on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method BatchGetIncidentFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetIncidentFindings.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $BatchGetIncidentFindingsOutput =
      $ssm -incidents->BatchGetIncidentFindings(
      FindingIds => [
        'MyFindingId', ...    # max: 128
      ],
      IncidentRecordArn => 'MyArn',

      );

    # Results:
    my $Errors   = $BatchGetIncidentFindingsOutput->Errors;
    my $Findings = $BatchGetIncidentFindingsOutput->Findings;

    # Returns a L<Paws::SSMIncidents::BatchGetIncidentFindingsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/BatchGetIncidentFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingIds => ArrayRef[Str|Undef]

A list of IDs of findings for which you want to view details.



=head2 B<REQUIRED> IncidentRecordArn => Str

The Amazon Resource Name (ARN) of the incident for which you want to
view finding details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetIncidentFindings in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

