
package Paws::IVSRealTime::CreateIngestConfiguration;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::IVSRealTime::ParticipantAttributes', traits => ['NameInRequest'], request_name => 'attributes');
  has IngestProtocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ingestProtocol', required => 1);
  has InsecureIngest => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'insecureIngest');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has StageArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageArn');
  has Tags => (is => 'ro', isa => 'Paws::IVSRealTime::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has UserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIngestConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateIngestConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVSRealTime::CreateIngestConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::CreateIngestConfiguration - Arguments for method CreateIngestConfiguration on L<Paws::IVSRealTime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIngestConfiguration on the
L<Amazon Interactive Video Service RealTime|Paws::IVSRealTime> service. Use the attributes of this class
as arguments to method CreateIngestConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIngestConfiguration.

=head1 SYNOPSIS

    my $ivsrealtime = Paws->service('IVSRealTime');
    my $CreateIngestConfigurationResponse =
      $ivsrealtime->CreateIngestConfiguration(
      IngestProtocol => 'RTMP',
      Attributes     => { 'MyString' => 'MyString', },      # OPTIONAL
      InsecureIngest => 1,                                  # OPTIONAL
      Name           => 'MyIngestConfigurationName',        # OPTIONAL
      StageArn       => 'MyIngestConfigurationStageArn',    # OPTIONAL
      Tags           => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      UserId => 'MyUserId',    # OPTIONAL
      );

    # Results:
    my $IngestConfiguration =
      $CreateIngestConfigurationResponse->IngestConfiguration;

    # Returns a L<Paws::IVSRealTime::CreateIngestConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivsrealtime/CreateIngestConfiguration>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::IVSRealTime::ParticipantAttributes>

Application-provided attributes to store in the IngestConfiguration and
attach to a stage. Map keys and values can contain UTF-8 encoded text.
The maximum length of this field is 1 KB total. I<This field is exposed
to all stage participants and should not be used for personally
identifying, confidential, or sensitive information.>



=head2 B<REQUIRED> IngestProtocol => Str

Type of ingest protocol that the user employs to broadcast. If this is
set to C<RTMP>, C<insecureIngest> must be set to C<true>.

Valid values are: C<"RTMP">, C<"RTMPS">

=head2 InsecureIngest => Bool

Whether the stage allows insecure RTMP ingest. This must be set to
C<true>, if C<ingestProtocol> is set to C<RTMP>. Default: C<false>.



=head2 Name => Str

Optional name that can be specified for the IngestConfiguration being
created.



=head2 StageArn => Str

ARN of the stage with which the IngestConfiguration is associated.



=head2 Tags => L<Paws::IVSRealTime::Tags>

Tags attached to the resource. Array of maps, each of the form
C<string:string (key:value)>. See Best practices and strategies
(https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
in I<Tagging AWS Resources and Tag Editor> for details, including
restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS has no constraints on tags beyond what is
documented there.



=head2 UserId => Str

Customer-assigned name to help identify the participant using the
IngestConfiguration; this can be used to link a participant to a user
in the customerE<rsquo>s own systems. This can be any UTF-8 encoded
text. I<This field is exposed to all stage participants and should not
be used for personally identifying, confidential, or sensitive
information.>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIngestConfiguration in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

