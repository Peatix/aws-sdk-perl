package Paws::CodeCatalyst;
  use Moose;
  sub service { 'codecatalyst' }
  sub signing_name { 'codecatalyst' }
  sub version { '2022-09-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::BEARERSignature', 'Paws::Net::RestJsonCaller';

  
  sub CreateAccessToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::CreateAccessToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDevEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::CreateDevEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::CreateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSourceRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::CreateSourceRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSourceRepositoryBranch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::CreateSourceRepositoryBranch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccessToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::DeleteAccessToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDevEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::DeleteDevEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::DeleteProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSourceRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::DeleteSourceRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSpace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::DeleteSpace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::GetDevEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::GetProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSourceRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::GetSourceRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSourceRepositoryCloneUrls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::GetSourceRepositoryCloneUrls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSpace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::GetSpace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::GetSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::GetUserDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::GetWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflowRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::GetWorkflowRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessTokens {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::ListAccessTokens', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::ListDevEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevEnvironmentSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::ListDevEnvironmentSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::ListEventLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::ListProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSourceRepositories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::ListSourceRepositories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSourceRepositoryBranches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::ListSourceRepositoryBranches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSpaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::ListSpaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflowRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::ListWorkflowRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::ListWorkflows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDevEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::StartDevEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDevEnvironmentSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::StartDevEnvironmentSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartWorkflowRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::StartWorkflowRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDevEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::StopDevEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDevEnvironmentSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::StopDevEnvironmentSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDevEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::UpdateDevEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::UpdateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSpace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::UpdateSpace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifySession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeCatalyst::VerifySession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccessTokens {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccessTokens(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAccessTokens(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListAccessTokens(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllDevEnvironments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDevEnvironments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDevEnvironments(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListDevEnvironments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllDevEnvironmentSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDevEnvironmentSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDevEnvironmentSessions(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListDevEnvironmentSessions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllEventLogs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventLogs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEventLogs(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListEventLogs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllProjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProjects(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListProjects(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllSourceRepositories {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSourceRepositories(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSourceRepositories(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListSourceRepositories(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllSourceRepositoryBranches {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSourceRepositoryBranches(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSourceRepositoryBranches(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListSourceRepositoryBranches(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllSpaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSpaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSpaces(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListSpaces(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllWorkflowRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkflowRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkflowRuns(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListWorkflowRuns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllWorkflows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkflows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkflows(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListWorkflows(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }


  sub operations { qw/CreateAccessToken CreateDevEnvironment CreateProject CreateSourceRepository CreateSourceRepositoryBranch DeleteAccessToken DeleteDevEnvironment DeleteProject DeleteSourceRepository DeleteSpace GetDevEnvironment GetProject GetSourceRepository GetSourceRepositoryCloneUrls GetSpace GetSubscription GetUserDetails GetWorkflow GetWorkflowRun ListAccessTokens ListDevEnvironments ListDevEnvironmentSessions ListEventLogs ListProjects ListSourceRepositories ListSourceRepositoryBranches ListSpaces ListWorkflowRuns ListWorkflows StartDevEnvironment StartDevEnvironmentSession StartWorkflowRun StopDevEnvironment StopDevEnvironmentSession UpdateDevEnvironment UpdateProject UpdateSpace VerifySession / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst - Perl Interface to AWS Amazon CodeCatalyst

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodeCatalyst');
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

Welcome to the Amazon CodeCatalyst API reference. This reference
provides descriptions of operations and data types for Amazon
CodeCatalyst. You can use the Amazon CodeCatalyst API to work with the
following objects.

Spaces, by calling the following:

=over

=item *

DeleteSpace, which deletes a space.

=item *

GetSpace, which returns information about a space.

=item *

GetSubscription, which returns information about the Amazon Web
Services account used for billing purposes and the billing plan for the
space.

=item *

ListSpaces, which retrieves a list of spaces.

=item *

UpdateSpace, which changes one or more values for a space.

=back

Projects, by calling the following:

=over

=item *

CreateProject which creates a project in a specified space.

=item *

GetProject, which returns information about a project.

=item *

ListProjects, which retrieves a list of projects in a space.

=back

Users, by calling the following:

=over

=item *

GetUserDetails, which returns information about a user in Amazon
CodeCatalyst.

=back

Source repositories, by calling the following:

=over

=item *

CreateSourceRepository, which creates an empty Git-based source
repository in a specified project.

=item *

CreateSourceRepositoryBranch, which creates a branch in a specified
repository where you can work on code.

=item *

DeleteSourceRepository, which deletes a source repository.

=item *

GetSourceRepository, which returns information about a source
repository.

=item *

GetSourceRepositoryCloneUrls, which returns information about the URLs
that can be used with a Git client to clone a source repository.

=item *

ListSourceRepositories, which retrieves a list of source repositories
in a project.

=item *

ListSourceRepositoryBranches, which retrieves a list of branches in a
source repository.

=back

Dev Environments and the Amazon Web Services Toolkits, by calling the
following:

=over

=item *

CreateDevEnvironment, which creates a Dev Environment, where you can
quickly work on the code stored in the source repositories of your
project.

=item *

DeleteDevEnvironment, which deletes a Dev Environment.

=item *

GetDevEnvironment, which returns information about a Dev Environment.

=item *

ListDevEnvironments, which retrieves a list of Dev Environments in a
project.

=item *

ListDevEnvironmentSessions, which retrieves a list of active Dev
Environment sessions in a project.

=item *

StartDevEnvironment, which starts a specified Dev Environment and puts
it into an active state.

=item *

StartDevEnvironmentSession, which starts a session to a specified Dev
Environment.

=item *

StopDevEnvironment, which stops a specified Dev Environment and puts it
into an stopped state.

=item *

StopDevEnvironmentSession, which stops a session for a specified Dev
Environment.

=item *

UpdateDevEnvironment, which changes one or more values for a Dev
Environment.

=back

Workflows, by calling the following:

=over

=item *

GetWorkflow, which returns information about a workflow.

=item *

GetWorkflowRun, which returns information about a specified run of a
workflow.

=item *

ListWorkflowRuns, which retrieves a list of runs of a specified
workflow.

=item *

ListWorkflows, which retrieves a list of workflows in a specified
project.

=item *

StartWorkflowRun, which starts a run of a specified workflow.

=back

Security, activity, and resource management in Amazon CodeCatalyst, by
calling the following:

=over

=item *

CreateAccessToken, which creates a personal access token (PAT) for the
current user.

=item *

DeleteAccessToken, which deletes a specified personal access token
(PAT).

=item *

ListAccessTokens, which lists all personal access tokens (PATs)
associated with a user.

=item *

ListEventLogs, which retrieves a list of events that occurred during a
specified time period in a space.

=item *

VerifySession, which verifies whether the calling user has a valid
Amazon CodeCatalyst login and session.

=back

If you are using the Amazon CodeCatalyst APIs with an SDK or the CLI,
you must configure your computer to work with Amazon CodeCatalyst and
single sign-on (SSO). For more information, see Setting up to use the
CLI with Amazon CodeCatalyst
(https://docs.aws.amazon.com/codecatalyst/latest/userguide/set-up-cli.html)
and the SSO documentation for your SDK.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateAccessToken

=over

=item Name => Str

=item [ExpiresTime => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::CreateAccessToken>

Returns: a L<Paws::CodeCatalyst::CreateAccessTokenResponse> instance

Creates a personal access token (PAT) for the current user. A personal
access token (PAT) is similar to a password. It is associated with your
user identity for use across all spaces and projects in Amazon
CodeCatalyst. You use PATs to access CodeCatalyst from resources that
include integrated development environments (IDEs) and Git-based source
repositories. PATs represent you in Amazon CodeCatalyst and you can
manage them in your user settings.For more information, see Managing
personal access tokens in Amazon CodeCatalyst
(https://docs.aws.amazon.com/codecatalyst/latest/userguide/ipa-tokens-keys.html).


=head2 CreateDevEnvironment

=over

=item InstanceType => Str

=item PersistentStorage => L<Paws::CodeCatalyst::PersistentStorageConfiguration>

=item ProjectName => Str

=item SpaceName => Str

=item [Alias => Str]

=item [ClientToken => Str]

=item [Ides => ArrayRef[L<Paws::CodeCatalyst::IdeConfiguration>]]

=item [InactivityTimeoutMinutes => Int]

=item [Repositories => ArrayRef[L<Paws::CodeCatalyst::RepositoryInput>]]

=item [VpcConnectionName => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::CreateDevEnvironment>

Returns: a L<Paws::CodeCatalyst::CreateDevEnvironmentResponse> instance

Creates a Dev Environment in Amazon CodeCatalyst, a cloud-based
development environment that you can use to quickly work on the code
stored in the source repositories of your project.

When created in the Amazon CodeCatalyst console, by default a Dev
Environment is configured to have a 2 core processor, 4GB of RAM, and
16GB of persistent storage. None of these defaults apply to a Dev
Environment created programmatically.


=head2 CreateProject

=over

=item DisplayName => Str

=item SpaceName => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::CreateProject>

Returns: a L<Paws::CodeCatalyst::CreateProjectResponse> instance

Creates a project in a specified space.


=head2 CreateSourceRepository

=over

=item Name => Str

=item ProjectName => Str

=item SpaceName => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::CreateSourceRepository>

Returns: a L<Paws::CodeCatalyst::CreateSourceRepositoryResponse> instance

Creates an empty Git-based source repository in a specified project.
The repository is created with an initial empty commit with a default
branch named C<main>.


=head2 CreateSourceRepositoryBranch

=over

=item Name => Str

=item ProjectName => Str

=item SourceRepositoryName => Str

=item SpaceName => Str

=item [HeadCommitId => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::CreateSourceRepositoryBranch>

Returns: a L<Paws::CodeCatalyst::CreateSourceRepositoryBranchResponse> instance

Creates a branch in a specified source repository in Amazon
CodeCatalyst.

This API only creates a branch in a source repository hosted in Amazon
CodeCatalyst. You cannot use this API to create a branch in a linked
repository.


=head2 DeleteAccessToken

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::DeleteAccessToken>

Returns: a L<Paws::CodeCatalyst::DeleteAccessTokenResponse> instance

Deletes a specified personal access token (PAT). A personal access
token can only be deleted by the user who created it.


=head2 DeleteDevEnvironment

=over

=item Id => Str

=item ProjectName => Str

=item SpaceName => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::DeleteDevEnvironment>

Returns: a L<Paws::CodeCatalyst::DeleteDevEnvironmentResponse> instance

Deletes a Dev Environment.


=head2 DeleteProject

=over

=item Name => Str

=item SpaceName => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::DeleteProject>

Returns: a L<Paws::CodeCatalyst::DeleteProjectResponse> instance

Deletes a project in a space.


=head2 DeleteSourceRepository

=over

=item Name => Str

=item ProjectName => Str

=item SpaceName => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::DeleteSourceRepository>

Returns: a L<Paws::CodeCatalyst::DeleteSourceRepositoryResponse> instance

Deletes a source repository in Amazon CodeCatalyst. You cannot use this
API to delete a linked repository. It can only be used to delete a
Amazon CodeCatalyst source repository.


=head2 DeleteSpace

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::DeleteSpace>

Returns: a L<Paws::CodeCatalyst::DeleteSpaceResponse> instance

Deletes a space.

Deleting a space cannot be undone. Additionally, since space names must
be unique across Amazon CodeCatalyst, you cannot reuse names of deleted
spaces.


=head2 GetDevEnvironment

=over

=item Id => Str

=item ProjectName => Str

=item SpaceName => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::GetDevEnvironment>

Returns: a L<Paws::CodeCatalyst::GetDevEnvironmentResponse> instance

Returns information about a Dev Environment for a source repository in
a project. Dev Environments are specific to the user who creates them.


=head2 GetProject

=over

=item Name => Str

=item SpaceName => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::GetProject>

Returns: a L<Paws::CodeCatalyst::GetProjectResponse> instance

Returns information about a project.


=head2 GetSourceRepository

=over

=item Name => Str

=item ProjectName => Str

=item SpaceName => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::GetSourceRepository>

Returns: a L<Paws::CodeCatalyst::GetSourceRepositoryResponse> instance

Returns information about a source repository.


=head2 GetSourceRepositoryCloneUrls

=over

=item ProjectName => Str

=item SourceRepositoryName => Str

=item SpaceName => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::GetSourceRepositoryCloneUrls>

Returns: a L<Paws::CodeCatalyst::GetSourceRepositoryCloneUrlsResponse> instance

Returns information about the URLs that can be used with a Git client
to clone a source repository.


=head2 GetSpace

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::GetSpace>

Returns: a L<Paws::CodeCatalyst::GetSpaceResponse> instance

Returns information about an space.


=head2 GetSubscription

=over

=item SpaceName => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::GetSubscription>

Returns: a L<Paws::CodeCatalyst::GetSubscriptionResponse> instance

Returns information about the Amazon Web Services account used for
billing purposes and the billing plan for the space.


=head2 GetUserDetails

=over

=item [Id => Str]

=item [UserName => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::GetUserDetails>

Returns: a L<Paws::CodeCatalyst::GetUserDetailsResponse> instance

Returns information about a user.


=head2 GetWorkflow

=over

=item Id => Str

=item ProjectName => Str

=item SpaceName => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::GetWorkflow>

Returns: a L<Paws::CodeCatalyst::GetWorkflowResponse> instance

Returns information about a workflow.


=head2 GetWorkflowRun

=over

=item Id => Str

=item ProjectName => Str

=item SpaceName => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::GetWorkflowRun>

Returns: a L<Paws::CodeCatalyst::GetWorkflowRunResponse> instance

Returns information about a specified run of a workflow.


=head2 ListAccessTokens

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::ListAccessTokens>

Returns: a L<Paws::CodeCatalyst::ListAccessTokensResponse> instance

Lists all personal access tokens (PATs) associated with the user who
calls the API. You can only list PATs associated with your Amazon Web
Services Builder ID.


=head2 ListDevEnvironments

=over

=item SpaceName => Str

=item [Filters => ArrayRef[L<Paws::CodeCatalyst::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProjectName => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::ListDevEnvironments>

Returns: a L<Paws::CodeCatalyst::ListDevEnvironmentsResponse> instance

Retrieves a list of Dev Environments in a project.


=head2 ListDevEnvironmentSessions

=over

=item DevEnvironmentId => Str

=item ProjectName => Str

=item SpaceName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::ListDevEnvironmentSessions>

Returns: a L<Paws::CodeCatalyst::ListDevEnvironmentSessionsResponse> instance

Retrieves a list of active sessions for a Dev Environment in a project.


=head2 ListEventLogs

=over

=item EndTime => Str

=item SpaceName => Str

=item StartTime => Str

=item [EventName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::ListEventLogs>

Returns: a L<Paws::CodeCatalyst::ListEventLogsResponse> instance

Retrieves a list of events that occurred during a specific time in a
space. You can use these events to audit user and system activity in a
space. For more information, see Monitoring
(https://docs.aws.amazon.com/codecatalyst/latest/userguide/ipa-monitoring.html)
in the I<Amazon CodeCatalyst User Guide>.

ListEventLogs guarantees events for the last 30 days in a given space.
You can also view and retrieve a list of management events over the
last 90 days for Amazon CodeCatalyst in the CloudTrail console by
viewing Event history, or by creating a trail to create and maintain a
record of events that extends past 90 days. For more information, see
Working with CloudTrail Event History
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events.html)
and Working with CloudTrail trails
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-getting-started.html).


=head2 ListProjects

=over

=item SpaceName => Str

=item [Filters => ArrayRef[L<Paws::CodeCatalyst::ProjectListFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::ListProjects>

Returns: a L<Paws::CodeCatalyst::ListProjectsResponse> instance

Retrieves a list of projects.


=head2 ListSourceRepositories

=over

=item ProjectName => Str

=item SpaceName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::ListSourceRepositories>

Returns: a L<Paws::CodeCatalyst::ListSourceRepositoriesResponse> instance

Retrieves a list of source repositories in a project.


=head2 ListSourceRepositoryBranches

=over

=item ProjectName => Str

=item SourceRepositoryName => Str

=item SpaceName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::ListSourceRepositoryBranches>

Returns: a L<Paws::CodeCatalyst::ListSourceRepositoryBranchesResponse> instance

Retrieves a list of branches in a specified source repository.


=head2 ListSpaces

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::ListSpaces>

Returns: a L<Paws::CodeCatalyst::ListSpacesResponse> instance

Retrieves a list of spaces.


=head2 ListWorkflowRuns

=over

=item ProjectName => Str

=item SpaceName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => ArrayRef[L<Paws::CodeCatalyst::WorkflowRunSortCriteria>]]

=item [WorkflowId => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::ListWorkflowRuns>

Returns: a L<Paws::CodeCatalyst::ListWorkflowRunsResponse> instance

Retrieves a list of workflow runs of a specified workflow.


=head2 ListWorkflows

=over

=item ProjectName => Str

=item SpaceName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => ArrayRef[L<Paws::CodeCatalyst::WorkflowSortCriteria>]]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::ListWorkflows>

Returns: a L<Paws::CodeCatalyst::ListWorkflowsResponse> instance

Retrieves a list of workflows in a specified project.


=head2 StartDevEnvironment

=over

=item Id => Str

=item ProjectName => Str

=item SpaceName => Str

=item [Ides => ArrayRef[L<Paws::CodeCatalyst::IdeConfiguration>]]

=item [InactivityTimeoutMinutes => Int]

=item [InstanceType => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::StartDevEnvironment>

Returns: a L<Paws::CodeCatalyst::StartDevEnvironmentResponse> instance

Starts a specified Dev Environment and puts it into an active state.


=head2 StartDevEnvironmentSession

=over

=item Id => Str

=item ProjectName => Str

=item SessionConfiguration => L<Paws::CodeCatalyst::DevEnvironmentSessionConfiguration>

=item SpaceName => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::StartDevEnvironmentSession>

Returns: a L<Paws::CodeCatalyst::StartDevEnvironmentSessionResponse> instance

Starts a session for a specified Dev Environment.


=head2 StartWorkflowRun

=over

=item ProjectName => Str

=item SpaceName => Str

=item WorkflowId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::StartWorkflowRun>

Returns: a L<Paws::CodeCatalyst::StartWorkflowRunResponse> instance

Begins a run of a specified workflow.


=head2 StopDevEnvironment

=over

=item Id => Str

=item ProjectName => Str

=item SpaceName => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::StopDevEnvironment>

Returns: a L<Paws::CodeCatalyst::StopDevEnvironmentResponse> instance

Pauses a specified Dev Environment and places it in a non-running
state. Stopped Dev Environments do not consume compute minutes.


=head2 StopDevEnvironmentSession

=over

=item Id => Str

=item ProjectName => Str

=item SessionId => Str

=item SpaceName => Str


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::StopDevEnvironmentSession>

Returns: a L<Paws::CodeCatalyst::StopDevEnvironmentSessionResponse> instance

Stops a session for a specified Dev Environment.


=head2 UpdateDevEnvironment

=over

=item Id => Str

=item ProjectName => Str

=item SpaceName => Str

=item [Alias => Str]

=item [ClientToken => Str]

=item [Ides => ArrayRef[L<Paws::CodeCatalyst::IdeConfiguration>]]

=item [InactivityTimeoutMinutes => Int]

=item [InstanceType => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::UpdateDevEnvironment>

Returns: a L<Paws::CodeCatalyst::UpdateDevEnvironmentResponse> instance

Changes one or more values for a Dev Environment. Updating certain
values of the Dev Environment will cause a restart.


=head2 UpdateProject

=over

=item Name => Str

=item SpaceName => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::UpdateProject>

Returns: a L<Paws::CodeCatalyst::UpdateProjectResponse> instance

Changes one or more values for a project.


=head2 UpdateSpace

=over

=item Name => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::UpdateSpace>

Returns: a L<Paws::CodeCatalyst::UpdateSpaceResponse> instance

Changes one or more values for a space.


=head2 VerifySession

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::CodeCatalyst::VerifySession>

Returns: a L<Paws::CodeCatalyst::VerifySessionResponse> instance

Verifies whether the calling user has a valid Amazon CodeCatalyst login
and session. If successful, this returns the ID of the user in Amazon
CodeCatalyst.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccessTokens(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAccessTokens([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::CodeCatalyst::ListAccessTokensResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDevEnvironments(sub { },SpaceName => Str, [Filters => ArrayRef[L<Paws::CodeCatalyst::Filter>], MaxResults => Int, NextToken => Str, ProjectName => Str])

=head2 ListAllDevEnvironments(SpaceName => Str, [Filters => ArrayRef[L<Paws::CodeCatalyst::Filter>], MaxResults => Int, NextToken => Str, ProjectName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::CodeCatalyst::ListDevEnvironmentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDevEnvironmentSessions(sub { },DevEnvironmentId => Str, ProjectName => Str, SpaceName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDevEnvironmentSessions(DevEnvironmentId => Str, ProjectName => Str, SpaceName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::CodeCatalyst::ListDevEnvironmentSessionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEventLogs(sub { },EndTime => Str, SpaceName => Str, StartTime => Str, [EventName => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllEventLogs(EndTime => Str, SpaceName => Str, StartTime => Str, [EventName => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::CodeCatalyst::ListEventLogsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjects(sub { },SpaceName => Str, [Filters => ArrayRef[L<Paws::CodeCatalyst::ProjectListFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllProjects(SpaceName => Str, [Filters => ArrayRef[L<Paws::CodeCatalyst::ProjectListFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::CodeCatalyst::ListProjectsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSourceRepositories(sub { },ProjectName => Str, SpaceName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSourceRepositories(ProjectName => Str, SpaceName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::CodeCatalyst::ListSourceRepositoriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSourceRepositoryBranches(sub { },ProjectName => Str, SourceRepositoryName => Str, SpaceName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSourceRepositoryBranches(ProjectName => Str, SourceRepositoryName => Str, SpaceName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::CodeCatalyst::ListSourceRepositoryBranchesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSpaces(sub { },[NextToken => Str])

=head2 ListAllSpaces([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::CodeCatalyst::ListSpacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkflowRuns(sub { },ProjectName => Str, SpaceName => Str, [MaxResults => Int, NextToken => Str, SortBy => ArrayRef[L<Paws::CodeCatalyst::WorkflowRunSortCriteria>], WorkflowId => Str])

=head2 ListAllWorkflowRuns(ProjectName => Str, SpaceName => Str, [MaxResults => Int, NextToken => Str, SortBy => ArrayRef[L<Paws::CodeCatalyst::WorkflowRunSortCriteria>], WorkflowId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::CodeCatalyst::ListWorkflowRunsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkflows(sub { },ProjectName => Str, SpaceName => Str, [MaxResults => Int, NextToken => Str, SortBy => ArrayRef[L<Paws::CodeCatalyst::WorkflowSortCriteria>]])

=head2 ListAllWorkflows(ProjectName => Str, SpaceName => Str, [MaxResults => Int, NextToken => Str, SortBy => ArrayRef[L<Paws::CodeCatalyst::WorkflowSortCriteria>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::CodeCatalyst::ListWorkflowsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

