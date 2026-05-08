package Paws::SecretsManager;
  use Moose;
  sub service { 'secretsmanager' }
  sub signing_name { 'secretsmanager' }
  sub version { '2017-10-17' }
  sub target_prefix { 'secretsmanager' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchGetSecretValue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::BatchGetSecretValue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelRotateSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::CancelRotateSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::CreateSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::DeleteSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::DescribeSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRandomPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::GetRandomPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSecretValue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::GetSecretValue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecrets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::ListSecrets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecretVersionIds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::ListSecretVersionIds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSecretValue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::PutSecretValue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveRegionsFromReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::RemoveRegionsFromReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplicateSecretToRegions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::ReplicateSecretToRegions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::RestoreSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RotateSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::RotateSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopReplicationToReplica {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::StopReplicationToReplica', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::UpdateSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecretVersionStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::UpdateSecretVersionStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidateResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecretsManager::ValidateResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllSecrets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSecrets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSecrets(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecretList }, @{ $next_result->SecretList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecretList') foreach (@{ $result->SecretList });
        $result = $self->ListSecrets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecretList') foreach (@{ $result->SecretList });
    }

    return undef
  }


  sub operations { qw/BatchGetSecretValue CancelRotateSecret CreateSecret DeleteResourcePolicy DeleteSecret DescribeSecret GetRandomPassword GetResourcePolicy GetSecretValue ListSecrets ListSecretVersionIds PutResourcePolicy PutSecretValue RemoveRegionsFromReplication ReplicateSecretToRegions RestoreSecret RotateSecret StopReplicationToReplica TagResource UntagResource UpdateSecret UpdateSecretVersionStage ValidateResourcePolicy / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager - Perl Interface to AWS AWS Secrets Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SecretsManager');
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

Amazon Web Services Secrets Manager

Amazon Web Services Secrets Manager provides a service to enable you to
store, manage, and retrieve, secrets.

This guide provides descriptions of the Secrets Manager API. For more
information about using this service, see the Amazon Web Services
Secrets Manager User Guide
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/introduction.html).

B<API Version>

This version of the Secrets Manager API Reference documents the Secrets
Manager API version 2017-10-17.

For a list of endpoints, see Amazon Web Services Secrets Manager
endpoints
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/asm_access.html#endpoints).

B<Support and Feedback for Amazon Web Services Secrets Manager>

