
package Paws::CleanRoomsML::UpdateConfiguredAudienceModel;
  use Moose;
  has AudienceModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'audienceModelArn');
  has AudienceSizeConfig => (is => 'ro', isa => 'Paws::CleanRoomsML::AudienceSizeConfig', traits => ['NameInRequest'], request_name => 'audienceSizeConfig');
  has ConfiguredAudienceModelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredAudienceModelArn', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has MinMatchingSeedSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minMatchingSeedSize');
  has OutputConfig => (is => 'ro', isa => 'Paws::CleanRoomsML::ConfiguredAudienceModelOutputConfig', traits => ['NameInRequest'], request_name => 'outputConfig');
  has SharedAudienceMetrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sharedAudienceMetrics');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfiguredAudienceModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configured-audience-model/{configuredAudienceModelArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::UpdateConfiguredAudienceModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::UpdateConfiguredAudienceModel - Arguments for method UpdateConfiguredAudienceModel on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConfiguredAudienceModel on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method UpdateConfiguredAudienceModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConfiguredAudienceModel.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $UpdateConfiguredAudienceModelResponse =
      $cleanrooms -ml->UpdateConfiguredAudienceModel(
      ConfiguredAudienceModelArn => 'MyConfiguredAudienceModelArn',
      AudienceModelArn           => 'MyAudienceModelArn',             # OPTIONAL
      AudienceSizeConfig         => {
        AudienceSizeBins => [
          1, ...    # min: 1, max: 20000000
        ],    # min: 1, max: 25
        AudienceSizeType => 'ABSOLUTE',    # values: ABSOLUTE, PERCENTAGE

      },    # OPTIONAL
      Description         => 'MyResourceDescription',    # OPTIONAL
      MinMatchingSeedSize => 1,                          # OPTIONAL
      OutputConfig        => {
        Destination => {
          S3Destination => {
            S3Uri => 'MyS3Path',    # min: 1, max: 1285

          },

        },
        RoleArn => 'MyIamRoleArn',    # min: 20, max: 2048

      },    # OPTIONAL
      SharedAudienceMetrics => [
        'ALL', ...    # values: ALL, NONE
      ],    # OPTIONAL
      );

    # Results:
    my $ConfiguredAudienceModelArn =
      $UpdateConfiguredAudienceModelResponse->ConfiguredAudienceModelArn;

# Returns a L<Paws::CleanRoomsML::UpdateConfiguredAudienceModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/UpdateConfiguredAudienceModel>

=head1 ATTRIBUTES


=head2 AudienceModelArn => Str

The Amazon Resource Name (ARN) of the new audience model that you want
to use.



=head2 AudienceSizeConfig => L<Paws::CleanRoomsML::AudienceSizeConfig>

The new audience size configuration.



=head2 B<REQUIRED> ConfiguredAudienceModelArn => Str

The Amazon Resource Name (ARN) of the configured audience model that
you want to update.



=head2 Description => Str

The new description of the configured audience model.



=head2 MinMatchingSeedSize => Int

The minimum number of users from the seed audience that must match with
users in the training data of the audience model.



=head2 OutputConfig => L<Paws::CleanRoomsML::ConfiguredAudienceModelOutputConfig>

The new output configuration.



=head2 SharedAudienceMetrics => ArrayRef[Str|Undef]

The new value for whether to share audience metrics.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConfiguredAudienceModel in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

