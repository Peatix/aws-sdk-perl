package Paws::Credential::CredProcess;
  use Moose;
  use JSON::MaybeXS qw/decode_json/;
  use Paws::Exception;
  use DateTime::Format::ISO8601;
  use Paws::Credential::Explicit;

  with 'Paws::Credential';

  has credential_process => (is => 'ro', isa => 'Str', required => 1);

  has expiration => (
    is => 'rw',
    isa => 'Int|Undef',
    lazy => 1,
    default => sub { 0 }
  );

  has actual_creds => (is => 'rw', isa => 'Paws::Credential::Explicit|Undef');

  sub credentials {
    my $self = shift;
    $self->_refresh;
    return $self->actual_creds;
  }

  sub _refresh {
    my $self = shift;

    return if not defined $self->expiration;
    return if $self->expiration >= time;

    my $creds;
    my $rc;
    {
      local $/ = undef;
      open (my $fh, '-|', $self->credential_process);
      $creds = <$fh>;
      close $fh;
      $rc = $?;
    }
    Paws::Exception::CredentialProcess->throw("credential_process returned non-zero code") if ($rc != 0);
    $creds = decode_json($creds);
    Paws::Exception::CredentialProcess->throw("credential_process didn't return a Version key") if (not exists $creds->{ Version }); 
    Paws::Exception::CredentialProcess->throw("credential_process only understands Version 1") if ($creds->{ Version } != 1); 

    my $expiry = $creds->{ Expiration };
    if (defined $expiry) {
      $self->expiration(DateTime::Format::ISO8601->parse_datetime($expiry)->epoch)
    } else {
      $self->expiration(undef);
    }

    $self->actual_creds(Paws::Credential::Explicit->new(
      access_key => $creds->{ AccessKeyId },
      secret_key => $creds->{ SecretAccessKey },
      session_token => $creds->{ SessionToken },
    ));
  }

  no Moose;
1;
