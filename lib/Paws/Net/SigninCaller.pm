# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::Net::SigninCaller;
  use Moose::Role;
  use JSON::MaybeXS;
  use URI::Template;

  use Paws::Net::JsonResponse;

  has response_to_object => (
    is => 'ro',
    default => sub {
      Paws::Net::JsonResponse->new;
    }
  );

  sub _call_uri {
    my ($self, $call, $qparams) = @_;
    # PR11: was $call->meta->name->_api_uri; _api_uri is a class
    # method, so calling it on the instance gets the same answer
    # without the MOP round-trip.
    my $uri_template = $call->_api_uri;
    my $t = URI::Template->new( $uri_template );

    my $uri = $t->process({});
    $uri->query_form(%$qparams);
    return $uri->as_string;
  }

  sub prepare_request_for_call {
    my ($self, $call) = @_;

    my $request = Paws::Net::APIRequest->new();

    $request->method('GET');
   
    my $qparams;
    if ($call->_api_call eq 'getSigninToken') {
      #Until we have a way to declare objects that get json-encoded to API calls, we
      #will have to "hand-encode" the Session Parameter
      $qparams = { Action => $call->_api_call,
                   SessionType => 'json',
                   (defined $call->SessionDuration)?(SessionDuration => $call->SessionDuration):(),
                   Session => encode_json({
                     sessionId    => $call->SessionId,
                     sessionKey   => $call->SessionKey,
                     sessionToken => $call->SessionToken
                   }),
      };
    } elsif ($call->_api_call eq 'login') {
       $qparams = { Action => $call->_api_call,
                    Destination => $call->Destination,
                    Issuer => $call->Issuer,
                    SigninToken => $call->SigninToken
	          };
    } else {
      die "Don't know how to call " . $call->_api_call;
    }

    my $uri = $self->_call_uri($call, $qparams);
    $request->url($self->_api_endpoint . $uri);
    $request->uri($uri);

    $self->sign($request);

    return $request;
  }
1;
