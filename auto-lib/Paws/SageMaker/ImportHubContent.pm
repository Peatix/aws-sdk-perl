
package Paws::SageMaker::ImportHubContent;
  use Moose;
  has DocumentSchemaVersion => (is => 'ro', isa => 'Str', required => 1);
  has HubContentDescription => (is => 'ro', isa => 'Str');
  has HubContentDisplayName => (is => 'ro', isa => 'Str');
  has HubContentDocument => (is => 'ro', isa => 'Str', required => 1);
  has HubContentMarkdown => (is => 'ro', isa => 'Str');
  has HubContentName => (is => 'ro', isa => 'Str', required => 1);
  has HubContentSearchKeywords => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has HubContentType => (is => 'ro', isa => 'Str', required => 1);
  has HubContentVersion => (is => 'ro', isa => 'Str');
  has HubName => (is => 'ro', isa => 'Str', required => 1);
  has SupportStatus => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportHubContent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ImportHubContentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ImportHubContent - Arguments for method ImportHubContent on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportHubContent on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ImportHubContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportHubContent.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ImportHubContentResponse = $api . sagemaker->ImportHubContent(
      DocumentSchemaVersion    => 'MyDocumentSchemaVersion',
      HubContentDocument       => 'MyHubContentDocument',
      HubContentName           => 'MyHubContentName',
      HubContentType           => 'Model',
      HubName                  => 'MyHubNameOrArn',
      HubContentDescription    => 'MyHubContentDescription',    # OPTIONAL
      HubContentDisplayName    => 'MyHubContentDisplayName',    # OPTIONAL
      HubContentMarkdown       => 'MyHubContentMarkdown',       # OPTIONAL
      HubContentSearchKeywords => [
        'MyHubSearchKeyword', ...                               # max: 255
      ],    # OPTIONAL
      HubContentVersion => 'MyHubContentVersion',    # OPTIONAL
      SupportStatus     => 'Supported',              # OPTIONAL
      Tags              => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $HubArn        = $ImportHubContentResponse->HubArn;
    my $HubContentArn = $ImportHubContentResponse->HubContentArn;

    # Returns a L<Paws::SageMaker::ImportHubContentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ImportHubContent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DocumentSchemaVersion => Str

The version of the hub content schema to import.



=head2 HubContentDescription => Str

A description of the hub content to import.



=head2 HubContentDisplayName => Str

The display name of the hub content to import.



=head2 B<REQUIRED> HubContentDocument => Str

The hub content document that describes information about the hub
content such as type, associated containers, scripts, and more.



=head2 HubContentMarkdown => Str

A string that provides a description of the hub content. This string
can include links, tables, and standard markdown formating.



=head2 B<REQUIRED> HubContentName => Str

The name of the hub content to import.



=head2 HubContentSearchKeywords => ArrayRef[Str|Undef]

The searchable keywords of the hub content.



=head2 B<REQUIRED> HubContentType => Str

The type of hub content to import.

Valid values are: C<"Model">, C<"Notebook">, C<"ModelReference">

=head2 HubContentVersion => Str

The version of the hub content to import.



=head2 B<REQUIRED> HubName => Str

The name of the hub to import content into.



=head2 SupportStatus => Str

The status of the hub content resource.

Valid values are: C<"Supported">, C<"Deprecated">, C<"Restricted">

=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Any tags associated with the hub content.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportHubContent in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