We welcome your feedback. Send your comments to
awssecretsmanager-feedback@amazon.com
(mailto:awssecretsmanager-feedback@amazon.com), or post your feedback
and questions in the Amazon Web Services Secrets Manager Discussion
Forum (http://forums.aws.amazon.com/forum.jspa?forumID=296). For more
information about the Amazon Web Services Discussion Forums, see Forums
Help (http://forums.aws.amazon.com/help.jspa).

B<Logging API Requests>

Amazon Web Services Secrets Manager supports Amazon Web Services
CloudTrail, a service that records Amazon Web Services API calls for
your Amazon Web Services account and delivers log files to an Amazon S3
bucket. By using information that's collected by Amazon Web Services
CloudTrail, you can determine the requests successfully made to Secrets
Manager, who made the request, when it was made, and so on. For more
about Amazon Web Services Secrets Manager and support for Amazon Web
Services CloudTrail, see Logging Amazon Web Services Secrets Manager
Events with Amazon Web Services CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring.html#monitoring_cloudtrail)
in the I<Amazon Web Services Secrets Manager User Guide>. To learn more
about CloudTrail, including enabling it and find your log files, see
the Amazon Web Services CloudTrail User Guide
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17>


=head1 METHODS

=head2 BatchGetSecretValue

=over

=item [Filters => ArrayRef[L<Paws::SecretsManager::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SecretIdList => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecretsManager::BatchGetSecretValue>

Returns: a L<Paws::SecretsManager::BatchGetSecretValueResponse> instance

Retrieves the contents of the encrypted fields C<SecretString> or
C<SecretBinary> for up to 20 secrets. To retrieve a single secret, call
GetSecretValue.

To choose which secrets to retrieve, you can specify a list of secrets
by name or ARN, or you can use filters. If Secrets Manager encounters
errors such as C<AccessDeniedException> while attempting to retrieve
any of the secrets, you can see the errors in C<Errors> in the
response.

Secrets Manager generates CloudTrail C<GetSecretValue> log entries for
each secret you request when you call this action. Do not include
sensitive information in request parameters because it might be logged.
For more information, see Logging Secrets Manager events with
CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:BatchGetSecretValue>, and
you must have C<secretsmanager:GetSecretValue> for each secret. If you
use filters, you must also have C<secretsmanager:ListSecrets>. If the
secrets are encrypted using customer-managed keys instead of the Amazon
Web Services managed key C<aws/secretsmanager>, then you also need
C<kms:Decrypt> permissions for the keys. For more information, see IAM
policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 CancelRotateSecret

=over

=item SecretId => Str


=back

Each argument is described in detail in: L<Paws::SecretsManager::CancelRotateSecret>

Returns: a L<Paws::SecretsManager::CancelRotateSecretResponse> instance

Turns off automatic rotation, and if a rotation is currently in
progress, cancels the rotation.

If you cancel a rotation in progress, it can leave the C<VersionStage>
labels in an unexpected state. You might need to remove the staging
label C<AWSPENDING> from the partially created version. You also need
to determine whether to roll back to the previous version of the secret
by moving the staging label C<AWSCURRENT> to the version that has
C<AWSPENDING>. To determine which version has a specific staging label,
call ListSecretVersionIds. Then use UpdateSecretVersionStage to change
staging labels. For more information, see How rotation works
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html).

To turn on automatic rotation again, call RotateSecret.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:CancelRotateSecret>. For
more information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 CreateSecret

=over

=item Name => Str

=item [AddReplicaRegions => ArrayRef[L<Paws::SecretsManager::ReplicaRegionType>]]

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [ForceOverwriteReplicaSecret => Bool]

=item [KmsKeyId => Str]

=item [SecretBinary => Str]

=item [SecretString => Str]

=item [Tags => ArrayRef[L<Paws::SecretsManager::Tag>]]


=back

Each argument is described in detail in: L<Paws::SecretsManager::CreateSecret>

Returns: a L<Paws::SecretsManager::CreateSecretResponse> instance

Creates a new secret. A I<secret> can be a password, a set of
credentials such as a user name and password, an OAuth token, or other
secret information that you store in an encrypted form in Secrets
Manager. The secret also includes the connection information to access
a database or other service, which Secrets Manager doesn't encrypt. A
secret in Secrets Manager consists of both the protected secret data
and the important information needed to manage the secret.

For secrets that use I<managed rotation>, you need to create the secret
through the managing service. For more information, see Secrets Manager
secrets managed by other Amazon Web Services services
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html).

For information about creating a secret in the console, see Create a
secret
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_create-basic-secret.html).

To create a secret, you can provide the secret value to be encrypted in
either the C<SecretString> parameter or the C<SecretBinary> parameter,
but not both. If you include C<SecretString> or C<SecretBinary> then
Secrets Manager creates an initial secret version and automatically
attaches the staging label C<AWSCURRENT> to it.

For database credentials you want to rotate, for Secrets Manager to be
able to rotate the secret, you must make sure the JSON you store in the
C<SecretString> matches the JSON structure of a database secret
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_secret_json_structure.html).

If you don't specify an KMS encryption key, Secrets Manager uses the
Amazon Web Services managed key C<aws/secretsmanager>. If this key
doesn't already exist in your account, then Secrets Manager creates it
for you automatically. All users and roles in the Amazon Web Services
account automatically have access to use C<aws/secretsmanager>.
Creating C<aws/secretsmanager> can result in a one-time significant
delay in returning the result.

If the secret is in a different Amazon Web Services account from the
credentials calling the API, then you can't use C<aws/secretsmanager>
to encrypt the secret, and you must create and use a customer managed
KMS key.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
except C<SecretBinary> or C<SecretString> because it might be logged.
For more information, see Logging Secrets Manager events with
CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:CreateSecret>. If you
include tags in the secret, you also need
C<secretsmanager:TagResource>. To add replica Regions, you must also
have C<secretsmanager:ReplicateSecretToRegions>. For more information,
see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

