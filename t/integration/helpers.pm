package integration::helpers;

use strict;
use warnings;
use Test::More;
use Time::HiRes ();

use Exporter 'import';
our @EXPORT_OK = qw(
  skip_unless_integration
  paws_client
  unique_name
  test_region
  log_interceptor
);

sub skip_unless_integration {
  unless ($ENV{AWS_INTEGRATION_TESTS}) {
    plan skip_all => 'Set AWS_INTEGRATION_TESTS=1 to run integration tests';
  }
}

sub test_region {
  return $ENV{AWS_DEFAULT_REGION} || 'us-east-1';
}

sub unique_name {
  my ($prefix) = @_;
  $prefix //= 'paws-integ';
  my $ts = int(Time::HiRes::time() * 1000);
  my $rand = int(rand(9999));
  return sprintf('%s-%d-%04d', $prefix, $ts, $rand);
}

my $_log_interceptor;

sub log_interceptor {
  unless ($_log_interceptor) {
    require Paws::Net::Interceptor::Log;
    $_log_interceptor = Paws::Net::Interceptor::Log->new(
      log_handle => \*STDERR,
    );
  }
  return $_log_interceptor;
}

sub paws_client {
  my (%opts) = @_;
  my $region = delete $opts{region} // test_region();

  require Paws;
  my $paws = Paws->new(config => { region => $region, %opts });

  $paws->config->caller->register_interceptor(log_interceptor());

  return $paws;
}

1;

__END__

=head1 NAME

integration::helpers - Shared setup for Paws integration tests

=head1 DESCRIPTION

Provides common utilities for integration tests that run against a real
AWS sandbox account. Tests using this module are gated behind the
C<AWS_INTEGRATION_TESTS> environment variable.

=head1 FUNCTIONS

=over

=item skip_unless_integration()

Call at the top of each test file to skip the entire file unless
C<AWS_INTEGRATION_TESTS> is set.

=item paws_client(%opts)

Returns a C<Paws> instance configured for the test region with the
Log interceptor registered. Extra options are passed through to the
Paws config.

=item unique_name($prefix)

Returns a unique resource name with the given prefix (default
C<paws-integ>), a millisecond timestamp, and a random suffix.

=item test_region()

Returns C<AWS_DEFAULT_REGION> or C<us-east-1>.

=item log_interceptor()

Returns a singleton C<Paws::Net::Interceptor::Log> instance that
writes to STDERR.

=back

=cut
