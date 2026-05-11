package Paws::Net::S3APIRequest;
  use Moose;
  extends 'Paws::Net::APIRequest';

  use URI;
  use HTTP::Date 'time2isoz';

  has _uri_obj => (is => 'ro', isa => 'URI', lazy => 1, default => sub {
    return URI->new(shift->url);
  });

  #Code taken from https://metacpan.org/source/LEEJO/AWS-S3-0.10/lib/AWS/S3/Signer.pm
  has 'bucket_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
    lazy     => 1,
    default  => sub {
      my $s = shift;

      my $endpoint = $s->_uri_obj->host;
      if ( my ( $name ) = $endpoint =~ m{^(.+?)\.\Q$endpoint\E} ) {
        return $name;
      } else {
        return '';
      }    # end if()
    }
  );

  has 'date' => (
    is       => 'ro',
    isa      => 'Str',
    default  => sub {
      my $s = shift;
      my $http_date = time2isoz( time );
      $http_date =~ s/ /T/g;
      $http_date =~ s/[\:\-]//g;
      return $http_date;
    }
  );

  # content_length is read by Paws::Net::RestXmlCaller when an S3
  # operation declares _stream_param (e.g. PutObject->Body). The
  # parent Paws::Net::APIRequest does not expose content_length, so
  # the streaming path relies on this accessor.
  has 'content_length' => (
    is       => 'ro',
    isa      => 'Int|Undef',
    lazy     => 1,
    default  => sub { length( shift->content || q[] ) }
  );
1;
