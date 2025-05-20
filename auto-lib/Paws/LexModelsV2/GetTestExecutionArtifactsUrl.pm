
package Paws::LexModelsV2::GetTestExecutionArtifactsUrl;
  use Moose;
  has TestExecutionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testExecutionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTestExecutionArtifactsUrl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testexecutions/{testExecutionId}/artifacturl');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::GetTestExecutionArtifactsUrlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::GetTestExecutionArtifactsUrl - Arguments for method GetTestExecutionArtifactsUrl on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTestExecutionArtifactsUrl on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method GetTestExecutionArtifactsUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTestExecutionArtifactsUrl.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $GetTestExecutionArtifactsUrlResponse =
      $models - v2 -lex->GetTestExecutionArtifactsUrl(
      TestExecutionId => 'MyId',

      );

    # Results:
    my $DownloadArtifactsUrl =
      $GetTestExecutionArtifactsUrlResponse->DownloadArtifactsUrl;
    my $TestExecutionId =
      $GetTestExecutionArtifactsUrlResponse->TestExecutionId;

  # Returns a L<Paws::LexModelsV2::GetTestExecutionArtifactsUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/GetTestExecutionArtifactsUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestExecutionId => Str

The unique identifier of the completed test execution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTestExecutionArtifactsUrl in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

