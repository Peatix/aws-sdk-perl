
package Paws::SageMaker::DeleteHubContent;
  use Moose;
  has HubContentName => (is => 'ro', isa => 'Str', required => 1);
  has HubContentType => (is => 'ro', isa => 'Str', required => 1);
  has HubContentVersion => (is => 'ro', isa => 'Str', required => 1);
  has HubName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteHubContent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeleteHubContent - Arguments for method DeleteHubContent on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteHubContent on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DeleteHubContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteHubContent.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    $api . sagemaker->DeleteHubContent(
      HubContentName    => 'MyHubContentName',
      HubContentType    => 'Model',
      HubContentVersion => 'MyHubContentVersion',
      HubName           => 'MyHubNameOrArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DeleteHubContent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HubContentName => Str

The name of the content that you want to delete from a hub.



=head2 B<REQUIRED> HubContentType => Str

The type of content that you want to delete from a hub.

Valid values are: C<"Model">, C<"Notebook">, C<"ModelReference">

=head2 B<REQUIRED> HubContentVersion => Str

The version of the content that you want to delete from a hub.



=head2 B<REQUIRED> HubName => Str

The name of the hub that you want to delete content in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteHubContent in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

