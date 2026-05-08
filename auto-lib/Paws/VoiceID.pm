package Paws::VoiceID;
  use Moose;
  sub service { 'voiceid' }
  sub signing_name { 'voiceid' }
  sub version { '2021-09-27' }
  sub target_prefix { 'VoiceID' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateFraudster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::AssociateFraudster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::CreateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWatchlist {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::CreateWatchlist', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::DeleteDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFraudster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::DeleteFraudster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSpeaker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::DeleteSpeaker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWatchlist {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::DeleteWatchlist', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::DescribeDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFraudster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::DescribeFraudster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFraudsterRegistrationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::DescribeFraudsterRegistrationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpeaker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::DescribeSpeaker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpeakerEnrollmentJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::DescribeSpeakerEnrollmentJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWatchlist {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::DescribeWatchlist', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateFraudster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::DisassociateFraudster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EvaluateSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::EvaluateSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::ListDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFraudsterRegistrationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::ListFraudsterRegistrationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFraudsters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::ListFraudsters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSpeakerEnrollmentJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::ListSpeakerEnrollmentJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSpeakers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::ListSpeakers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWatchlists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::ListWatchlists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub OptOutSpeaker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::OptOutSpeaker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFraudsterRegistrationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::StartFraudsterRegistrationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSpeakerEnrollmentJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::StartSpeakerEnrollmentJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::UpdateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWatchlist {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VoiceID::UpdateWatchlist', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDomains {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDomains(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDomains(@_, NextToken => $next_result->NextToken);
        push @{ $result->DomainSummaries }, @{ $next_result->DomainSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DomainSummaries') foreach (@{ $result->DomainSummaries });
        $result = $self->ListDomains(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DomainSummaries') foreach (@{ $result->DomainSummaries });
    }

    return undef
  }
  sub ListAllFraudsterRegistrationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFraudsterRegistrationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFraudsterRegistrationJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobSummaries }, @{ $next_result->JobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobSummaries') foreach (@{ $result->JobSummaries });
        $result = $self->ListFraudsterRegistrationJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobSummaries') foreach (@{ $result->JobSummaries });
    }

    return undef
  }
  sub ListAllFraudsters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFraudsters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFraudsters(@_, NextToken => $next_result->NextToken);
        push @{ $result->FraudsterSummaries }, @{ $next_result->FraudsterSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FraudsterSummaries') foreach (@{ $result->FraudsterSummaries });
        $result = $self->ListFraudsters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FraudsterSummaries') foreach (@{ $result->FraudsterSummaries });
    }

    return undef
  }
  sub ListAllSpeakerEnrollmentJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSpeakerEnrollmentJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSpeakerEnrollmentJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobSummaries }, @{ $next_result->JobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobSummaries') foreach (@{ $result->JobSummaries });
        $result = $self->ListSpeakerEnrollmentJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobSummaries') foreach (@{ $result->JobSummaries });
    }

    return undef
  }
  sub ListAllSpeakers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSpeakers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSpeakers(@_, NextToken => $next_result->NextToken);
        push @{ $result->SpeakerSummaries }, @{ $next_result->SpeakerSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SpeakerSummaries') foreach (@{ $result->SpeakerSummaries });
        $result = $self->ListSpeakers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SpeakerSummaries') foreach (@{ $result->SpeakerSummaries });
    }

    return undef
  }
  sub ListAllWatchlists {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWatchlists(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListWatchlists(@_, NextToken => $next_result->NextToken);
        push @{ $result->WatchlistSummaries }, @{ $next_result->WatchlistSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'WatchlistSummaries') foreach (@{ $result->WatchlistSummaries });
        $result = $self->ListWatchlists(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'WatchlistSummaries') foreach (@{ $result->WatchlistSummaries });
    }

    return undef
  }


  sub operations { qw/AssociateFraudster CreateDomain CreateWatchlist DeleteDomain DeleteFraudster DeleteSpeaker DeleteWatchlist DescribeDomain DescribeFraudster DescribeFraudsterRegistrationJob DescribeSpeaker DescribeSpeakerEnrollmentJob DescribeWatchlist DisassociateFraudster EvaluateSession ListDomains ListFraudsterRegistrationJobs ListFraudsters ListSpeakerEnrollmentJobs ListSpeakers ListTagsForResource ListWatchlists OptOutSpeaker StartFraudsterRegistrationJob StartSpeakerEnrollmentJob TagResource UntagResource UpdateDomain UpdateWatchlist / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID - Perl Interface to AWS Amazon Voice ID

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('VoiceID');
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

Amazon Connect Voice ID provides real-time caller authentication and
fraud risk detection, which make voice interactions in contact centers
more secure and efficient.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voiceid-2021-09-27>


=head1 METHODS

=head2 AssociateFraudster

=over

=item DomainId => Str

=item FraudsterId => Str

=item WatchlistId => Str


=back

Each argument is described in detail in: L<Paws::VoiceID::AssociateFraudster>

Returns: a L<Paws::VoiceID::AssociateFraudsterResponse> instance

Associates the fraudsters with the watchlist specified in the same
domain.


=head2 CreateDomain

=over

=item Name => Str

=item ServerSideEncryptionConfiguration => L<Paws::VoiceID::ServerSideEncryptionConfiguration>

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::VoiceID::Tag>]]


