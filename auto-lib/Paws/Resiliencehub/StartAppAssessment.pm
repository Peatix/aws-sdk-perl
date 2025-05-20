
package Paws::Resiliencehub::StartAppAssessment;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appVersion', required => 1);
  has AssessmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentName', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Tags => (is => 'ro', isa => 'Paws::Resiliencehub::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartAppAssessment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/start-app-assessment');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::StartAppAssessmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::StartAppAssessment - Arguments for method StartAppAssessment on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartAppAssessment on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method StartAppAssessment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartAppAssessment.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $StartAppAssessmentResponse = $resiliencehub->StartAppAssessment(
      AppArn         => 'MyArn',
      AppVersion     => 'MyEntityVersion',
      AssessmentName => 'MyEntityName',
      ClientToken    => 'MyClientToken',     # OPTIONAL
      Tags           => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Assessment = $StartAppAssessmentResponse->Assessment;

    # Returns a L<Paws::Resiliencehub::StartAppAssessmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/StartAppAssessment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 B<REQUIRED> AppVersion => Str

The version of the application.



=head2 B<REQUIRED> AssessmentName => Str

The name for the assessment.



=head2 ClientToken => Str

Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not
reuse the same client token for other API requests.



=head2 Tags => L<Paws::Resiliencehub::TagMap>

Tags assigned to the resource. A tag is a label that you assign to an
Amazon Web Services resource. Each tag consists of a key/value pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartAppAssessment in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

