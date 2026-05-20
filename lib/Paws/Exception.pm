# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.
package Paws::Exception::CredentialProcess;
  use Moo;
  use Types::Standard qw(Int Str);
  extends 'Throwable::Error';

package Paws::Exception;
  use Moo;
  use Types::Standard qw(Int Str);
  extends 'Throwable::Error';

  has code => (
    is => 'ro',
    isa => Str,
    required => 1,
  );

  has request_id => (
    is => 'ro',
    isa => Str,
    required => 1,
  );

  has http_status => (
    is => 'ro',
    isa => Int,
  );
1;
