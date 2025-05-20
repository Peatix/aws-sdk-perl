
package Paws::SageMaker::CreateHubContentReference;
  use Moose;
  has HubContentName => (is => 'ro', isa => 'Str');
  has HubName => (is => 'ro', isa => 'Str', required => 1);
  has MinVersion => (is => 'ro', isa => 'Str');
  has SageMakerPublicHubContentArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHubContentReference');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateHubContentReferenceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateHubContentReference - Arguments for method CreateHubContentReference on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHubContentReference on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateHubContentReference.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHubContentReference.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateHubContentReferenceResponse =
      $api . sagemaker->CreateHubContentReference(
      HubName                      => 'MyHubNameOrArn',
      SageMakerPublicHubContentArn => 'MySageMakerPublicHubContentArn',
      HubContentName               => 'MyHubContentName',       # OPTIONAL
      MinVersion                   => 'MyHubContentVersion',    # OPTIONAL
      Tags                         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $HubArn        = $CreateHubContentReferenceResponse->HubArn;
    my $HubContentArn = $CreateHubContentReferenceResponse->HubContentArn;

    # Returns a L<Paws::SageMaker::CreateHubContentReferenceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateHubContentReference>

=head1 ATTRIBUTES


=head2 HubContentName => Str

The name of the hub content to reference.



=head2 B<REQUIRED> HubName => Str

The name of the hub to add the hub content reference to.



=head2 MinVersion => Str

The minimum version of the hub content to reference.



=head2 B<REQUIRED> SageMakerPublicHubContentArn => Str

The ARN of the public hub content to reference.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Any tags associated with the hub content to reference.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHubContentReference in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

