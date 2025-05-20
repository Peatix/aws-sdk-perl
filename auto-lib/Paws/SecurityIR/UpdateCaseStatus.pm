
package Paws::SecurityIR::UpdateCaseStatus;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caseId', required => 1);
  has CaseStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caseStatus', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCaseStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/cases/{caseId}/update-case-status');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::UpdateCaseStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::UpdateCaseStatus - Arguments for method UpdateCaseStatus on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCaseStatus on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method UpdateCaseStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCaseStatus.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $UpdateCaseStatusResponse = $security -ir->UpdateCaseStatus(
      CaseId     => 'MyCaseId',
      CaseStatus => 'Submitted',

    );

    # Results:
    my $CaseStatus = $UpdateCaseStatusResponse->CaseStatus;

    # Returns a L<Paws::SecurityIR::UpdateCaseStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/UpdateCaseStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseId => Str

Required element for UpdateCaseStatus to identify the case to update.



=head2 B<REQUIRED> CaseStatus => Str

Required element for UpdateCaseStatus to identify the status for a
case. Options include C<Submitted | Detection and Analysis |
Containment, Eradication and Recovery | Post-incident Activities>.

Valid values are: C<"Submitted">, C<"Detection and Analysis">, C<"Containment, Eradication and Recovery">, C<"Post-incident Activities">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCaseStatus in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

