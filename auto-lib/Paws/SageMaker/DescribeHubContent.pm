
package Paws::SageMaker::DescribeHubContent;
  use Moose;
  has HubContentName => (is => 'ro', isa => 'Str', required => 1);
  has HubContentType => (is => 'ro', isa => 'Str', required => 1);
  has HubContentVersion => (is => 'ro', isa => 'Str');
  has HubName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHubContent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeHubContentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeHubContent - Arguments for method DescribeHubContent on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHubContent on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeHubContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHubContent.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeHubContentResponse = $api . sagemaker->DescribeHubContent(
      HubContentName    => 'MyHubContentName',
      HubContentType    => 'Model',
      HubName           => 'MyHubNameOrArn',
      HubContentVersion => 'MyHubContentVersion',    # OPTIONAL
    );

    # Results:
    my $CreationTime = $DescribeHubContentResponse->CreationTime;
    my $DocumentSchemaVersion =
      $DescribeHubContentResponse->DocumentSchemaVersion;
    my $FailureReason = $DescribeHubContentResponse->FailureReason;
    my $HubArn        = $DescribeHubContentResponse->HubArn;
    my $HubContentArn = $DescribeHubContentResponse->HubContentArn;
    my $HubContentDependencies =
      $DescribeHubContentResponse->HubContentDependencies;
    my $HubContentDescription =
      $DescribeHubContentResponse->HubContentDescription;
    my $HubContentDisplayName =
      $DescribeHubContentResponse->HubContentDisplayName;
    my $HubContentDocument = $DescribeHubContentResponse->HubContentDocument;
    my $HubContentMarkdown = $DescribeHubContentResponse->HubContentMarkdown;
    my $HubContentName     = $DescribeHubContentResponse->HubContentName;
    my $HubContentSearchKeywords =
      $DescribeHubContentResponse->HubContentSearchKeywords;
    my $HubContentStatus    = $DescribeHubContentResponse->HubContentStatus;
    my $HubContentType      = $DescribeHubContentResponse->HubContentType;
    my $HubContentVersion   = $DescribeHubContentResponse->HubContentVersion;
    my $HubName             = $DescribeHubContentResponse->HubName;
    my $LastModifiedTime    = $DescribeHubContentResponse->LastModifiedTime;
    my $ReferenceMinVersion = $DescribeHubContentResponse->ReferenceMinVersion;
    my $SageMakerPublicHubContentArn =
      $DescribeHubContentResponse->SageMakerPublicHubContentArn;
    my $SupportStatus = $DescribeHubContentResponse->SupportStatus;

    # Returns a L<Paws::SageMaker::DescribeHubContentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeHubContent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HubContentName => Str

The name of the content to describe.



=head2 B<REQUIRED> HubContentType => Str

The type of content in the hub.

Valid values are: C<"Model">, C<"Notebook">, C<"ModelReference">

=head2 HubContentVersion => Str

The version of the content to describe.



=head2 B<REQUIRED> HubName => Str

The name of the hub that contains the content to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHubContent in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