To encrypt the secret with a KMS key other than C<aws/secretsmanager>,
you need C<kms:GenerateDataKey> and C<kms:Decrypt> permission to the
key.

When you enter commands in a command shell, there is a risk of the
command history being accessed or utilities having access to your
command parameters. This is a concern if the command includes the value
of a secret. Learn how to Mitigate the risks of using command-line
tools to store Secrets Manager secrets
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/security_cli-exposure-risks.html).


=head2 DeleteResourcePolicy

=over

=item SecretId => Str


=back

Each argument is described in detail in: L<Paws::SecretsManager::DeleteResourcePolicy>

Returns: a L<Paws::SecretsManager::DeleteResourcePolicyResponse> instance

Deletes the resource-based permission policy attached to the secret. To
attach a policy to a secret, use PutResourcePolicy.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:DeleteResourcePolicy>. For
more information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 DeleteSecret

=over

=item SecretId => Str

=item [ForceDeleteWithoutRecovery => Bool]

=item [RecoveryWindowInDays => Int]


=back

Each argument is described in detail in: L<Paws::SecretsManager::DeleteSecret>

Returns: a L<Paws::SecretsManager::DeleteSecretResponse> instance

Deletes a secret and all of its versions. You can specify a recovery
window during which you can restore the secret. The minimum recovery
window is 7 days. The default recovery window is 30 days. Secrets
Manager attaches a C<DeletionDate> stamp to the secret that specifies
the end of the recovery window. At the end of the recovery window,
Secrets Manager deletes the secret permanently.

You can't delete a primary secret that is replicated to other Regions.
You must first delete the replicas using RemoveRegionsFromReplication,
and then delete the primary secret. When you delete a replica, it is
deleted immediately.

You can't directly delete a version of a secret. Instead, you remove
all staging labels from the version using UpdateSecretVersionStage.
This marks the version as deprecated, and then Secrets Manager can
automatically delete the version in the background.

To determine whether an application still uses a secret, you can create
an Amazon CloudWatch alarm to alert you to any attempts to access a
secret during the recovery window. For more information, see Monitor
secrets scheduled for deletion
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring_cloudwatch_deleted-secrets.html).

Secrets Manager performs the permanent secret deletion at the end of
the waiting period as a background task with low priority. There is no
guarantee of a specific time after the recovery window for the
permanent delete to occur.

At any time before recovery window ends, you can use RestoreSecret to
remove the C<DeletionDate> and cancel the deletion of the secret.

When a secret is scheduled for deletion, you cannot retrieve the secret
value. You must first cancel the deletion with RestoreSecret and then
you can retrieve the secret.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:DeleteSecret>. For more
information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 DescribeSecret

=over

=item SecretId => Str


=back

Each argument is described in detail in: L<Paws::SecretsManager::DescribeSecret>

Returns: a L<Paws::SecretsManager::DescribeSecretResponse> instance

Retrieves the details of a secret. It does not include the encrypted
secret value. Secrets Manager only returns fields that have a value in
the response.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:DescribeSecret>. For more
information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 GetRandomPassword

=over

=item [ExcludeCharacters => Str]

=item [ExcludeLowercase => Bool]

=item [ExcludeNumbers => Bool]

=item [ExcludePunctuation => Bool]

=item [ExcludeUppercase => Bool]

=item [IncludeSpace => Bool]

=item [PasswordLength => Int]

=item [RequireEachIncludedType => Bool]


=back

Each argument is described in detail in: L<Paws::SecretsManager::GetRandomPassword>

Returns: a L<Paws::SecretsManager::GetRandomPasswordResponse> instance

Generates a random password. We recommend that you specify the maximum
length and include every character type that the system you are
generating a password for can support. By default, Secrets Manager uses
uppercase and lowercase letters, numbers, and the following characters
in passwords: C<!\"#$%&'()*+,-./:;E<lt>=E<gt>?@[\\]^_`{|}~>

