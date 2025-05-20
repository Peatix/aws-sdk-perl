
package Paws::SageMaker::CreateHub;
  use Moose;
  has HubDescription => (is => 'ro', isa => 'Str', required => 1);
  has HubDisplayName => (is => 'ro', isa => 'Str');
  has HubName => (is => 'ro', isa => 'Str', required => 1);
  has HubSearchKeywords => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has S3StorageConfig => (is => 'ro', isa => 'Paws::SageMaker::HubS3StorageConfig');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHub');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateHubResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateHub - Arguments for method CreateHub on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHub on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateHub.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHub.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateHubResponse = $api . sagemaker->CreateHub(
      HubDescription    => 'MyHubDescription',
      HubName           => 'MyHubName',
      HubDisplayName    => 'MyHubDisplayName',    # OPTIONAL
      HubSearchKeywords => [
        'MyHubSearchKeyword', ...                 # max: 255
      ],    # OPTIONAL
      S3StorageConfig => {
        S3OutputPath => 'MyS3OutputPath',    # max: 1024; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $HubArn = $CreateHubResponse->HubArn;

    # Returns a L<Paws::SageMaker::CreateHubResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateHub>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HubDescription => Str

A description of the hub.



=head2 HubDisplayName => Str

The display name of the hub.



=head2 B<REQUIRED> HubName => Str

The name of the hub to create.



=head2 HubSearchKeywords => ArrayRef[Str|Undef]

The searchable keywords for the hub.



=head2 S3StorageConfig => L<Paws::SageMaker::HubS3StorageConfig>

The Amazon S3 storage configuration for the hub.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Any tags to associate with the hub.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHub in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

