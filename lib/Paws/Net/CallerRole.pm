# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::Net::CallerRole;
  use Moo::Role;

  requires 'do_call';
1;
