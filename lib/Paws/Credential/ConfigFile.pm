package Paws::Credential::ConfigFile;
  use Moo;
  use Types::Standard qw(Str);

  extends 'Paws::Credential::File';

  # The AWS CLI keeps the shared *config* file at ~/.aws/config (the
  # AWS_CONFIG_FILE env var, which Paws::Credential::File already
  # honours via credentials_file), distinct from the shared
  # *credentials* file at ~/.aws/credentials that the parent provider
  # reads by default. credential_process (used by IAM Roles Anywhere,
  # SSO, and assume-role helpers) is conventionally written to the
  # config file, so a default Paws ProviderChain that only reads
  # ~/.aws/credentials never sees it. This provider plugs that gap by
  # defaulting to the config file.
  has '+file_name' => (default => sub { 'config' });

  # The shared config file resolves its active profile from AWS_PROFILE
  # first, then AWS_DEFAULT_PROFILE, matching the AWS CLI / botocore
  # precedence. Paws::Credential::File only consults AWS_DEFAULT_PROFILE.
  has '+profile' => (default => sub {
    return $ENV{ AWS_PROFILE } || $ENV{ AWS_DEFAULT_PROFILE } || 'default';
  });

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws::Credential::ConfigFile

=head1 SYNOPSIS

  use Paws::Credential::ConfigFile;

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::ConfigFile->new,
  });
  # reads $HOME/.aws/config (or $AWS_CONFIG_FILE)

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::ConfigFile->new(
      profile => 'observability',
    )
  });
  # reads the [profile observability] section of $HOME/.aws/config

=head1 DESCRIPTION

The ConfigFile credential provider reads credentials from the AWS shared
B<config> file (C<$HOME/.aws/config> by default, or the path in the
C<AWS_CONFIG_FILE> environment variable).

It is a thin specialisation of L<Paws::Credential::File>: the only
differences are the defaults for which file and profile to read. This
matters because the AWS CLI and the official SDKs split credential
material across two files:

=over 4

=item * C<$HOME/.aws/credentials> — the shared B<credentials> file, holding
static C<aws_access_key_id> / C<aws_secret_access_key> pairs. This is what
L<Paws::Credential::File> reads by default.

=item * C<$HOME/.aws/config> — the shared B<config> file, holding profile
configuration plus C<credential_process> directives. Tools that source
credentials dynamically — IAM Roles Anywhere (C<aws_signing_helper>), AWS
SSO, and assume-role helpers — conventionally write their
C<credential_process> line here.

=back

Because the default L<Paws::Credential::ProviderChain> only read the
credentials file, a host configured purely through C<~/.aws/config> (for
example a machine authenticating via IAM Roles Anywhere) could not obtain
credentials natively — callers had to hard-code a
L<Paws::Credential::CredProcess> with the command line copied out of the
config file. This provider lets Paws read that configuration directly, so
C<credential_process> (and any static keys placed in the config file) work
out of the box. It is part of the default provider chain.

Profile section naming follows the config-file convention: the C<[default]>
section is read as the C<default> profile, and C<[profile NAME]> sections
are read as the C<NAME> profile (L<Config::AWS> strips the C<profile >
prefix when parsing). The active profile defaults to the C<AWS_PROFILE>
environment variable, then C<AWS_DEFAULT_PROFILE>, then C<default>.

All other attributes (C<path>, C<file_name>, C<credentials_file>,
C<credential_process>) and the C<refresh> behaviour are inherited from
L<Paws::Credential::File>; see that module for details.

=head2 profile: Str

The profile section to read from the config file.

Defaults to the C<AWS_PROFILE> environment variable, then
C<AWS_DEFAULT_PROFILE>, then C<default>.

=head2 file_name: Str

Name of the file under C<path>.

Defaults to C<config> (the parent L<Paws::Credential::File> defaults to
C<credentials>).

=head2 credentials_file: Str

The full path of the config file to open.

Defaults to the C<AWS_CONFIG_FILE> environment variable if set, otherwise
C<path>/C<file_name> (C<$HOME/.aws/config> by default).

=cut
