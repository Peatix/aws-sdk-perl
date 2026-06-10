package Paws::API::Retry::TokenBucket;
  use Moo;
  use Types::Standard qw(Num);
  use List::Util qw(min);
  use Paws::API::Retry ();

  use constant DEFAULT_CAPACITY          => 500;
  use constant RETRY_COST                => 5;
  use constant RETRY_COST_TIMEOUT        => 10;
  # AWS_NEW_RETRIES_2026 raises the transient retry cost to 14 tokens so the
  # quota engages sooner during sustained transient outages, letting the
  # service recover faster. Throttling retries still cost RETRY_COST (5).
  use constant RETRY_COST_TRANSIENT_2026 => 14;
  use constant SUCCESS_INCREMENT         => 1;

  has capacity => (
    is      => 'ro',
    isa     => Num,
    default => DEFAULT_CAPACITY,
  );

  has current_tokens => (
    is      => 'rw',
    isa     => Num,
    lazy    => 1,
    default => sub { shift->capacity },
  );

  my %_buckets;

  sub for_endpoint {
    my ($class, $endpoint_key) = @_;
    $_buckets{$endpoint_key} //= $class->new();
    return $_buckets{$endpoint_key};
  }

  sub reset_all {
    %_buckets = ();
  }

  sub acquire {
    my ($self, $cost) = @_;
    $cost //= RETRY_COST;
    return 0 if $self->current_tokens < $cost;
    $self->current_tokens($self->current_tokens - $cost);
    return 1;
  }

  sub release {
    my ($self, $amount) = @_;
    $amount //= SUCCESS_INCREMENT;
    my $new_tokens = $self->current_tokens + $amount;
    $self->current_tokens(min($new_tokens, $self->capacity));
  }

  sub token_cost_for_error {
    my ($class_or_self, $error_type) = @_;
    if (defined $error_type && $error_type eq 'transient') {
      return Paws::API::Retry::new_retries_enabled()
        ? RETRY_COST_TRANSIENT_2026
        : RETRY_COST_TIMEOUT;
    }
    return RETRY_COST;
  }

1;
