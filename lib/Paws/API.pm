# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::API::Attribute::Trait::NameInRequest;
  use Moo::Role;
  use Types::Standard qw(Str);
  has request_name => (is => 'ro', isa => Str);

package Paws::API::Attribute::Trait::ParamInHeader;
  use Moo::Role;
  use Types::Standard qw(Str);
  has header_name => (is => 'ro', isa => Str);

package Paws::API::Attribute::Trait::ParamInBody;
  use Moo::Role;

package Paws::API::Attribute::Trait::ParamInQuery;
  use Moo::Role;
  use Types::Standard qw(Str);
  has query_name => (is => 'ro', isa => Str);

package Paws::API::Attribute::Trait::ParamInURI;
  use Moo::Role;
  use Types::Standard qw(Str);
  has uri_name => (is => 'ro', isa => Str);

package Paws::API::Attribute::Trait::ParamInHeaders;
  use Moo::Role;
  use Types::Standard qw(Str);
  has header_prefix => (is => 'ro', isa => Str);

package Paws::API::Attribute::Trait::AutoInHeader;
  use Moo::Role;
  use Types::Standard qw(Str);
  has auto => (is => 'ro', isa => Str);
  has header_name => (is => 'ro', isa => Str);
1;