Secrets Manager generates a CloudTrail log entry when you call this
action.

B<Required permissions: > C<secretsmanager:GetRandomPassword>. For more
information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 GetResourcePolicy

=over

=item SecretId => Str


=back

Each argument is described in detail in: L<Paws::SecretsManager::GetResourcePolicy>

Returns: a L<Paws::SecretsManager::GetResourcePolicyResponse> instance

Retrieves the JSON text of the resource-based policy document attached
to the secret. For more information about permissions policies attached
to a secret, see Permissions policies attached to a secret
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-policies.html).

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:GetResourcePolicy>. For more
information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 GetSecretValue

=over

=item SecretId => Str

=item [VersionId => Str]

=item [VersionStage => Str]


=back

Each argument is described in detail in: L<Paws::SecretsManager::GetSecretValue>

Returns: a L<Paws::SecretsManager::GetSecretValueResponse> instance

Retrieves the contents of the encrypted fields C<SecretString> or
C<SecretBinary> from the specified version of a secret, whichever
contains content.

To retrieve the values for a group of secrets, call
BatchGetSecretValue.

We recommend that you cache your secret values by using client-side
caching. Caching secrets improves speed and reduces your costs. For
more information, see Cache secrets for your applications
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieving-secrets.html).

To retrieve the previous version of a secret, use C<VersionStage> and
specify AWSPREVIOUS. To revert to the previous version of a secret,
call UpdateSecretVersionStage
(https://docs.aws.amazon.com/cli/latest/reference/secretsmanager/update-secret-version-stage.html).

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:GetSecretValue>. If the
secret is encrypted using a customer-managed key instead of the Amazon
Web Services managed key C<aws/secretsmanager>, then you also need
C<kms:Decrypt> permissions for that key. For more information, see IAM
policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 ListSecrets

=over

=item [Filters => ArrayRef[L<Paws::SecretsManager::Filter>]]

=item [IncludePlannedDeletion => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SecretsManager::ListSecrets>

Returns: a L<Paws::SecretsManager::ListSecretsResponse> instance

Lists the secrets that are stored by Secrets Manager in the Amazon Web
Services account, not including secrets that are marked for deletion.
To see secrets marked for deletion, use the Secrets Manager console.

All Secrets Manager operations are eventually consistent. ListSecrets
might not reflect changes from the last five minutes. You can get more
recent information for a specific secret by calling DescribeSecret.

To list the versions of a secret, use ListSecretVersionIds.

To retrieve the values for the secrets, call BatchGetSecretValue or
GetSecretValue.

For information about finding secrets in the console, see Find secrets
in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_search-secret.html).

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:ListSecrets>. For more
information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 ListSecretVersionIds

=over

=item SecretId => Str

=item [IncludeDeprecated => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecretsManager::ListSecretVersionIds>

Returns: a L<Paws::SecretsManager::ListSecretVersionIdsResponse> instance

Lists the versions of a secret. Secrets Manager uses staging labels to
indicate the different versions of a secret. For more information, see
Secrets Manager concepts: Versions
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version).

To list the secrets in the account, use ListSecrets.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:ListSecretVersionIds>. For
more information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 PutResourcePolicy

=over

=item ResourcePolicy => Str

=item SecretId => Str

=item [BlockPublicPolicy => Bool]


=back

Each argument is described in detail in: L<Paws::SecretsManager::PutResourcePolicy>

Returns: a L<Paws::SecretsManager::PutResourcePolicyResponse> instance

Attaches a resource-based permission policy to a secret. A
resource-based policy is optional. For more information, see
Authentication and access control for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html)

For information about attaching a policy in the console, see Attach a
permissions policy to a secret
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html).

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:PutResourcePolicy>. For more
information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 PutSecretValue

=over

=item SecretId => Str

=item [ClientRequestToken => Str]

=item [RotationToken => Str]

=item [SecretBinary => Str]

=item [SecretString => Str]

