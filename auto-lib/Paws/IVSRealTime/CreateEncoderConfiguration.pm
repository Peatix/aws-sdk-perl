
package Paws::IVSRealTime::CreateEncoderConfiguration;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Tags => (is => 'ro', isa => 'Paws::IVSRealTime::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has Video => (is => 'ro', isa => 'Paws::IVSRealTime::Video', traits => ['NameInRequest'], request_name => 'video');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEncoderConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateEncoderConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVSRealTime::CreateEncoderConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::CreateEncoderConfiguration - Arguments for method CreateEncoderConfiguration on L<Paws::IVSRealTime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEncoderConfiguration on the
L<Amazon Interactive Video Service RealTime|Paws::IVSRealTime> service. Use the attributes of this class
as arguments to method CreateEncoderConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEncoderConfiguration.

=head1 SYNOPSIS

    my $ivsrealtime = Paws->service('IVSRealTime');
    my $CreateEncoderConfigurationResponse =
      $ivsrealtime->CreateEncoderConfiguration(
      Name => 'MyEncoderConfigurationName',    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Video => {
        Bitrate   => 1,      # min: 1, max: 8500000; OPTIONAL
        Framerate => 1.0,    # min: 1, max: 60; OPTIONAL
        Height    => 1,      # min: 2, max: 1920; OPTIONAL
        Width     => 1,      # min: 2, max: 1920; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $EncoderConfiguration =
      $CreateEncoderConfigurationResponse->EncoderConfiguration;

    # Returns a L<Paws::IVSRealTime::CreateEncoderConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivsrealtime/CreateEncoderConfiguration>

=head1 ATTRIBUTES


=head2 Name => Str

Optional name to identify the resource.



=head2 Tags => L<Paws::IVSRealTime::Tags>

Tags attached to the resource. Array of maps, each of the form
C<string:string (key:value)>. See Best practices and strategies
(https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
in I<Tagging AWS Resources and Tag Editor> for details, including
restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS has no constraints on tags beyond what is
documented there.



=head2 Video => L<Paws::IVSRealTime::Video>

Video configuration. Default: video resolution 1280x720, bitrate 2500
kbps, 30 fps.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEncoderConfiguration in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

