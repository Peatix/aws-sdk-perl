package WireFixture;

# Drives a service call through TestRequestCaller, captures the
# prepared HTTP request, canonicalises it, and compares against a
# golden fixture file.
#
# Pass UPDATE_FIXTURES=1 to (re)write the golden file from the
# captured request instead of comparing.
#
# Canonicalisation rules (kept in sync with docs/testing.md):
#
#   - Line 1: "<METHOD> <PATH>?<sorted-querystring>"
#   - Subsequent lines (sorted, lowercase): "<header>: <value>"
#       * Skipped: authorization, x-amz-date, x-amzn-date, user-agent,
#         host, x-amz-content-sha256 (these are signing/time/identity
#         metadata, not what the wire fixture is testing).
#       * Repeated headers are emitted in encounter order.
#   - Blank line.
#   - Body: verbatim if printable; otherwise hex dump of bytes.
#
# The signing-side concerns (what gets signed, which bytes go into the
# canonical request) are NOT what wire fixtures pin; signing tests
# live elsewhere.

use strict;
use warnings;
use v5.10;

use Test::More;
use Path::Tiny;
use JSON::MaybeXS qw();
use TestRequestCaller;

use Exporter qw(import);
our @EXPORT_OK = qw(canonicalise_request assert_wire_fixture make_service);

# Headers that change per-request (signature, timestamp, host, content
# hash) and would make every fixture comparison flap. They are filtered
# out of the canonical form.
my %SKIP_HEADERS = map { $_ => 1 } qw(
    authorization
    date
    x-amz-date
    x-amzn-date
    user-agent
    host
    x-amz-content-sha256
);

sub canonicalise_request {
    my ($req) = @_;

    my @lines;

    # Request line. URI->canonical sorts the query string; if the
    # caller put parameters in the body (POST application/x-www-form-
    # urlencoded), they're in $req->content not in the URI.
    #
    # HTTP::Request->uri can return either a URI object (full URL) or
    # a plain string ('/'). Normalise both to a path + sorted query
    # string.
    my ($path, $query);
    my $uri = $req->uri;
    if (ref $uri && $uri->can('path')) {
        $path  = $uri->path;
        $query = $uri->query;
    } else {
        my $str = "$uri";
        ($path, $query) = split /\?/, $str, 2;
    }
    $path = '/' if !defined $path || !length $path;

    my $req_line = $req->method . ' ' . $path;
    if (defined $query && length $query) {
        my @pairs = sort split /&/, $query;
        $req_line .= '?' . join('&', @pairs);
    }
    push @lines, $req_line;

    # Headers. HTTP::Headers stores them mixed-case; normalise.
    my @header_lines;
    $req->headers->scan(sub {
        my ($name, $value) = @_;
        my $lc = lc $name;
        return if $SKIP_HEADERS{$lc};
        return if !defined $value;
        push @header_lines, "$lc: $value";
    });
    push @lines, sort @header_lines;

    push @lines, '';

    my $body = $req->content;
    $body = '' if !defined $body;

    # Canonicalise the body so fixtures are stable across runs.
    # Perl hash iteration order is randomised, so JSON serialisation
    # by JsonCaller can produce keys in any order. For the
    # x-amz-json-* and application/json content types, re-decode and
    # encode with sorted keys.
    my $content_type = lc($req->headers->header('Content-Type') // '');
    if ($body ne '' && $content_type =~ m{^(?:application/x-amz-json|application/json)\b}) {
        my $decoded = eval { JSON::MaybeXS->new->decode($body) };
        if (defined $decoded) {
            $body = JSON::MaybeXS->new(canonical => 1)->encode($decoded);
        }
    }
    # Form-encoded bodies (Query / EC2 callers) - sort the &-pairs.
    elsif ($body ne '' && $content_type =~ m{^application/x-www-form-urlencoded}) {
        my @pairs = sort split /&/, $body;
        $body = join('&', @pairs);
    }

    if ($body eq '') {
        push @lines, '';
    } elsif ($body =~ /[^\x09\x0a\x0d\x20-\x7e]/) {
        my $hex = unpack('H*', $body);
        push @lines, "<binary length=" . length($body) . " hex=$hex>";
    } else {
        push @lines, $body;
    }

    return join("\n", @lines) . "\n";
}

# Convenience: build a service with TestRequestCaller, run one method
# call, return the canonical bytes.
sub capture {
    my (%args) = @_;
    my ($service_name, $method, $params, $caller) = @args{qw(service method params caller)};
    $caller //= TestRequestCaller->new;
    my $svc = $args{paws}->service($service_name,
        region => $args{region} // 'us-east-1',
        caller => $caller,
    );
    my $req = $svc->$method(%$params);
    return canonicalise_request($req);
}

# Asserts a captured request matches a fixture file (or writes it
# under UPDATE_FIXTURES).
sub assert_wire_fixture {
    my (%args) = @_;
    my ($name, $fixture, $actual) = @args{qw(name fixture actual)};

    my $path = path($fixture);
    if ($ENV{UPDATE_FIXTURES}) {
        $path->parent->mkpath;
        $path->spew_utf8($actual);
        pass("$name: fixture written ($fixture)");
        return;
    }

    if (!$path->exists) {
        fail("$name: fixture missing at $fixture (run with UPDATE_FIXTURES=1 to create)");
        diag($actual);
        return;
    }

    my $expected = $path->slurp_utf8;
    is($actual, $expected, $name)
        or diag("expected:\n$expected\nactual:\n$actual\nrun UPDATE_FIXTURES=1 to refresh.");
}

1;