=item [VersionStages => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SecretsManager::PutSecretValue>

Returns: a L<Paws::SecretsManager::PutSecretValueResponse> instance

Creates a new version with a new encrypted secret value and attaches it
to the secret. The version can contain a new C<SecretString> value or a
new C<SecretBinary> value.

We recommend you avoid calling C<PutSecretValue> at a sustained rate of
more than once every 10 minutes. When you update the secret value,
Secrets Manager creates a new version of the secret. Secrets Manager
removes outdated versions when there are more than 100, but it does not
remove versions created less than 24 hours ago. If you call
C<PutSecretValue> more than once every 10 minutes, you create more
versions than Secrets Manager removes, and you will reach the quota for
secret versions.

You can specify the staging labels to attach to the new version in
C<VersionStages>. If you don't include C<VersionStages>, then Secrets
Manager automatically moves the staging label C<AWSCURRENT> to this
version. If this operation creates the first version for the secret,
then Secrets Manager automatically attaches the staging label
C<AWSCURRENT> to it. If this operation moves the staging label
C<AWSCURRENT> from another version to this version, then Secrets
Manager also automatically moves the staging label C<AWSPREVIOUS> to
the version that C<AWSCURRENT> was removed from.

This operation is idempotent. If you call this operation with a
C<ClientRequestToken> that matches an existing version's VersionId, and
you specify the same secret data, the operation succeeds but does
nothing. However, if the secret data is different, then the operation
fails because you can't modify an existing version; you can only create
new ones.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
except C<SecretBinary>, C<SecretString>, or C<RotationToken> because it
might be logged. For more information, see Logging Secrets Manager
events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:PutSecretValue>. For more
information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

When you enter commands in a command shell, there is a risk of the
command history being accessed or utilities having access to your
command parameters. This is a concern if the command includes the value
of a secret. Learn how to Mitigate the risks of using command-line
tools to store Secrets Manager secrets
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/security_cli-exposure-risks.html).


=head2 RemoveRegionsFromReplication

=over

=item RemoveReplicaRegions => ArrayRef[Str|Undef]

=item SecretId => Str


=back

Each argument is described in detail in: L<Paws::SecretsManager::RemoveRegionsFromReplication>

Returns: a L<Paws::SecretsManager::RemoveRegionsFromReplicationResponse> instance

For a secret that is replicated to other Regions, deletes the secret
replicas from the Regions you specify.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: >
C<secretsmanager:RemoveRegionsFromReplication>. For more information,
see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 ReplicateSecretToRegions

=over

=item AddReplicaRegions => ArrayRef[L<Paws::SecretsManager::ReplicaRegionType>]

=item SecretId => Str

=item [ForceOverwriteReplicaSecret => Bool]


=back

Each argument is described in detail in: L<Paws::SecretsManager::ReplicateSecretToRegions>

Returns: a L<Paws::SecretsManager::ReplicateSecretToRegionsResponse> instance

Replicates the secret to a new Regions. See Multi-Region secrets
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/create-manage-multi-region-secrets.html).

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:ReplicateSecretToRegions>.
If the primary secret is encrypted with a KMS key other than
C<aws/secretsmanager>, you also need C<kms:Decrypt> permission to the
key. To encrypt the replicated secret with a KMS key other than
C<aws/secretsmanager>, you need C<kms:GenerateDataKey> and
C<kms:Encrypt> to the key. For more information, see IAM policy actions
for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 RestoreSecret

=over

=item SecretId => Str


=back

Each argument is described in detail in: L<Paws::SecretsManager::RestoreSecret>

Returns: a L<Paws::SecretsManager::RestoreSecretResponse> instance

Cancels the scheduled deletion of a secret by removing the
C<DeletedDate> time stamp. You can access a secret again after it has
been restored.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:RestoreSecret>. For more
information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 RotateSecret

=over

=item SecretId => Str

=item [ClientRequestToken => Str]

=item [RotateImmediately => Bool]

=item [RotationLambdaARN => Str]

=item [RotationRules => L<Paws::SecretsManager::RotationRulesType>]


=back

Each argument is described in detail in: L<Paws::SecretsManager::RotateSecret>

Returns: a L<Paws::SecretsManager::RotateSecretResponse> instance

