
package Paws::SageMaker::UpdateHub;
  use Moose;
  has HubDescription => (is => 'ro', isa => 'Str');
  has HubDisplayName => (is => 'ro', isa => 'Str');
  has HubName => (is => 'ro', isa => 'Str', required => 1);
  has HubSearchKeywords => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateHub');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateHubResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateHub - Arguments for method UpdateHub on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateHub on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateHub.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateHub.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateHubResponse = $api . sagemaker->UpdateHub(
      HubName           => 'MyHubNameOrArn',
      HubDescription    => 'MyHubDescription',    # OPTIONAL
      HubDisplayName    => 'MyHubDisplayName',    # OPTIONAL
      HubSearchKeywords => [
        'MyHubSearchKeyword', ...                 # max: 255
      ],    # OPTIONAL
    );

    # Results:
    my $HubArn = $UpdateHubResponse->HubArn;

    # Returns a L<Paws::SageMaker::UpdateHubResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateHub>

=head1 ATTRIBUTES


=head2 HubDescription => Str

A description of the updated hub.



=head2 HubDisplayName => Str

The display name of the hub.



=head2 B<REQUIRED> HubName => Str

The name of the hub to update.



=head2 HubSearchKeywords => ArrayRef[Str|Undef]

The searchable keywords for the hub.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateHub in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

