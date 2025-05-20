
package Paws::SageMaker::UpdateHubContent;
  use Moose;
  has HubContentDescription => (is => 'ro', isa => 'Str');
  has HubContentDisplayName => (is => 'ro', isa => 'Str');
  has HubContentMarkdown => (is => 'ro', isa => 'Str');
  has HubContentName => (is => 'ro', isa => 'Str', required => 1);
  has HubContentSearchKeywords => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has HubContentType => (is => 'ro', isa => 'Str', required => 1);
  has HubContentVersion => (is => 'ro', isa => 'Str', required => 1);
  has HubName => (is => 'ro', isa => 'Str', required => 1);
  has SupportStatus => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateHubContent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateHubContentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateHubContent - Arguments for method UpdateHubContent on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateHubContent on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateHubContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateHubContent.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateHubContentResponse = $api . sagemaker->UpdateHubContent(
      HubContentName           => 'MyHubContentName',
      HubContentType           => 'Model',
      HubContentVersion        => 'MyHubContentVersion',
      HubName                  => 'MyHubNameOrArn',
      HubContentDescription    => 'MyHubContentDescription',    # OPTIONAL
      HubContentDisplayName    => 'MyHubContentDisplayName',    # OPTIONAL
      HubContentMarkdown       => 'MyHubContentMarkdown',       # OPTIONAL
      HubContentSearchKeywords => [
        'MyHubSearchKeyword', ...                               # max: 255
      ],    # OPTIONAL
      SupportStatus => 'Supported',    # OPTIONAL
    );

    # Results:
    my $HubArn        = $UpdateHubContentResponse->HubArn;
    my $HubContentArn = $UpdateHubContentResponse->HubContentArn;

    # Returns a L<Paws::SageMaker::UpdateHubContentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateHubContent>

=head1 ATTRIBUTES


=head2 HubContentDescription => Str

The description of the hub content.



=head2 HubContentDisplayName => Str

The display name of the hub content.



=head2 HubContentMarkdown => Str

A string that provides a description of the hub content. This string
can include links, tables, and standard markdown formatting.



=head2 B<REQUIRED> HubContentName => Str

The name of the hub content resource that you want to update.



=head2 HubContentSearchKeywords => ArrayRef[Str|Undef]

The searchable keywords of the hub content.



=head2 B<REQUIRED> HubContentType => Str

The content type of the resource that you want to update. Only specify
a C<Model> or C<Notebook> resource for this API. To update a
C<ModelReference>, use the C<UpdateHubContentReference> API instead.

Valid values are: C<"Model">, C<"Notebook">, C<"ModelReference">

=head2 B<REQUIRED> HubContentVersion => Str

The hub content version that you want to update. For example, if you
have two versions of a resource in your hub, you can update the second
version.



=head2 B<REQUIRED> HubName => Str

The name of the SageMaker hub that contains the hub content you want to
update. You can optionally use the hub ARN instead.



=head2 SupportStatus => Str

Indicates the current status of the hub content resource.

Valid values are: C<"Supported">, C<"Deprecated">, C<"Restricted">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateHubContent in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

