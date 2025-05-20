
package Paws::SageMaker::UpdateHubContentReference;
  use Moose;
  has HubContentName => (is => 'ro', isa => 'Str', required => 1);
  has HubContentType => (is => 'ro', isa => 'Str', required => 1);
  has HubName => (is => 'ro', isa => 'Str', required => 1);
  has MinVersion => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateHubContentReference');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateHubContentReferenceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateHubContentReference - Arguments for method UpdateHubContentReference on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateHubContentReference on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateHubContentReference.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateHubContentReference.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateHubContentReferenceResponse =
      $api . sagemaker->UpdateHubContentReference(
      HubContentName => 'MyHubContentName',
      HubContentType => 'Model',
      HubName        => 'MyHubNameOrArn',
      MinVersion     => 'MyHubContentVersion',    # OPTIONAL
      );

    # Results:
    my $HubArn        = $UpdateHubContentReferenceResponse->HubArn;
    my $HubContentArn = $UpdateHubContentReferenceResponse->HubContentArn;

    # Returns a L<Paws::SageMaker::UpdateHubContentReferenceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateHubContentReference>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HubContentName => Str

The name of the hub content resource that you want to update.



=head2 B<REQUIRED> HubContentType => Str

The content type of the resource that you want to update. Only specify
a C<ModelReference> resource for this API. To update a C<Model> or
C<Notebook> resource, use the C<UpdateHubContent> API instead.

Valid values are: C<"Model">, C<"Notebook">, C<"ModelReference">

=head2 B<REQUIRED> HubName => Str

The name of the SageMaker hub that contains the hub content you want to
update. You can optionally use the hub ARN instead.



=head2 MinVersion => Str

The minimum hub content version of the referenced model that you want
to use. The minimum version must be older than the latest available
version of the referenced model. To support all versions of a model,
set the value to C<1.0.0>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateHubContentReference in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

