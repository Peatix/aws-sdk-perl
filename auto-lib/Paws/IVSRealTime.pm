package Paws::IVSRealTime;
  use Moose;
  sub service { 'ivsrealtime' }
  sub signing_name { 'ivs' }
  sub version { '2020-07-14' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateEncoderConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::CreateEncoderConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIngestConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::CreateIngestConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateParticipantToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::CreateParticipantToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::CreateStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStorageConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::CreateStorageConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEncoderConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::DeleteEncoderConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIngestConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::DeleteIngestConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::DeletePublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::DeleteStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStorageConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::DeleteStorageConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisconnectParticipant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::DisconnectParticipant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComposition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::GetComposition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEncoderConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::GetEncoderConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIngestConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::GetIngestConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetParticipant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::GetParticipant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::GetPublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::GetStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStageSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::GetStageSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStorageConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::GetStorageConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportPublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::ImportPublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCompositions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::ListCompositions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEncoderConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::ListEncoderConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIngestConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::ListIngestConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListParticipantEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::ListParticipantEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListParticipants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::ListParticipants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPublicKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::ListPublicKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::ListStages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStageSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::ListStageSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStorageConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::ListStorageConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartComposition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::StartComposition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopComposition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::StopComposition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIngestConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::UpdateIngestConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IVSRealTime::UpdateStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllIngestConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIngestConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListIngestConfigurations(@_, nextToken => $next_result->nextToken);
        push @{ $result->ingestConfigurations }, @{ $next_result->ingestConfigurations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'ingestConfigurations') foreach (@{ $result->ingestConfigurations });
        $result = $self->ListIngestConfigurations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'ingestConfigurations') foreach (@{ $result->ingestConfigurations });
    }

    return undef
  }
  sub ListAllPublicKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPublicKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPublicKeys(@_, nextToken => $next_result->nextToken);
        push @{ $result->publicKeys }, @{ $next_result->publicKeys };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'publicKeys') foreach (@{ $result->publicKeys });
        $result = $self->ListPublicKeys(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'publicKeys') foreach (@{ $result->publicKeys });
    }

    return undef
  }


  sub operations { qw/CreateEncoderConfiguration CreateIngestConfiguration CreateParticipantToken CreateStage CreateStorageConfiguration DeleteEncoderConfiguration DeleteIngestConfiguration DeletePublicKey DeleteStage DeleteStorageConfiguration DisconnectParticipant GetComposition GetEncoderConfiguration GetIngestConfiguration GetParticipant GetPublicKey GetStage GetStageSession GetStorageConfiguration ImportPublicKey ListCompositions ListEncoderConfigurations ListIngestConfigurations ListParticipantEvents ListParticipants ListPublicKeys ListStages ListStageSessions ListStorageConfigurations ListTagsForResource StartComposition StopComposition TagResource UntagResource UpdateIngestConfiguration UpdateStage / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime - Perl Interface to AWS Amazon Interactive Video Service RealTime

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IVSRealTime');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

The Amazon Interactive Video Service (IVS) real-time API is REST
compatible, using a standard HTTP API and an AWS EventBridge event
stream for responses. JSON is used for both requests and responses,
including errors.

B<Key Concepts>

=over

=item *

B<Stage> E<mdash> A virtual space where participants can exchange video
in real time.

=item *

B<Participant token> E<mdash> A token that authenticates a participant
when they join a stage.

=item *

B<Participant object> E<mdash> Represents participants (people) in the
stage and contains information about them. When a token is created, it
includes a participant ID; when a participant uses that token to join a
stage, the participant is associated with that participant ID. There is
a 1:1 mapping between participant tokens and participants.

=back

For server-side composition:

=over

=item *

B<Composition process> E<mdash> Composites participants of a stage into
a single video and forwards it to a set of outputs (e.g., IVS
channels). Composition operations support this process.

=item *

B<Composition> E<mdash> Controls the look of the outputs, including how
participants are positioned in the video.

=back

For more information about your IVS live stream, also see Getting
Started with Amazon IVS Real-Time Streaming
(https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started.html).

B<Tagging>

A I<tag> is a metadata label that you assign to an AWS resource. A tag
comprises a I<key> and a I<value>, both set by you. For example, you
might set a tag as C<topic:nature> to label a particular video
category. See Best practices and strategies
(https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
in I<Tagging AWS Resources and Tag Editor> for details, including
restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS stages has no service-specific constraints
beyond what is documented there.

Tags can help you identify and organize your AWS resources. For
example, you can use the same tag for different resources to indicate
that they are related. You can also use tags to manage access (see
Access Tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html)).

The Amazon IVS real-time API has these tag-related operations:
TagResource, UntagResource, and ListTagsForResource. The following
resource supports tagging: Stage.

At most 50 tags can be applied to a resource.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivsrealtime-2020-07-14>


=head1 METHODS

=head2 CreateEncoderConfiguration

=over

=item [Name => Str]

=item [Tags => L<Paws::IVSRealTime::Tags>]

=item [Video => L<Paws::IVSRealTime::Video>]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::CreateEncoderConfiguration>

Returns: a L<Paws::IVSRealTime::CreateEncoderConfigurationResponse> instance

Creates an EncoderConfiguration object.


=head2 CreateIngestConfiguration

=over

=item IngestProtocol => Str

=item [Attributes => L<Paws::IVSRealTime::ParticipantAttributes>]

=item [InsecureIngest => Bool]

=item [Name => Str]

=item [StageArn => Str]

=item [Tags => L<Paws::IVSRealTime::Tags>]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::CreateIngestConfiguration>

Returns: a L<Paws::IVSRealTime::CreateIngestConfigurationResponse> instance

Creates a new IngestConfiguration resource, used to specify the ingest
protocol for a stage.


=head2 CreateParticipantToken

=over

=item StageArn => Str

=item [Attributes => L<Paws::IVSRealTime::ParticipantTokenAttributes>]

=item [Capabilities => ArrayRef[Str|Undef]]

=item [Duration => Int]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::CreateParticipantToken>

Returns: a L<Paws::IVSRealTime::CreateParticipantTokenResponse> instance

Creates an additional token for a specified stage. This can be done
after stage creation or when tokens expire. Tokens always are scoped to
the stage for which they are created.

Encryption keys are owned by Amazon IVS and never used directly by your
application.


=head2 CreateStage

=over

=item [AutoParticipantRecordingConfiguration => L<Paws::IVSRealTime::AutoParticipantRecordingConfiguration>]

=item [Name => Str]

=item [ParticipantTokenConfigurations => ArrayRef[L<Paws::IVSRealTime::ParticipantTokenConfiguration>]]

=item [Tags => L<Paws::IVSRealTime::Tags>]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::CreateStage>

Returns: a L<Paws::IVSRealTime::CreateStageResponse> instance

Creates a new stage (and optionally participant tokens).


=head2 CreateStorageConfiguration

=over

=item S3 => L<Paws::IVSRealTime::S3StorageConfiguration>

=item [Name => Str]

=item [Tags => L<Paws::IVSRealTime::Tags>]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::CreateStorageConfiguration>

Returns: a L<Paws::IVSRealTime::CreateStorageConfigurationResponse> instance

Creates a new storage configuration, used to enable recording to Amazon
S3. When a StorageConfiguration is created, IVS will modify the S3
bucketPolicy of the provided bucket. This will ensure that IVS has
sufficient permissions to write content to the provided bucket.


=head2 DeleteEncoderConfiguration

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVSRealTime::DeleteEncoderConfiguration>

Returns: a L<Paws::IVSRealTime::DeleteEncoderConfigurationResponse> instance

Deletes an EncoderConfiguration resource. Ensures that no Compositions
are using this template; otherwise, returns an error.


=head2 DeleteIngestConfiguration

=over

=item Arn => Str

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::DeleteIngestConfiguration>

Returns: a L<Paws::IVSRealTime::DeleteIngestConfigurationResponse> instance

Deletes a specified IngestConfiguration, so it can no longer be used to
broadcast. An IngestConfiguration cannot be deleted if the publisher is
actively streaming to a stage, unless C<force> is set to C<true>.


=head2 DeletePublicKey

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVSRealTime::DeletePublicKey>

Returns: a L<Paws::IVSRealTime::DeletePublicKeyResponse> instance

Deletes the specified public key used to sign stage participant tokens.
This invalidates future participant tokens generated using the key
pairE<rsquo>s private key.


=head2 DeleteStage

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVSRealTime::DeleteStage>

Returns: a L<Paws::IVSRealTime::DeleteStageResponse> instance

Shuts down and deletes the specified stage (disconnecting all
participants). This operation also removes the C<stageArn> from the
associated IngestConfiguration, if there are participants using the
IngestConfiguration to publish to the stage.


=head2 DeleteStorageConfiguration

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVSRealTime::DeleteStorageConfiguration>

Returns: a L<Paws::IVSRealTime::DeleteStorageConfigurationResponse> instance

Deletes the storage configuration for the specified ARN.

If you try to delete a storage configuration that is used by a
Composition, you will get an error (409 ConflictException). To avoid
this, for all Compositions that reference the storage configuration,
first use StopComposition and wait for it to complete, then use
DeleteStorageConfiguration.


=head2 DisconnectParticipant

=over

=item ParticipantId => Str

=item StageArn => Str

=item [Reason => Str]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::DisconnectParticipant>

Returns: a L<Paws::IVSRealTime::DisconnectParticipantResponse> instance

Disconnects a specified participant from a specified stage. If the
participant is publishing using an IngestConfiguration,
DisconnectParticipant also updates the C<stageArn> in the
IngestConfiguration to be an empty string.


=head2 GetComposition

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVSRealTime::GetComposition>

Returns: a L<Paws::IVSRealTime::GetCompositionResponse> instance

Get information about the specified Composition resource.


=head2 GetEncoderConfiguration

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVSRealTime::GetEncoderConfiguration>

Returns: a L<Paws::IVSRealTime::GetEncoderConfigurationResponse> instance

Gets information about the specified EncoderConfiguration resource.


=head2 GetIngestConfiguration

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVSRealTime::GetIngestConfiguration>

Returns: a L<Paws::IVSRealTime::GetIngestConfigurationResponse> instance

Gets information about the specified IngestConfiguration.


=head2 GetParticipant

=over

=item ParticipantId => Str

=item SessionId => Str

=item StageArn => Str


=back

Each argument is described in detail in: L<Paws::IVSRealTime::GetParticipant>

Returns: a L<Paws::IVSRealTime::GetParticipantResponse> instance

Gets information about the specified participant token.


=head2 GetPublicKey

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVSRealTime::GetPublicKey>

Returns: a L<Paws::IVSRealTime::GetPublicKeyResponse> instance

Gets information for the specified public key.


=head2 GetStage

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVSRealTime::GetStage>

Returns: a L<Paws::IVSRealTime::GetStageResponse> instance

Gets information for the specified stage.


=head2 GetStageSession

=over

=item SessionId => Str

=item StageArn => Str


=back

Each argument is described in detail in: L<Paws::IVSRealTime::GetStageSession>

Returns: a L<Paws::IVSRealTime::GetStageSessionResponse> instance

Gets information for the specified stage session.


=head2 GetStorageConfiguration

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVSRealTime::GetStorageConfiguration>

Returns: a L<Paws::IVSRealTime::GetStorageConfigurationResponse> instance

Gets the storage configuration for the specified ARN.


=head2 ImportPublicKey

=over

=item PublicKeyMaterial => Str

=item [Name => Str]

=item [Tags => L<Paws::IVSRealTime::Tags>]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::ImportPublicKey>

Returns: a L<Paws::IVSRealTime::ImportPublicKeyResponse> instance

Import a public key to be used for signing stage participant tokens.


=head2 ListCompositions

=over

=item [FilterByEncoderConfigurationArn => Str]

=item [FilterByStageArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::ListCompositions>

Returns: a L<Paws::IVSRealTime::ListCompositionsResponse> instance

Gets summary information about all Compositions in your account, in the
AWS region where the API request is processed.


=head2 ListEncoderConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::ListEncoderConfigurations>

Returns: a L<Paws::IVSRealTime::ListEncoderConfigurationsResponse> instance

Gets summary information about all EncoderConfigurations in your
account, in the AWS region where the API request is processed.


=head2 ListIngestConfigurations

=over

=item [FilterByStageArn => Str]

=item [FilterByState => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::ListIngestConfigurations>

Returns: a L<Paws::IVSRealTime::ListIngestConfigurationsResponse> instance

Lists all IngestConfigurations in your account, in the AWS region where
the API request is processed.


=head2 ListParticipantEvents

=over

=item ParticipantId => Str

=item SessionId => Str

=item StageArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::ListParticipantEvents>

Returns: a L<Paws::IVSRealTime::ListParticipantEventsResponse> instance

Lists events for a specified participant that occurred during a
specified stage session.


=head2 ListParticipants

=over

=item SessionId => Str

=item StageArn => Str

=item [FilterByPublished => Bool]

=item [FilterByRecordingState => Str]

=item [FilterByState => Str]

=item [FilterByUserId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::ListParticipants>

Returns: a L<Paws::IVSRealTime::ListParticipantsResponse> instance

Lists all participants in a specified stage session.


=head2 ListPublicKeys

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::ListPublicKeys>

Returns: a L<Paws::IVSRealTime::ListPublicKeysResponse> instance

Gets summary information about all public keys in your account, in the
AWS region where the API request is processed.


=head2 ListStages

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::ListStages>

Returns: a L<Paws::IVSRealTime::ListStagesResponse> instance

Gets summary information about all stages in your account, in the AWS
region where the API request is processed.


=head2 ListStageSessions

=over

=item StageArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::ListStageSessions>

Returns: a L<Paws::IVSRealTime::ListStageSessionsResponse> instance

Gets all sessions for a specified stage.


=head2 ListStorageConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::ListStorageConfigurations>

Returns: a L<Paws::IVSRealTime::ListStorageConfigurationsResponse> instance

Gets summary information about all storage configurations in your
account, in the AWS region where the API request is processed.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::IVSRealTime::ListTagsForResource>

Returns: a L<Paws::IVSRealTime::ListTagsForResourceResponse> instance

Gets information about AWS tags for the specified ARN.


=head2 StartComposition

=over

=item Destinations => ArrayRef[L<Paws::IVSRealTime::DestinationConfiguration>]

=item StageArn => Str

=item [IdempotencyToken => Str]

=item [Layout => L<Paws::IVSRealTime::LayoutConfiguration>]

=item [Tags => L<Paws::IVSRealTime::Tags>]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::StartComposition>

Returns: a L<Paws::IVSRealTime::StartCompositionResponse> instance

Starts a Composition from a stage based on the configuration provided
in the request.

A Composition is an ephemeral resource that exists after this operation
returns successfully. Composition stops and the resource is deleted:

=over

=item *

When StopComposition is called.

=item *

After a 1-minute timeout, when all participants are disconnected from
the stage.

=item *

After a 1-minute timeout, if there are no participants in the stage
when StartComposition is called.

=item *

When broadcasting to the IVS channel fails and all retries are
exhausted.

=item *

When broadcasting is disconnected and all attempts to reconnect are
exhausted.

=back



=head2 StopComposition

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::IVSRealTime::StopComposition>

Returns: a L<Paws::IVSRealTime::StopCompositionResponse> instance

Stops and deletes a Composition resource. Any broadcast from the
Composition resource is stopped.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::IVSRealTime::Tags>


=back

Each argument is described in detail in: L<Paws::IVSRealTime::TagResource>

Returns: a L<Paws::IVSRealTime::TagResourceResponse> instance

Adds or updates tags for the AWS resource with the specified ARN.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::UntagResource>

Returns: a L<Paws::IVSRealTime::UntagResourceResponse> instance

Removes tags from the resource with the specified ARN.


=head2 UpdateIngestConfiguration

=over

=item Arn => Str

=item [StageArn => Str]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::UpdateIngestConfiguration>

Returns: a L<Paws::IVSRealTime::UpdateIngestConfigurationResponse> instance

Updates a specified IngestConfiguration. Only the stage ARN attached to
the IngestConfiguration can be updated. An IngestConfiguration that is
active cannot be updated.


=head2 UpdateStage

=over

=item Arn => Str

=item [AutoParticipantRecordingConfiguration => L<Paws::IVSRealTime::AutoParticipantRecordingConfiguration>]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::IVSRealTime::UpdateStage>

Returns: a L<Paws::IVSRealTime::UpdateStageResponse> instance

Updates a stageE<rsquo>s configuration.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllIngestConfigurations(sub { },[FilterByStageArn => Str, FilterByState => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllIngestConfigurations([FilterByStageArn => Str, FilterByState => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ingestConfigurations, passing the object as the first parameter, and the string 'ingestConfigurations' as the second parameter 

If not, it will return a a L<Paws::IVSRealTime::ListIngestConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPublicKeys(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPublicKeys([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - publicKeys, passing the object as the first parameter, and the string 'publicKeys' as the second parameter 

If not, it will return a a L<Paws::IVSRealTime::ListPublicKeysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

