package Paws::Credential::Environment;
  use Moose;
  use Paws::Credential::Explicit;
  with 'Paws::Credential';

  sub refresh {
    my $self = shift;

    my $access_key = $ENV{AWS_ACCESS_KEY} || $ENV{AWS_ACCESS_KEY_ID};
    my $secret_key = $ENV{AWS_SECRET_KEY} || $ENV{AWS_SECRET_ACCESS_KEY};
    my $session_token = $ENV{AWS_SESSION_TOKEN};

    if (!$access_key || !$secret_key) {
      return;
    }

    return Paws::Credential::Explicit->new(
      access_key => $access_key,
      secret_key => $secret_key,
      session_token => $session_token,
    );
  }

  no Moose;
1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws::Credential::Environment

=head1 SYNOPSIS

  use Paws::Credential::Environment;

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::Environment->new
  });

=head1 DESCRIPTION

The Environment provider retrieves credentials from environment variables: C<AWS_ACCESS_KEY_ID> and C<AWS_SECRET_ACCESS_KEY>, 
or alternately C<AWS_ACCESS_KEY> and C<AWS_SECRET_KEY>. It will also try to retrieve the optional session token from C<AWS_SESSION_TOKEN>

=cut