=back

Each argument is described in detail in: L<Paws::VoiceID::CreateDomain>

Returns: a L<Paws::VoiceID::CreateDomainResponse> instance

Creates a domain that contains all Amazon Connect Voice ID data, such
as speakers, fraudsters, customer audio, and voiceprints. Every domain
is created with a default watchlist that fraudsters can be a part of.


=head2 CreateWatchlist

=over

=item DomainId => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::VoiceID::CreateWatchlist>

Returns: a L<Paws::VoiceID::CreateWatchlistResponse> instance

Creates a watchlist that fraudsters can be a part of.


=head2 DeleteDomain

=over

=item DomainId => Str


=back

Each argument is described in detail in: L<Paws::VoiceID::DeleteDomain>

Returns: nothing

Deletes the specified domain from Voice ID.


=head2 DeleteFraudster

=over

=item DomainId => Str

=item FraudsterId => Str


=back

Each argument is described in detail in: L<Paws::VoiceID::DeleteFraudster>

Returns: nothing

Deletes the specified fraudster from Voice ID. This action
disassociates the fraudster from any watchlists it is a part of.


=head2 DeleteSpeaker

=over

=item DomainId => Str

=item SpeakerId => Str


=back

Each argument is described in detail in: L<Paws::VoiceID::DeleteSpeaker>

Returns: nothing

Deletes the specified speaker from Voice ID.


=head2 DeleteWatchlist

=over

=item DomainId => Str

=item WatchlistId => Str


=back

Each argument is described in detail in: L<Paws::VoiceID::DeleteWatchlist>

Returns: nothing

Deletes the specified watchlist from Voice ID. This API throws an
exception when there are fraudsters in the watchlist that you are
trying to delete. You must delete the fraudsters, and then delete the
watchlist. Every domain has a default watchlist which cannot be
deleted.


=head2 DescribeDomain

=over

=item DomainId => Str


=back

Each argument is described in detail in: L<Paws::VoiceID::DescribeDomain>

Returns: a L<Paws::VoiceID::DescribeDomainResponse> instance

Describes the specified domain.


=head2 DescribeFraudster

=over

=item DomainId => Str

=item FraudsterId => Str


=back

Each argument is described in detail in: L<Paws::VoiceID::DescribeFraudster>

Returns: a L<Paws::VoiceID::DescribeFraudsterResponse> instance

Describes the specified fraudster.


=head2 DescribeFraudsterRegistrationJob

=over

=item DomainId => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::VoiceID::DescribeFraudsterRegistrationJob>

Returns: a L<Paws::VoiceID::DescribeFraudsterRegistrationJobResponse> instance

Describes the specified fraudster registration job.


=head2 DescribeSpeaker

=over

=item DomainId => Str

=item SpeakerId => Str


=back

Each argument is described in detail in: L<Paws::VoiceID::DescribeSpeaker>

Returns: a L<Paws::VoiceID::DescribeSpeakerResponse> instance

Describes the specified speaker.


=head2 DescribeSpeakerEnrollmentJob

=over