Configures and starts the asynchronous process of rotating the secret.
For information about rotation, see Rotate secrets
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html)
in the I<Secrets Manager User Guide>. If you include the configuration
parameters, the operation sets the values for the secret and then
immediately starts a rotation. If you don't include the configuration
parameters, the operation starts a rotation with the values already
stored in the secret.

When rotation is successful, the C<AWSPENDING> staging label might be
attached to the same version as the C<AWSCURRENT> version, or it might
not be attached to any version. If the C<AWSPENDING> staging label is
present but not attached to the same version as C<AWSCURRENT>, then any
later invocation of C<RotateSecret> assumes that a previous rotation
request is still in progress and returns an error. When rotation is
unsuccessful, the C<AWSPENDING> staging label might be attached to an
empty secret version. For more information, see Troubleshoot rotation
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot_rotation.html)
in the I<Secrets Manager User Guide>.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:RotateSecret>. For more
information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).
You also need C<lambda:InvokeFunction> permissions on the rotation
function. For more information, see Permissions for rotation
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets-required-permissions-function.html).


=head2 StopReplicationToReplica

=over

=item SecretId => Str


=back

Each argument is described in detail in: L<Paws::SecretsManager::StopReplicationToReplica>

Returns: a L<Paws::SecretsManager::StopReplicationToReplicaResponse> instance

Removes the link between the replica secret and the primary secret and
promotes the replica to a primary secret in the replica Region.

You must call this operation from the Region in which you want to
promote the replica to a primary secret.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:StopReplicationToReplica>.
For more information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 TagResource

=over

=item SecretId => Str

=item Tags => ArrayRef[L<Paws::SecretsManager::Tag>]


=back

Each argument is described in detail in: L<Paws::SecretsManager::TagResource>

Returns: nothing

Attaches tags to a secret. Tags consist of a key name and a value. Tags
are part of the secret's metadata. They are not associated with
specific versions of the secret. This operation appends tags to the
existing list of tags.

For tag quotas and naming restrictions, see Service quotas for Tagging
(https://docs.aws.amazon.com/general/latest/gr/arg.html#taged-reference-quotas)
in the I<Amazon Web Services General Reference guide>.

If you use tags as part of your security strategy, then adding or
removing a tag can change permissions. If successfully completing this
operation would result in you losing your permissions for this secret,
then the operation is blocked and returns an Access Denied error.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:TagResource>. For more
information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 UntagResource

=over

=item SecretId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecretsManager::UntagResource>

Returns: nothing

Removes specific tags from a secret.

This operation is idempotent. If a requested tag is not attached to the
secret, no error is returned and the secret metadata is unchanged.

If you use tags as part of your security strategy, then removing a tag
can change permissions. If successfully completing this operation would
result in you losing your permissions for this secret, then the
operation is blocked and returns an Access Denied error.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:UntagResource>. For more
information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 UpdateSecret

=over

=item SecretId => Str

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [KmsKeyId => Str]

=item [SecretBinary => Str]

=item [SecretString => Str]


=back

Each argument is described in detail in: L<Paws::SecretsManager::UpdateSecret>

Returns: a L<Paws::SecretsManager::UpdateSecretResponse> instance

Modifies the details of a secret, including metadata and the secret
value. To change the secret value, you can also use PutSecretValue.

To change the rotation configuration of a secret, use RotateSecret
instead.

To change a secret so that it is managed by another service, you need
to recreate the secret in that service. See Secrets Manager secrets
managed by other Amazon Web Services services
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html).

We recommend you avoid calling C<UpdateSecret> at a sustained rate of
more than once every 10 minutes. When you call C<UpdateSecret> to
update the secret value, Secrets Manager creates a new version of the
secret. Secrets Manager removes outdated versions when there are more
than 100, but it does not remove versions created less than 24 hours
ago. If you update the secret value more than once every 10 minutes,
you create more versions than Secrets Manager removes, and you will
reach the quota for secret versions.

If you include C<SecretString> or C<SecretBinary> to create a new
secret version, Secrets Manager automatically moves the staging label
C<AWSCURRENT> to the new version. Then it attaches the label
C<AWSPREVIOUS> to the version that C<AWSCURRENT> was removed from.

