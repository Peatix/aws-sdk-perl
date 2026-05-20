# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::Net::GlacierCaller;
  use Moo::Role;
  use JSON::MaybeXS;

  with 'Paws::Net::RestJsonCaller';

  around prepare_request_for_call => sub {
    my ($orig, $self, @rest) = @_;

    my $request = $self->$orig(@rest);
    #TODO: assign '-' to AccountId if there is no AccountId. This may need to be done in

    $request->header('x-amz-glacier-version', $self->version);
    
    return $request;
  };
1;
