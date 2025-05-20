
package Paws::CleanRoomsML::GetConfiguredAudienceModel;
  use Moose;
  has ConfiguredAudienceModelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredAudienceModelArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConfiguredAudienceModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configured-audience-model/{configuredAudienceModelArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::GetConfiguredAudienceModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetConfiguredAudienceModel - Arguments for method GetConfiguredAudienceModel on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfiguredAudienceModel on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method GetConfiguredAudienceModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfiguredAudienceModel.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $GetConfiguredAudienceModelResponse =
      $cleanrooms -ml->GetConfiguredAudienceModel(
      ConfiguredAudienceModelArn => 'MyConfiguredAudienceModelArn',

      );

    # Results:
    my $AudienceModelArn =
      $GetConfiguredAudienceModelResponse->AudienceModelArn;
    my $AudienceSizeConfig =
      $GetConfiguredAudienceModelResponse->AudienceSizeConfig;
    my $ChildResourceTagOnCreatePolicy =
      $GetConfiguredAudienceModelResponse->ChildResourceTagOnCreatePolicy;
    my $ConfiguredAudienceModelArn =
      $GetConfiguredAudienceModelResponse->ConfiguredAudienceModelArn;
    my $CreateTime  = $GetConfiguredAudienceModelResponse->CreateTime;
    my $Description = $GetConfiguredAudienceModelResponse->Description;
    my $MinMatchingSeedSize =
      $GetConfiguredAudienceModelResponse->MinMatchingSeedSize;
    my $Name         = $GetConfiguredAudienceModelResponse->Name;
    my $OutputConfig = $GetConfiguredAudienceModelResponse->OutputConfig;
    my $SharedAudienceMetrics =
      $GetConfiguredAudienceModelResponse->SharedAudienceMetrics;
    my $Status     = $GetConfiguredAudienceModelResponse->Status;
    my $Tags       = $GetConfiguredAudienceModelResponse->Tags;
    my $UpdateTime = $GetConfiguredAudienceModelResponse->UpdateTime;

   # Returns a L<Paws::CleanRoomsML::GetConfiguredAudienceModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/GetConfiguredAudienceModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredAudienceModelArn => Str

The Amazon Resource Name (ARN) of the configured audience model that
you are interested in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfiguredAudienceModel in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

