
package Paws::Rekognition::UpdateStreamProcessor;
  use Moose;
  has DataSharingPreferenceForUpdate => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorDataSharingPreference');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ParametersToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RegionsOfInterestForUpdate => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::RegionOfInterest]');
  has SettingsForUpdate => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorSettingsForUpdate');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStreamProcessor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::UpdateStreamProcessorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::UpdateStreamProcessor - Arguments for method UpdateStreamProcessor on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStreamProcessor on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method UpdateStreamProcessor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStreamProcessor.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $UpdateStreamProcessorResponse = $rekognition->UpdateStreamProcessor(
      Name                           => 'MyStreamProcessorName',
      DataSharingPreferenceForUpdate => {
        OptIn => 1,

      },    # OPTIONAL
      ParametersToDelete => [
        'ConnectedHomeMinConfidence',
        ...    # values: ConnectedHomeMinConfidence, RegionsOfInterest
      ],    # OPTIONAL
      RegionsOfInterestForUpdate => [
        {
          BoundingBox => {
            Height => 1.0,    # OPTIONAL
            Left   => 1.0,    # OPTIONAL
            Top    => 1.0,    # OPTIONAL
            Width  => 1.0,    # OPTIONAL
          },    # OPTIONAL
          Polygon => [
            {
              X => 1.0,    # OPTIONAL
              Y => 1.0,    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SettingsForUpdate => {
        ConnectedHomeForUpdate => {
          Labels => [ 'MyConnectedHomeLabel', ... ]
          ,                        # min: 1, max: 128; OPTIONAL
          MinConfidence => 1.0,    # max: 100; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/UpdateStreamProcessor>

=head1 ATTRIBUTES


=head2 DataSharingPreferenceForUpdate => L<Paws::Rekognition::StreamProcessorDataSharingPreference>

Shows whether you are sharing data with Rekognition to improve model
performance. You can choose this option at the account level or on a
per-stream basis. Note that if you opt out at the account level this
setting is ignored on individual streams.



=head2 B<REQUIRED> Name => Str

Name of the stream processor that you want to update.



=head2 ParametersToDelete => ArrayRef[Str|Undef]

A list of parameters you want to delete from the stream processor.



=head2 RegionsOfInterestForUpdate => ArrayRef[L<Paws::Rekognition::RegionOfInterest>]

Specifies locations in the frames where Amazon Rekognition checks for
objects or people. This is an optional parameter for label detection
stream processors.



=head2 SettingsForUpdate => L<Paws::Rekognition::StreamProcessorSettingsForUpdate>

The stream processor settings that you want to update. Label detection
settings can be updated to detect different labels with a different
minimum confidence.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStreamProcessor in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