If you call this operation with a C<ClientRequestToken> that matches an
existing version's C<VersionId>, the operation results in an error. You
can't modify an existing version, you can only create a new version. To
remove a version, remove all staging labels from it. See
UpdateSecretVersionStage.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
except C<SecretBinary> or C<SecretString> because it might be logged.
For more information, see Logging Secrets Manager events with
CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:UpdateSecret>. For more
information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).
If you use a customer managed key, you must also have
C<kms:GenerateDataKey>, C<kms:Encrypt>, and C<kms:Decrypt> permissions
on the key. If you change the KMS key and you don't have C<kms:Encrypt>
permission to the new key, Secrets Manager does not re-encrypt existing
secret versions with the new key. For more information, see Secret
encryption and decryption
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/security-encryption.html).

When you enter commands in a command shell, there is a risk of the
command history being accessed or utilities having access to your
command parameters. This is a concern if the command includes the value
of a secret. Learn how to Mitigate the risks of using command-line
tools to store Secrets Manager secrets
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/security_cli-exposure-risks.html).


=head2 UpdateSecretVersionStage

=over

=item SecretId => Str

=item VersionStage => Str

=item [MoveToVersionId => Str]

=item [RemoveFromVersionId => Str]


=back

Each argument is described in detail in: L<Paws::SecretsManager::UpdateSecretVersionStage>

Returns: a L<Paws::SecretsManager::UpdateSecretVersionStageResponse> instance

Modifies the staging labels attached to a version of a secret. Secrets
Manager uses staging labels to track a version as it progresses through
the secret rotation process. Each staging label can be attached to only
one version at a time. To add a staging label to a version when it is
already attached to another version, Secrets Manager first removes it
from the other version first and then attaches it to this one. For more
information about versions and staging labels, see Concepts: Version
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version).

The staging labels that you specify in the C<VersionStage> parameter
are added to the existing list of staging labels for the version.

You can move the C<AWSCURRENT> staging label to this version by
including it in this call.

Whenever you move C<AWSCURRENT>, Secrets Manager automatically moves
the label C<AWSPREVIOUS> to the version that C<AWSCURRENT> was removed
from.

If this action results in the last label being removed from a version,
then the version is considered to be 'deprecated' and can be deleted by
Secrets Manager.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:UpdateSecretVersionStage>.
For more information, see IAM policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 ValidateResourcePolicy

=over

=item ResourcePolicy => Str

=item [SecretId => Str]


=back

Each argument is described in detail in: L<Paws::SecretsManager::ValidateResourcePolicy>

Returns: a L<Paws::SecretsManager::ValidateResourcePolicyResponse> instance

Validates that a resource policy does not grant a wide range of
principals access to your secret. A resource-based policy is optional
for secrets.

The API performs three checks when validating the policy:

=over

=item *

Sends a call to Zelkova
(https://aws.amazon.com/blogs/security/protect-sensitive-data-in-the-cloud-with-automated-reasoning-zelkova/),
an automated reasoning engine, to ensure your resource policy does not
allow broad access to your secret, for example policies that use a
wildcard for the principal.

=item *

Checks for correct syntax in a policy.

=item *

Verifies the policy does not lock out a caller.

=back

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see Logging Secrets
Manager events with CloudTrail
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html).

B<Required permissions: > C<secretsmanager:ValidateResourcePolicy> and
C<secretsmanager:PutResourcePolicy>. For more information, see IAM
policy actions for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and Authentication and access control in Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllSecrets(sub { },[Filters => ArrayRef[L<Paws::SecretsManager::Filter>], IncludePlannedDeletion => Bool, MaxResults => Int, NextToken => Str, SortOrder => Str])

=head2 ListAllSecrets([Filters => ArrayRef[L<Paws::SecretsManager::Filter>], IncludePlannedDeletion => Bool, MaxResults => Int, NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecretList, passing the object as the first parameter, and the string 'SecretList' as the second parameter 

If not, it will return a a L<Paws::SecretsManager::ListSecretsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

