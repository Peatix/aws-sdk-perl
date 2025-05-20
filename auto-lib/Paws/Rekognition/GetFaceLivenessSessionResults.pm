
package Paws::Rekognition::GetFaceLivenessSessionResults;
  use Moose;
  has SessionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFaceLivenessSessionResults');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::GetFaceLivenessSessionResultsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetFaceLivenessSessionResults - Arguments for method GetFaceLivenessSessionResults on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFaceLivenessSessionResults on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method GetFaceLivenessSessionResults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFaceLivenessSessionResults.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $GetFaceLivenessSessionResultsResponse =
      $rekognition->GetFaceLivenessSessionResults(
      SessionId => 'MyLivenessSessionId',

      );

    # Results:
    my $AuditImages    = $GetFaceLivenessSessionResultsResponse->AuditImages;
    my $Confidence     = $GetFaceLivenessSessionResultsResponse->Confidence;
    my $ReferenceImage = $GetFaceLivenessSessionResultsResponse->ReferenceImage;
    my $SessionId      = $GetFaceLivenessSessionResultsResponse->SessionId;
    my $Status         = $GetFaceLivenessSessionResultsResponse->Status;

 # Returns a L<Paws::Rekognition::GetFaceLivenessSessionResultsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/GetFaceLivenessSessionResults>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SessionId => Str

A unique 128-bit UUID. This is used to uniquely identify the session
and also acts as an idempotency token for all operations associated
with the session.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFaceLivenessSessionResults in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