=item DomainId => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::VoiceID::DescribeSpeakerEnrollmentJob>

Returns: a L<Paws::VoiceID::DescribeSpeakerEnrollmentJobResponse> instance

Describes the specified speaker enrollment job.


=head2 DescribeWatchlist

=over

=item DomainId => Str

=item WatchlistId => Str


=back

Each argument is described in detail in: L<Paws::VoiceID::DescribeWatchlist>

Returns: a L<Paws::VoiceID::DescribeWatchlistResponse> instance

Describes the specified watchlist.


=head2 DisassociateFraudster

=over

=item DomainId => Str

=item FraudsterId => Str

=item WatchlistId => Str


=back

Each argument is described in detail in: L<Paws::VoiceID::DisassociateFraudster>

Returns: a L<Paws::VoiceID::DisassociateFraudsterResponse> instance

Disassociates the fraudsters from the watchlist specified. Voice ID
always expects a fraudster to be a part of at least one watchlist. If
you try to disassociate a fraudster from its only watchlist, a
C<ValidationException> is thrown.


=head2 EvaluateSession

=over

=item DomainId => Str

=item SessionNameOrId => Str


=back

Each argument is described in detail in: L<Paws::VoiceID::EvaluateSession>

Returns: a L<Paws::VoiceID::EvaluateSessionResponse> instance

Evaluates a specified session based on audio data accumulated during a
streaming Amazon Connect Voice ID call.


=head2 ListDomains

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VoiceID::ListDomains>

Returns: a L<Paws::VoiceID::ListDomainsResponse> instance

Lists all the domains in the Amazon Web Services account.


=head2 ListFraudsterRegistrationJobs

=over

=item DomainId => Str

