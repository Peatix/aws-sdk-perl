package Paws::Crawler;

use Moose;
use Scalar::Util 'blessed';
use JSON::MaybeXS;
use URI::Escape qw(uri_unescape);

# Path tokens recognised in the dotted path syntax used by t/10_responses
# and t/18_mocked test YAMLs:
#
#   foo.bar          field/method access
#   {key with dots}  literal key in a hash (so dots inside the key don't split)
#   3                array index
#   ~url             URL-decode the current scalar in place
#   ~json            JSON-decode the current scalar in place
#   ~urljson         URL-decode then JSON-decode (handy for AWS *PolicyDocument
#                    fields that ship as percent-encoded JSON strings)
my %TRANSFORMS = (
  '~url' => sub {
    my ($v) = @_;
    return defined $v ? uri_unescape($v) : $v;
  },
  '~json' => sub {
    my ($v) = @_;
    return defined $v ? decode_json($v) : $v;
  },
  '~urljson' => sub {
    my ($v) = @_;
    return $v if (not defined $v);
    return decode_json(uri_unescape($v));
  },
);

sub resolve_path {
  my ($self, $path, $res) = @_;

  my ($call, $rest);
  if ($path =~ m/^\{(.*?)\}(?:\.(.*))?$/) {
    ($call, $rest) = ($1, $2);
  } elsif ($path =~ m/^([^.]+?)(?:\.(.*))?$/) {
    ($call, $rest) = ($1, $2);
  }

  if (my $transform = $TRANSFORMS{ $call }) {
    $res = $transform->($res);
  } elsif ($call =~ m/^\d+$/){
    $res = $res->[$call];
  } elsif (blessed($res)) {
    $res = $res->$call;
  } else {
    $res = $res->{$call};
  }

  if (not defined $rest) {
    return $res;
  } else {
    return $self->resolve_path($rest, $res);
  }
}

1;
