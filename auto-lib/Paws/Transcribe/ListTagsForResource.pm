
package Paws::Transcribe::ListTagsForResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::ListTagsForResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $ListTagsForResourceResponse = $transcribe->ListTagsForResource(
      ResourceArn => 'MyTranscribeArn',

    );

    # Results:
    my $ResourceArn = $ListTagsForResourceResponse->ResourceArn;
    my $Tags        = $ListTagsForResourceResponse->Tags;

    # Returns a L<Paws::Transcribe::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

Returns a list of all tags associated with the specified Amazon
Resource Name (ARN). ARNs have the format
C<arn:partition:service:region:account-id:resource-type/resource-id>.

For example,
C<arn:aws:transcribe:us-west-2:111122223333:transcription-job/transcription-job-name>.

Valid values for C<resource-type> are: C<transcription-job>,
C<medical-transcription-job>, C<vocabulary>, C<medical-vocabulary>,
C<vocabulary-filter>, and C<language-model>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