=item [JobStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VoiceID::ListFraudsterRegistrationJobs>

Returns: a L<Paws::VoiceID::ListFraudsterRegistrationJobsResponse> instance

Lists all the fraudster registration jobs in the domain with the given
C<JobStatus>. If C<JobStatus> is not provided, this lists all fraudster
registration jobs in the given domain.


=head2 ListFraudsters

=over

=item DomainId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [WatchlistId => Str]


=back

Each argument is described in detail in: L<Paws::VoiceID::ListFraudsters>

Returns: a L<Paws::VoiceID::ListFraudstersResponse> instance

Lists all fraudsters in a specified watchlist or domain.


=head2 ListSpeakerEnrollmentJobs

=over

=item DomainId => Str

=item [JobStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VoiceID::ListSpeakerEnrollmentJobs>

Returns: a L<Paws::VoiceID::ListSpeakerEnrollmentJobsResponse> instance

Lists all the speaker enrollment jobs in the domain with the specified
C<JobStatus>. If C<JobStatus> is not provided, this lists all jobs with
all possible speaker enrollment job statuses.


=head2 ListSpeakers

=over

=item DomainId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VoiceID::ListSpeakers>

Returns: a L<Paws::VoiceID::ListSpeakersResponse> instance

Lists all speakers in a specified domain.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::VoiceID::ListTagsForResource>

Returns: a L<Paws::VoiceID::ListTagsForResourceResponse> instance

Lists all tags associated with a specified Voice ID resource.


=head2 ListWatchlists

=over

=item DomainId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VoiceID::ListWatchlists>

Returns: a L<Paws::VoiceID::ListWatchlistsResponse> instance

Lists all watchlists in a specified domain.


=head2 OptOutSpeaker

=over

=item DomainId => Str

=item SpeakerId => Str


=back

Each argument is described in detail in: L<Paws::VoiceID::OptOutSpeaker>

Returns: a L<Paws::VoiceID::OptOutSpeakerResponse> instance

Opts out a speaker from Voice ID. A speaker can be opted out regardless
of whether or not they already exist in Voice ID. If they don't yet
exist, a new speaker is created in an opted out state. If they already
exist, their existing status is overridden and they are opted out.
Enrollment and evaluation authentication requests are rejected for
opted out speakers, and opted out speakers have no voice embeddings
stored in Voice ID.


=head2 StartFraudsterRegistrationJob

=over

=item DataAccessRoleArn => Str

=item DomainId => Str

=item InputDataConfig => L<Paws::VoiceID::InputDataConfig>

=item OutputDataConfig => L<Paws::VoiceID::OutputDataConfig>

=item [ClientToken => Str]

=item [JobName => Str]

=item [RegistrationConfig => L<Paws::VoiceID::RegistrationConfig>]


=back

Each argument is described in detail in: L<Paws::VoiceID::StartFraudsterRegistrationJob>

Returns: a L<Paws::VoiceID::StartFraudsterRegistrationJobResponse> instance

Starts a new batch fraudster registration job using provided details.


=head2 StartSpeakerEnrollmentJob

=over

=item DataAccessRoleArn => Str

=item DomainId => Str

=item InputDataConfig => L<Paws::VoiceID::InputDataConfig>

=item OutputDataConfig => L<Paws::VoiceID::OutputDataConfig>

=item [ClientToken => Str]

=item [EnrollmentConfig => L<Paws::VoiceID::EnrollmentConfig>]

=item [JobName => Str]


=back

Each argument is described in detail in: L<Paws::VoiceID::StartSpeakerEnrollmentJob>

Returns: a L<Paws::VoiceID::StartSpeakerEnrollmentJobResponse> instance

Starts a new batch speaker enrollment job using specified details.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::VoiceID::Tag>]


=back

Each argument is described in detail in: L<Paws::VoiceID::TagResource>

Returns: a L<Paws::VoiceID::TagResourceResponse> instance

Tags a Voice ID resource with the provided list of tags.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::VoiceID::UntagResource>

Returns: a L<Paws::VoiceID::UntagResourceResponse> instance

Removes specified tags from a specified Amazon Connect Voice ID
resource.


=head2 UpdateDomain

=over

=item DomainId => Str

=item Name => Str

=item ServerSideEncryptionConfiguration => L<Paws::VoiceID::ServerSideEncryptionConfiguration>

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::VoiceID::UpdateDomain>

Returns: a L<Paws::VoiceID::UpdateDomainResponse> instance

Updates the specified domain. This API has clobber behavior, and clears
and replaces all attributes. If an optional field, such as
'Description' is not provided, it is removed from the domain.


=head2 UpdateWatchlist

=over

=item DomainId => Str

=item WatchlistId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::VoiceID::UpdateWatchlist>

Returns: a L<Paws::VoiceID::UpdateWatchlistResponse> instance

Updates the specified watchlist. Every domain has a default watchlist
which cannot be updated.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDomains(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDomains([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DomainSummaries, passing the object as the first parameter, and the string 'DomainSummaries' as the second parameter 

If not, it will return a a L<Paws::VoiceID::ListDomainsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFraudsterRegistrationJobs(sub { },DomainId => Str, [JobStatus => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllFraudsterRegistrationJobs(DomainId => Str, [JobStatus => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobSummaries, passing the object as the first parameter, and the string 'JobSummaries' as the second parameter 

If not, it will return a a L<Paws::VoiceID::ListFraudsterRegistrationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFraudsters(sub { },DomainId => Str, [MaxResults => Int, NextToken => Str, WatchlistId => Str])

=head2 ListAllFraudsters(DomainId => Str, [MaxResults => Int, NextToken => Str, WatchlistId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FraudsterSummaries, passing the object as the first parameter, and the string 'FraudsterSummaries' as the second parameter 

If not, it will return a a L<Paws::VoiceID::ListFraudstersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSpeakerEnrollmentJobs(sub { },DomainId => Str, [JobStatus => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllSpeakerEnrollmentJobs(DomainId => Str, [JobStatus => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobSummaries, passing the object as the first parameter, and the string 'JobSummaries' as the second parameter 

If not, it will return a a L<Paws::VoiceID::ListSpeakerEnrollmentJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSpeakers(sub { },DomainId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSpeakers(DomainId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SpeakerSummaries, passing the object as the first parameter, and the string 'SpeakerSummaries' as the second parameter 

If not, it will return a a L<Paws::VoiceID::ListSpeakersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWatchlists(sub { },DomainId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllWatchlists(DomainId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - WatchlistSummaries, passing the object as the first parameter, and the string 'WatchlistSummaries' as the second parameter 

If not, it will return a a L<Paws::VoiceID::ListWatchlistsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

