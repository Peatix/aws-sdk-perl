
package Paws::AuditManager::UpdateAssessmentFrameworkShare;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action', required => 1);
  has RequestId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'requestId', required => 1);
  has RequestType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssessmentFrameworkShare');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessmentFrameworkShareRequests/{requestId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::UpdateAssessmentFrameworkShareResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::UpdateAssessmentFrameworkShare - Arguments for method UpdateAssessmentFrameworkShare on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAssessmentFrameworkShare on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method UpdateAssessmentFrameworkShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAssessmentFrameworkShare.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $UpdateAssessmentFrameworkShareResponse =
      $auditmanager->UpdateAssessmentFrameworkShare(
      Action      => 'ACCEPT',
      RequestId   => 'MyUUID',
      RequestType => 'SENT',

      );

    # Results:
    my $AssessmentFrameworkShareRequest =
      $UpdateAssessmentFrameworkShareResponse->AssessmentFrameworkShareRequest;

# Returns a L<Paws::AuditManager::UpdateAssessmentFrameworkShareResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/UpdateAssessmentFrameworkShare>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

Specifies the update action for the share request.

Valid values are: C<"ACCEPT">, C<"DECLINE">, C<"REVOKE">

=head2 B<REQUIRED> RequestId => Str

The unique identifier for the share request.



=head2 B<REQUIRED> RequestType => Str

Specifies whether the share request is a sent request or a received
request.

Valid values are: C<"SENT">, C<"RECEIVED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAssessmentFrameworkShare in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

