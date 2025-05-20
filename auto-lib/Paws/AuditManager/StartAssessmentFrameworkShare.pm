
package Paws::AuditManager::StartAssessmentFrameworkShare;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'comment');
  has DestinationAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationAccount', required => 1);
  has DestinationRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationRegion', required => 1);
  has FrameworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'frameworkId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartAssessmentFrameworkShare');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessmentFrameworks/{frameworkId}/shareRequests');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::StartAssessmentFrameworkShareResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::StartAssessmentFrameworkShare - Arguments for method StartAssessmentFrameworkShare on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartAssessmentFrameworkShare on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method StartAssessmentFrameworkShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartAssessmentFrameworkShare.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $StartAssessmentFrameworkShareResponse =
      $auditmanager->StartAssessmentFrameworkShare(
      DestinationAccount => 'MyAccountId',
      DestinationRegion  => 'MyRegion',
      FrameworkId        => 'MyUUID',
      Comment            => 'MyShareRequestComment',    # OPTIONAL
      );

    # Results:
    my $AssessmentFrameworkShareRequest =
      $StartAssessmentFrameworkShareResponse->AssessmentFrameworkShareRequest;

# Returns a L<Paws::AuditManager::StartAssessmentFrameworkShareResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/StartAssessmentFrameworkShare>

=head1 ATTRIBUTES


=head2 Comment => Str

An optional comment from the sender about the share request.



=head2 B<REQUIRED> DestinationAccount => Str

The Amazon Web Services account of the recipient.



=head2 B<REQUIRED> DestinationRegion => Str

The Amazon Web Services Region of the recipient.



=head2 B<REQUIRED> FrameworkId => Str

The unique identifier for the custom framework to be shared.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartAssessmentFrameworkShare in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

